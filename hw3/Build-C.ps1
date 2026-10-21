$ErrorActionPreference = 'Stop'
$gcc = 'C:\cygwin64\bin\gcc.exe'
$objdump = 'C:\cygwin64\bin\objdump.exe'
Push-Location $PSScriptRoot
try {
    & $gcc -x c -O0 -g -Wall -Wextra -std=c11 -o SUM_C.exe SUM.C
    if ($LASTEXITCODE -ne 0) { throw 'C compilation failed.' }
    & $objdump -d -S -Mintel SUM_C.exe | Set-Content -Encoding utf8 C_FULL_DISASM.txt
    if ($LASTEXITCODE -ne 0) { throw 'Disassembly failed.' }
    python annotate_c.py
    if ($LASTEXITCODE -ne 0) { throw 'C checks failed.' }
} finally { Pop-Location }
