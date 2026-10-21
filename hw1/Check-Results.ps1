$ErrorActionPreference = 'Stop'
foreach ($name in @('NORMAL.TXT','OFFSET.TXT')) {
    $bytes = [IO.File]::ReadAllBytes((Join-Path $PSScriptRoot $name))
    if ([Text.Encoding]::ASCII.GetString($bytes) -cne "Hello world!`r`n") { throw "Unexpected output: $name" }
}
foreach ($name in @('ASM1.LOG','ASM2.LOG')) {
    $log = Get-Content -Raw -LiteralPath (Join-Path $PSScriptRoot $name)
    if ($log -notmatch '0 Warning Errors' -or $log -notmatch '0 Severe  Errors') { throw "Assembler failed: $name" }
}
foreach ($name in @('HELLO.EXE','HELLO2.EXE')) {
    $bytes = [IO.File]::ReadAllBytes((Join-Path $PSScriptRoot $name))
    if ($bytes[0] -ne 0x4D -or $bytes[1] -ne 0x5A) { throw "Invalid EXE header: $name" }
}
foreach ($name in @('INSPECT.LOG','INSPECT2.LOG','RAW.LOG')) {
    $log = Get-Content -Raw -LiteralPath (Join-Path $PSScriptRoot $name)
    if ($log -match '\^ Error') { throw "Debugger command error: $name" }
    if ($log -notmatch 'Hello world!' -or $log -notmatch 'Program terminated normally \(0000\)') { throw "Execution failed: $name" }
}
$raw = Get-Content -Raw -LiteralPath (Join-Path $PSScriptRoot 'RAW.LOG')
if ($raw -notmatch 'PUSH\s+CS' -or $raw -notmatch 'POP\s+DS' -or $raw -notmatch 'MOV\s+DX,0200') { throw 'Raw code mismatch' }
Write-Output 'PASS: both EXEs, raw-memory execution, assembler results, and DOS exit status.'
