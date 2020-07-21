@echo off
title Converter .h 2 .uf2
cls
set /p bin=name of .bin converted from arduino:
set /p uf2=Desired name of .uf2:
python uf2conv.py -o %uf2% %bin%
echo Done
cmd /k
