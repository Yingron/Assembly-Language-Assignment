param([switch]$Verify)
& (Join-Path (Split-Path -Parent $PSScriptRoot) 'Run-Lab.ps1') -Homework 3 -Verify:$Verify
