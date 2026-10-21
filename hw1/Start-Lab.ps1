param([switch]$Verify)
& (Join-Path (Split-Path -Parent $PSScriptRoot) 'Run-Lab.ps1') -Homework 1 -Verify:$Verify
