@echo off
:coxx
insertbmp /p:"bo.bmp" /x:0 /y:0 /z:100
choice /c 12 > nul
if %errorlevel% == 1 goto A 
if %errorlevel% == 2 goto files 

:files
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
echo.
echo.
echo          ===================%ap%.cxo===========================
echo %input%
echo.
set /p tees=
echo.
echo %las%
pause
goto coxx


:A
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
echo.
echo.
set /p input=
if input == say %input% goto say
if input == stop cxp goto coxx

:say
echo.
echo.
echo %input%
set /p coica=
if coica == Choice -) inp goto wl
if coica == stop cxp goto coxx

:wl
echo.
echo.
echo %input%
echo %coica%
set /p las=
if las == say %input% goto sae
if las == stop cxp goto coxx

:sae
echo.
echo.
echo %input%
echo %coica%
echo %las%
echo Variables: 3
echo what name should your script be?
set /p ap=
echo saving....
echo echo %ap%.cxo %time%
timeout 2
goto coxx