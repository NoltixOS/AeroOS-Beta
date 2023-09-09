@echo off
set stat0=0
:emptylevel
for /l %%g in (0,1,319) do set b%%g= 
set loc_y=2
set loc_x=12
set ptr_l=52
set b%ptr_l%=X
set face=3
:render
cls
echo.
echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл= BTC =лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
echo.
echo  ЭЭЭЭЭЭ Welcome to XSOFT'S MINECRAFT!  ЭЭЭЭЭЭ
echo ЩЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЛ
echo К%b0%%b1%%b2%%b3%%b4%%b5%%b6%%b7%%b8%%b9%%b10%%b11%%b12%%b13%%b14%%b15%%b16%%b17%%b18%%b19%К
echo К%b20%%b21%%b22%%b23%%b24%%b25%%b26%%b27%%b28%%b29%%b30%%b31%%b32%%b33%%b34%%b35%%b36%%b37%%b38%%b39%К     
echo К%b40%%b41%%b42%%b43%%b44%%b45%%b46%%b47%%b48%%b49%%b50%%b51%%b52%%b53%%b54%%b55%%b56%%b57%%b58%%b59%К      
echo К%b60%%b61%%b62%%b63%%b64%%b65%%b66%%b67%%b68%%b69%%b70%%b71%%b72%%b73%%b74%%b75%%b76%%b77%%b78%%b79%К   
echo К%b80%%b81%%b82%%b83%%b84%%b85%%b86%%b87%%b88%%b89%%b90%%b91%%b92%%b93%%b94%%b95%%b96%%b97%%b98%%b99%К
echo К%b100%%b101%%b102%%b103%%b104%%b105%%b106%%b107%%b108%%b109%%b110%%b111%%b112%%b113%%b114%%b115%%b116%%b117%%b118%%b119%К
echo К%b120%%b121%%b122%%b123%%b124%%b125%%b126%%b127%%b128%%b129%%b130%%b131%%b132%%b133%%b134%%b135%%b136%%b137%%b138%%b139%К
echo К%b140%%b141%%b142%%b143%%b144%%b145%%b146%%b147%%b148%%b149%%b150%%b151%%b152%%b153%%b154%%b155%%b156%%b157%%b158%%b159%К
echo К%b160%%b161%%b162%%b163%%b164%%b165%%b166%%b167%%b168%%b169%%b170%%b171%%b172%%b173%%b174%%b175%%b176%%b177%%b178%%b179%К
echo К%b180%%b181%%b182%%b183%%b184%%b185%%b186%%b187%%b188%%b189%%b190%%b191%%b192%%b193%%b194%%b195%%b196%%b197%%b198%%b199%К
echo К%b200%%b201%%b202%%b203%%b204%%b205%%b206%%b207%%b208%%b209%%b210%%b211%%b212%%b213%%b214%%b215%%b216%%b217%%b218%%b219%К
echo К%b220%%b221%%b222%%b223%%b224%%b225%%b226%%b227%%b228%%b229%%b230%%b231%%b232%%b233%%b234%%b235%%b236%%b237%%b238%%b239%К
echo К%b240%%b241%%b242%%b243%%b244%%b245%%b246%%b247%%b248%%b249%%b250%%b251%%b252%%b253%%b254%%b255%%b256%%b257%%b258%%b259%К
echo К%b260%%b261%%b262%%b263%%b264%%b265%%b266%%b267%%b268%%b269%%b270%%b271%%b272%%b273%%b274%%b275%%b276%%b277%%b278%%b279%К
echo К%b280%%b281%%b282%%b283%%b284%%b285%%b286%%b287%%b288%%b289%%b290%%b291%%b292%%b293%%b294%%b295%%b296%%b297%%b298%%b299%К
echo К%b300%%b301%%b302%%b303%%b304%%b305%%b306%%b307%%b308%%b309%%b310%%b311%%b312%%b313%%b314%%b315%%b316%%b317%%b318%%b319%К
echo ШЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭЭМ
:controls
if %stat0%==0 set stat0text=False
if %stat0%==1 set stat0text=True
if %face%==0 set facetext=South
if %face%==1 set facetext=West
if %face%==2 set facetext=North
if %face%==3 set facetext=East
echo X=%loc_x%  Y=%loc_y%  Facing: %facetext%
echo a - Left   d - Right    j - Break Block
echo w - Up     s - Down     k - Place Block
echo n - Restart level       l - Turn before moving - %stat0text%
echo e - Quit game
choice /c adwsjknle >nul
:lwjgl0
if %errorlevel% GTR 4 goto lwjgl1
set facelast==%face%
if %errorlevel%==1 set face=1
if %errorlevel%==2 set face=3
if %errorlevel%==3 set face=2
if %errorlevel%==4 set face=0
if %stat0%==1 if %facelast% NEQ %face% goto render
set action=move
goto move
:lwjgl1
if %errorlevel%==5 set action=blockbreak
if %errorlevel%==6 set action=blockplace
if %errorlevel%==7 goto emptylevel
if %errorlevel%==8 goto togglemove
if %errorlevel%==9 (
	if exist bc_temp0.bat del bc_temp0.bat
	exit)
goto interact
:togglemove
if %stat0%==0 (
	set stat0=1
	goto render)
	if %stat0%==1 (
	set stat0=0
	goto render)
:interact
set ptr_last=%ptr_l%
set loc_ym=%loc_y%
set loc_xm=%loc_x%
if %face%==0 set /a loc_ym+=1
if %face%==1 set /a loc_xm-=1
if %face%==2 set /a loc_ym-=1
if %face%==3 set /a loc_xm+=1
if %loc_ym% GTR 15 goto render
if %loc_ym% LSS 0 goto render
if %loc_xm% GTR 19 goto render
if %loc_xm% LSS 0 goto render
set /a ptr_m=%loc_ym%*20+%loc_xm%
if %action%==blockbreak set b%ptr_m%= 
if %action%==blockplace set b%ptr_m%=#
goto render
set loc_ym=%loc_y%
set loc_xm=%loc_x%
set /a ptr_l=%loc_y%*20+%loc_x%
if %face%==0 set /a loc_y-=1
if %face%==1 set /a loc_x+=1
if %face%==2 set /a loc_y+=1
if %face%==3 set /a loc_x-=1
pause
echo off
goto render
:move
set ptr_last=%ptr_l%
set loc_ym=%loc_y%
set loc_xm=%loc_x%
if %face%==0 set /a loc_ym+=1
if %face%==1 set /a loc_xm-=1
if %face%==2 set /a loc_ym-=1
if %face%==3 set /a loc_xm+=1
set /a ptr_m=%loc_ym%*20+%loc_xm%
set loc_chk=%%b%ptr_m%%%
echo set loc_chk1=%loc_chk%>bc_temp0.bat
echo exit /b>>bc_temp0.bat
call bc_temp0.bat
set loc_chk0=%loc_chk1%
if "%loc_chk0%"=="#" goto render
if %loc_ym% GTR 15 goto render
if %loc_ym% LSS 0 goto render
if %loc_xm% GTR 19 goto render
if %loc_xm% LSS 0 goto render
:legalmove
set loc_y=%loc_ym%
set loc_x=%loc_xm%
set /a ptr_l=%loc_y%*20+%loc_x%
set b%ptr_l%=X
set b%ptr_last%= 
goto render