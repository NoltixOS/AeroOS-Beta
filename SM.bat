@echo  off
color B
:i
echo            LOGIN 1/2
set /p input=Choose Username!
echo.
color 4 
cls
echo            LOGIN 2/2
set /p inpl=Choose Ip Address!
echo.
color A
echo  1)OneChat or 2)WAVES SOCIAL?
set /p ow
if ow==1 start chat & goto i
if ow==2 goto ne
:ne
cls
echo.
echo                                                  Home /user:%input/Ip address:%inpl%/. 
echo Currently. there are 4 users using Waves SOCIAL!
echo Williams Jacob has No posts on W.S. for computer. try for PH!
echo charrlote roze has 1 post on W.S. FOR PC: imma go offline because i'm using my phone more than pc.
echo Noah patron has 1 post on W.S. FOR PC: hi
echo.
set /p mind=what is in your mind?
echo.
echo.
goto minde
:minde echo                                                  Home /user:%input/Ip address:%inpl%/. "the post is public!" 
echo Currently. there are 4 users using Waves SOCIAL!
echo Williams Jacob has No posts on W.S. for computer. try for PH!
echo charrlote roze has 1 post on W.S. FOR PC: imma go offline because i'm using my phone more than pc.
echo Noah patron has 1 post on W.S. FOR PC: hi
echo %input%  has 1 post on W.S. FOR PC:%mind%
echo.
pause.
goto minde
