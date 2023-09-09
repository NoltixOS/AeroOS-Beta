title Phonebook
@echo off
::cool
color f8
:A
cls
echo.
echo Please enter the name of the person.
set /p "input=>"
echo.
echo Please enter the contact number of the person.
set /p "input1=>"
if EXIST "SavedNumbers.txt" goto Saveit
if NOT EXIST "SavedNumbers.txt" goto Madeit


:Saveit
color f8
echo.
echo %input% >>"SavedNumbers.txt"
echo %input1% >>"SavedNumbers.txt"
echo --------------------- >>"SavedNumbers.txt"
echo Your Number is saved.
pause>nul
start contbook.cmd
exit

:Madeit
color f8
echo Contacts >"SavedNumbers.txt"
echo ------------------------------>>"SavedNumbers.txt"
goto Saveit