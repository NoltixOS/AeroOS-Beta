MODE 1000
@echo off
title chatroom
                                                                                  
echo                                                                              ����������       ONE CHAT II BY WAVES  SOCIAL   ���������������
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
echo �������������������������������������������������������������= SVCHAT =��������������������������������������������������������������������������������������������
ECHO.
echo chat room
echo %username% joined! >> chat
goto chatroom
pause

:chatroom
cls
echo Chat:
echo.
echo �������������������������������������������������������������= SVCHAT =��������������������������������������������������������������������������������������������
ECHO.
type chat
set /p input=Message:
echo %username%: %input% >> chat
goto chatroom 
pause





