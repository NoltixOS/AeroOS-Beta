@echo off
insertbmp /p:"gun.bmp" /x:0 /y:0 /z:100
pause>nul
python gun.py
exit