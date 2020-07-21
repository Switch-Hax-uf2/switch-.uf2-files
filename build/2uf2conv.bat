@echo off
title Converter .h 2 .uf2
cls
set /p name=Desired name of the .uf2:
python uf2conv.py -o %name%.uf2 build.ino.trinket_m0.bin
echo Done
cmd /k
