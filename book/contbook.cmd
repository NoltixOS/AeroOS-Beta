@echo off
::uh LOOK cOOL
color f8
:All
if EXIST "SavedNumbers.txt" goto Show
if NOT EXIST "SavedNumbers.txt" goto Show2

:Show
cls
color f8
echo.
echo.
findstr /v "divyansh" SavedNumbers.txt
echo.
echo.
echo If you want to add more contacts then press N.
echo To clear phonebook numbers press L.
set /p "ask=>"
if %ask%==N start Saver
if %ask%==n start Saver
if %ask%==L del "SavedNumbers.txt"
if %ask%==l del "SavedNumbers.txt"
exit
pause>nul
goto Show

:Show2
cls
color f8
echo.
echo No Number! Please save any number 
echo If you want to save any number press N.
set /p "input=>"
if %input%==N start d:book/Saver
if %input%==n start d:book/Saver