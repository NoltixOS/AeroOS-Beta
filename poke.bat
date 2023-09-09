@echo off
cls
start wem.vbs
insertbmp /p:"bree.bmp" /x:0 /y:0 /z:100
timeout 2 >  nuls
:de
title Batch File - Pokemon XO
cls
insertbmp /p:"dexter.bmp" /x:0 /y:0 /z:100
set /p "pokechoice=>"
if %pokechoice% == A goto rot
if %pokechoice% == F goto rt
if %pokechoice% == 5 goto raid
if %pokechoice% ==  1 start pi.vbs
if %pokechoice% == 2 start dk.vbs
if %pokechoice% == 3 start kid.vbs & goto me
goto de

:me
cls
insertbmp /p:"oki.bmp" /x:0 /y:0 /z:100
set /p "pokchoice=>"
if %pokchoice% == A goto rot
if %pokchoice% == 5 goto raid
if %pokchoice% == Q goto em
if %pokchoice% == 1 start pi.vbs
if %pokchoice% == 2 start dk.vbs
if %pokchoice% == 3 start kid.vbs

:em
cls
start meww.vbs
insertbmp /p:"Ya.bmp" /x:0 /y:0 /z:100
echo        Wild mewtwo appeared!
set /p aq=
timeout /t 3 >nul
echo        Wild Mewtwo escaped pokeball. Try again
echo.
echo        If wild mewtwo escapes 2 more times he will leave and cannot capture until-
echo        next Game Launch.
pause
cls
insertbmp /p:"Ya.bmp" /x:0 /y:0 /z:100
set /p aq=
goto de

:de
timeout /t 3 > nul
echo            Gotcha! Mewtwo was Caught 
pause>nul
goto di

:di
insertbmp /p:"dexi.bmp" /x:0 /y:0 /z:100
set /p "pokcoice=>"
if %pokcoice% == A goto rod
if %pokcoice% == 5 goto raid
if %pokcoice% == 1 start meww.vbs
if %pokcoice% == 2 start dk.vbs
if %pokcoice% == 3 start kid.vbs
goto di

:rod
echo Loading..
start doki.py
timeout /t 2 > nul
start pok0.vbs
exit

:rot
echo Loading..
start pok.py
timeout /t 2 > nul
start pok0.vbs
exit

:raid
cls
insertbmp /p:"gy.bmp" /x:0 /y:0 /z:100
set /p "a=>"
if %a% == 1 start gy

start gym.py

:rt
cls
insertbmp /p:"toilet.bmp" /x:0 /y:0 /z:100
choice /c C > nul
if %errorlevel% equ C goto cop

:cop
insertbmp /p:"tx.bmp" /x:0 /y:0 /z:100
choice /c S > nul
if %errorlevel% equ S goto americakid

:americakid
echo Skibidi dop dop yes yes
start rock.py

