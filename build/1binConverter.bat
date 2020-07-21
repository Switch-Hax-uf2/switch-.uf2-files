@echo off
title Converter payload 2 .h
cls
set /p bin=Enter path to payload-name.bin (note it will put the output file in the same location):
python binConverter.py %bin%
echo Done
cmd /k

