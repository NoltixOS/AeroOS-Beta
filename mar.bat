@echo off
cls
echo.
echo.
echo.
echo.
echo                    ����������������������
echo                    �SUPER               �
echo                    � MARIO BROS.        �
echo                    ����������������������
PAUSE
echo.
pause>nul
cls
start son
:gam
cls
echo.
echo.
echo.
echo.
echo.
echo  ��������
echo ����������               �������
echo                         ���������
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                    ="
echo                     [?]             �
echo          �������            ������� �
echo   ������          ���������         �
echo  
echo �������������������������������������
choice /c W > nul
if %errorlevel% equ W goto up
:up
cls
echo.
echo.
echo.
echo.
echo.
echo  ��������
echo ����������               �������
echo                         ���������
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                    ="
echo                     [?]             �
echo         �������            ������� �
echo   ������          ���������         �
echo.  
echo �������������������������������������
choice /c D > nul
if %errorlevel% equ D goto up2
:up2
cls
echo.
echo.
echo.
echo.
echo.
echo  ��������
echo ����������               �������
echo                         ���������
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                    ="
echo                     [?]             �
echo         �������            ������� �
echo   ������          ���������         �
echo.  
echo �������������������������������������
choice /c W > nul
if %errorlevel% equ W goto up3
:up3
cls
echo.
echo.
echo.
echo.
echo.
echo  ��������
echo ����������               �������
echo                         ���������
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                    ="
echo                    [?]             �
echo          �������            ������� �
echo   ������          ���������         �
echo.  
echo ������������������������������������
choice /c D > nul
if %errorlevel% equ D goto up4
:up4
cls
echo.
echo.
echo.
echo.
echo.
echo  ��������
echo ����������               �������
echo                         ���������
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                    ="
echo                    [?]             �
echo          �������            ������� �
echo   ������          ���������         �
echo.  
echo �������������������������������������
choice /C D >nul
if %errorlevel% equ D goto up5

:up5
cls
echo.
echo.
echo.
echo.
echo.
echo  ��������
echo ����������               �������
echo                         ���������
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                    ="
echo                     [?]             �
echo          �������           ������� �
echo   ������          ���������         �
echo.  
echo �������������������������������������
choice /C D >nul
if %errorlevel% equ D goto up6

:up6
cls
echo.
echo.
echo.
echo.
echo.
echo  ��������
echo ����������               �������
echo                         ���������
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                    ="
echo                     [?]             �
echo          �������           ������� �
echo   ������          ���������         �
echo.  
echo �������������������������������������
choice /C W >nul
if %errorlevel% equ W goto oi
goto oi

:oi
echo Coin collected!
timeout 1 > nul
goto upX

:upX
cls
echo.
echo.
echo.
echo.
echo.
echo  ��������
echo ����������               �������
echo                         ���������
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                    ="
echo                                     �
echo          �������           ������� �
echo   ������          ���������         �
echo.  
echo �������������������������������������
choice /c D >nul
if %errorlevel% equ D goto up7

:up7
cls
echo.
echo.
echo.
echo.
echo.
echo  ��������
echo ����������               �������
echo                         ���������
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                    ="
echo                     [?]             �
echo          �������           ������� �
echo   ������          ���������         �
echo.  
echo �������������������������������������
choice /C W >nul
if %errorlevel% equ W goto up8

:up8
cls
echo.
echo.
echo.
echo.
echo.
echo  ��������
echo ����������               �������
echo                         ���������
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                    ="
echo                     [?]            �
echo          �������            ������� �
echo   ������          ���������         �
echo.  
echo �������������������������������������
choice /C D >nul
if %errorlevel% equ D goto up9
:up9
cls
echo.
echo.
echo.
echo.
echo.
echo  ��������
echo ����������               �������
echo                         ���������
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                    ="
echo                     [?]            �
echo          �������            ������� �
echo   ������          ���������         �
echo.  
echo �������������������������������������
echo WIN! press any key to play again.
pause>nul
goto gam
