param(
    [ValidateSet(1,2,3)][int]$Homework = 1,
    [switch]$Verify
)
$ErrorActionPreference = 'Stop'
$lab = Join-Path $PSScriptRoot "hw$Homework"
$dosbox = @(
    (Join-Path ${env:ProgramFiles(x86)} 'DOSBox-0.74\DOSBox.exe'),
    (Join-Path $env:ProgramFiles 'DOSBox-0.74\DOSBox.exe')
) | Where-Object { Test-Path -LiteralPath $_ } | Select-Object -First 1
if (!$dosbox) { throw 'Install DOSBox 0.74 first.' }
foreach ($tool in 'MASM.EXE','LINK.EXE','DEBUG.COM') {
    if (!(Test-Path -LiteralPath (Join-Path $PSScriptRoot "tools\$tool"))) {
        throw "Missing tools\$tool; see tools/README.md."
    }
}
$names = switch ($Homework) {
    1 { @('HELLO','HELLO2') }
    2 { @('LOOP13','JUMP13') }
    3 { @('H2D','D2H','SUMREG','SUMMEM','SUMSTK','SUMIN') }
}
$oldDriver = $env:SDL_VIDEODRIVER
try {
    if (!$Verify) {
        Remove-Item Env:SDL_VIDEODRIVER -ErrorAction SilentlyContinue
        Start-Process -FilePath $dosbox -WorkingDirectory $PSScriptRoot -ArgumentList "-conf hw$Homework\dosbox.conf -c DEMO.BAT -noconsole"
        return
    }
    # Remove generated files only inside the selected homework directory.
    foreach ($name in $names) {
        Remove-Item -LiteralPath (Join-Path $lab "$name.EXE") -ErrorAction SilentlyContinue
    }
    Get-ChildItem -LiteralPath $lab -Filter '*.LOG' | Remove-Item
    $marker = Join-Path $lab 'VERIFY.OK'
    Remove-Item -LiteralPath $marker -ErrorAction SilentlyContinue
    if ($Homework -eq 1) {
        foreach ($file in 'NORMAL.TXT','OFFSET.TXT') {
            Remove-Item -LiteralPath (Join-Path $lab $file) -ErrorAction SilentlyContinue
        }
    }
    if ($Homework -eq 2) {
        foreach ($file in 'LOOP13.TXT','JUMP13.TXT') {
            Remove-Item -LiteralPath (Join-Path $lab $file) -ErrorAction SilentlyContinue
        }
    }
    if ($Homework -eq 3) {
        foreach ($pattern in 'O???.TXT','S???.TXT') {
            Get-ChildItem -LiteralPath (Join-Path $lab 'TESTS') -Filter $pattern | Remove-Item
        }
    }
    $env:SDL_VIDEODRIVER = 'dummy'
    $proc = Start-Process -FilePath $dosbox -WorkingDirectory $PSScriptRoot -ArgumentList "-conf hw$Homework\dosbox.conf -c VERIFY.BAT -c exit -noconsole" -WindowStyle Hidden -PassThru
    if (!$proc.WaitForExit(55000)) {
        $proc.Kill()
        throw 'DOSBox timed out; inspect homework logs.'
    }
    if (!(Test-Path -LiteralPath $marker)) { throw 'DOS batch did not complete.' }
    foreach ($name in $names) {
        $bytes = [IO.File]::ReadAllBytes((Join-Path $lab "$name.EXE"))
        if ($bytes.Length -lt 2 -or $bytes[0] -ne 77 -or $bytes[1] -ne 90) { throw "Invalid DOS EXE: $name" }
    }
    foreach ($file in (Get-ChildItem -LiteralPath $lab -Filter '*.LOG')) {
        $log = Get-Content -Raw -LiteralPath $file.FullName
        if (!$log) { throw "Empty log: $($file.Name)" }
        if ($log -match 'Macro Assembler' -and ($log -notmatch '0 Warning Errors' -or $log -notmatch '0 Severe  Errors')) { throw "Assembly failed: $($file.Name)" }
        if ($log -match '(?i)fatal|error L\d|unresolved|\^ Error') { throw "Tool error: $($file.Name)" }
    }
    switch ($Homework) {
        1 { & (Join-Path $lab 'Check-Results.ps1') }
        2 {
            $expected = "a b c d e f g h i j k l m`r`nn o p q r s t u v w x y z`r`n"
            foreach ($file in 'LOOP13.TXT','JUMP13.TXT') {
                if ([IO.File]::ReadAllText((Join-Path $lab $file)) -cne $expected) { throw "Wrong output: $file" }
            }
            foreach ($file in 'LOOPDIS.LOG','JUMPDIS.LOG') {
                if ((Get-Content -Raw -LiteralPath (Join-Path $lab $file)) -notmatch 'Program terminated normally \(0000\)') { throw "DEBUG run failed: $file" }
            }
            'PASS: HW2; two DOS programs; exact a-z output; 13 letters per row; exit 0.'
        }
        3 {
            $cases = Get-Content -Raw -LiteralPath (Join-Path $lab 'cases.json') | ConvertFrom-Json
            for ($i=0; $i -lt $cases.Count; $i++) {
                $actual = [IO.File]::ReadAllText((Join-Path $lab ('TESTS\O{0:000}.TXT' -f $i))).Replace("`r",'').TrimEnd("`n")
                $expected = [string]$cases[$i][2]
                if (($actual -split "`n")[-1] -cne $expected) { throw "Case $i output failed." }
                if ($null -eq $cases[$i][1] -and $actual -cne $expected) { throw "Case $i fixed sum failed." }
                $wanted = if ($expected -eq 'Invalid input.') { 'ERROR' } else { 'OK' }
                $status = (Get-Content -Raw -LiteralPath (Join-Path $lab ('TESTS\S{0:000}.TXT' -f $i))).Trim()
                if ($status -cne $wanted) { throw "Case $i exit status failed." }
            }
            "PASS: $($cases.Count) DOS cases; 6 programs assembled and linked."
        }
    }
} finally {
    if ($null -eq $oldDriver) { Remove-Item Env:SDL_VIDEODRIVER -ErrorAction SilentlyContinue }
    else { $env:SDL_VIDEODRIVER = $oldDriver }
}
