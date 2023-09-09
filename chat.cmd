MODE 1000
@echo off
title chatroom
                                                                                  
echo                                                                              лллллллллл       ONE CHAT II BY WAVES  SOCIAL   ллллллллллллллл
echo.
ECHO                                                                                                     LOGIN
ECHO.                                             
set /p username=enter your username:
PAUSE>NUL
goto join

:join
cls
color A
echo.
echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл= SVCHAT =лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
ECHO.
echo chat room
echo %username% joined! >> chat
goto chatroom
pause

:chatroom
cls
echo Chat:
echo.
echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл= SVCHAT =лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
ECHO.
type chat
set /p input=Message:
echo %username%: %input% >> chat
goto chatroom 
pause





