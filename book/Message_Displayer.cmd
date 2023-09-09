


@echo off
title Incoming Messages
:home
mode 1000
set /p input=Message:
::if input is nothing, go back
if "%input%"=="" goto read_messages
::If input is exit, exit the program.
if not exist ".\chat.txt" goto create
type .\chat.txt
echo.
set /p input=Message:
::if input is nothing, go back
if "%input%"=="" goto read_messages
::If input is exit, exit the program.
if not exist ".\chat.txt" goto create



:create
echo chat >.\chat.txt
echo ================================= >>.\chat.txt
goto home