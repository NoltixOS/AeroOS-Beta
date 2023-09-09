@echo off
mode 100
color 97
set cd1=%cd%
set x=0
set y=0
:preview
dir /b >temp.txt
for /f "delims=" %%a in (temp.txt) do call :display %%a
pause >nul
:display
call %cd1%\display.bat %1 %x% %y%
set /a x=%x%+12
