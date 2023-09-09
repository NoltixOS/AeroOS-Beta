@echo off
cls
pause
rem Top-left corner
set x=5
set y=5
rem Bottom-right corner
set x1=16
set y1=16
for /l %%x in (%x%,1,%x1%) do for /l %%y in (%y%,1,%y1%) do batbox /g %%x %%y /c 0x97 /d "²" /c 0xf