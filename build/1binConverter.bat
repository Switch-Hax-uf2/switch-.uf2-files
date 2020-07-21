@echo off
title Converter payload 2 .h
cls
set /p bin=Enter name of payload.bin:
python binConverter.py %bin%
echo Done
cmd /k

