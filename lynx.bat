@ECHO OFF
color f8
batbox /h 1
setlocal enabledelayedexpansion
# class MyWebLol
:class MyWebLol
color f8
insertbmp /p:"sr.bmp" /x:0 /y:0 /z:100
set /p url=
if %url% == www.youtube.com goto Heck
if %url% == www.youtube.org goto Heck
if %url% == www.you.be.com goto Heck
if %url% == www.microsoft.com goto unki
goto unk

:unki
cls
insertbmp /p:"ms.bmp" /x:0 /y:0 /z:100
set /p x=
if %x% == B goto class MyWebLol
if %x% == b goto class MyWebLol
goto unki

:Heck
cls
insertbmp /p:"yt.bmp" /x:0 /y:0 /z:100
set /p y=
if %y% == 1 start WOOPS.vbs
if %y% == 2 start mum.vbs
if %y% == B goto class MyWebLol
if %y% == b goto class MyWebLol
goto Heck

:unk
cls
color 1b
echo.
echo.
insertbmp /p:"aw.bmp" /x:0 /y:0 /z:100
pause>nul
goto class MyWebLol