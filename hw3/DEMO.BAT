@echo off
call BUILD.BAT
echo === Hex to Decimal ===
H2D
echo === Decimal to Hex ===
D2H
echo === Sum 1..100: register / data / stack ===
SUMREG
SUMMEM
SUMSTK
echo === Sum 1..n ===
SUMIN
