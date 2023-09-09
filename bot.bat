@echo off
mode 110
DEL qwer.vbs
color 1b
cls
echo set wshshell = wscript.CreateObject("wScript.Shell") >qwer.vbs
echo Dim speaks, speech, speakks, ape, hi >>qwer.vbs
echo hi="Welcome to Xalb AI" >>qwer.vbs
echo speaks="What do you want me to do?" >>qwer.vbs
echo speakks="Type 1 so that I can answer your questions" >>qwer.vbs
echo ape="Type 2 so that I can say whatever you said" >>qwer.vbs
echo Set speech=CreateObject("sapi.spvoice") >>qwer.vbs
echo speech.Speak hi >>qwer.vbs
echo speech.Speak speaks >>qwer.vbs
echo speech.Speak speakks >>qwer.vbs
echo speech.Speak ape >>qwer.vbs
echo set wshshell = wscript.CreateObject("wScript.Shell") >>qwer.vbs
echo Collecting data..
ping localhost -n 3 >nul
start qwer.vbs
pause
goto ask
:ask
echo Type 1 or 2:
set /p ans=
if %ans%==1 echo set wshshell = wscript.CreateObject("wScript.Shell") >qwer.vbs
if %ans%==1 echo set speech = CreateObject("sapi.spvoice")>>qwer.vbs
if %ans%==1 echo speaks="You typed 1 " >>qwer.vbs
if %ans%==1 echo speech.Speak speaks >>qwer.vbs
if %ans%==2 goto speak
goto telll

:telll
start qwer.vbs
goto tell

:speak
cls
echo set wshshell = wscript.CreateObject("wScript.Shell") >qwer.vbs
echo set speech = CreateObject("sapi.spvoice")>>qwer.vbs
echo speaks="You typed 2" >>qwer.vbs
echo speech.Speak speaks >>qwer.vbs
start qwer.vbs
ping localhost -n 2 >nul
goto papaj

:papaj
cls
echo Type your sentence here please...
echo Type nm to exit...
set /p que=
if "%que%"=="nm" goto bye
echo set wshshell = wscript.CreateObject("wScript.Shell") >qwer.vbs
echo set speech = CreateObject("sapi.spvoice")>>qwer.vbs
echo speech.Speak ("%que%") >>qwer.vbs
start qwer.vbs
goto papaj

:tell
cls
echo                How can i help?
echo                    Don't include any punctuations, type in small letters
echo                                                              Type bye to exit
set /p ans=
echo Answering...
if "%ans%"=="bye" goto bye
if "%ans%"=="BYE" goto bye
if "%ans%"=="Bye" goto bye
echo set wshshell = wscript.CreateObject("wScript.Shell") >qwer.vbs
echo set speech = CreateObject("sapi.spvoice")>>qwer.vbs
echo Dim ans >>qwer.vbs
echo ans="%ans%" >>qwer.vbs
ping localhost -n 3 >nul

(
echo If ans="shut up"  Or ans="close ai" Or ans="close window" Or ans="shut down the window" Or ans="close yourself" Or ans="shut down yourself" Then
echo helllo="Bye"
echo speech.Speak helllo
echo End If

echo If ans="who are you" Or ans="what is your name" Or ans="what is eaith" Or ans="who are you, what is your name" Then
echo helllo="I am Xalb"
echo speech.Speak helllo
echo End If

echo If ans="what can you do" Then
echo helllo="I can speak whatever you tell me, I can answer your question and I can tell the time, sir."
echo speech.Speak helllo
echo End If

echo If ans="what is this os" Then
echo helllo="EX SOFT BATCH FILE OPERATING SYSTEM"
echo speech.Speak helllo
echo End If

echo If ans="hi" Then
echo helllo="Hi there."
echo speech.Speak helllo
echo End If

echo If ans="hello" Then
echo helllo="Hello there."
echo speech.Speak helllo
echo End If

echo If ans="what is pokeball" Then
echo helllo="a ball used to catch pokemon."
echo speech.Speak helllo
echo End If

echo If ans="what is your favorite food" Then
echo helllo="Well. i dont have one but i like data from files.."
echo speech.Speak helllo
echo End If

echo If ans="what is programming" Then
echo helllo="According to google programming is making files by typing codes"
echo speech.Speak helllo
echo End If

echo If ans="what is the most popular language" Then
echo helllo="English is without a doubt!"
echo speech.Speak helllo
echo End If

echo If ans="bye" Then
echo helllo="Bye, sir"
echo speech.Speak helllo
echo End If

echo If ans="close eaith" Then
echo helllo="Closing eaith"
echo speech.Speak helllo
echo End If

echo If ans="who is the best ai" Or ans="who is the best of all AIs" Or ans="who is the best artificial intelligence"Then
echo helllo="According to google, CHAT GPT is the best AI"
echo speech.Speak helllo
echo End If

echo If ans="who do you like google assistant or cortana" Or ans="whom do you like cortana or google assistant" Or ans="whom do you like google assistant or cortana" Or ans="whom do you like cortana or google assistant" Then
echo helllo="I like siri.. but i like myself more!"
echo speech.Speak helllo
echo End If

echo If ans="" Then
echo helllo="Bye, sir"
echo speech.Speak helllo
echo End If

echo If ans=" " Or ans="," Or ans="." Or ans="/" Or ans=":" Or ans=";" Then
echo helllo="I told you, dont use fullstops or question marks. You can use commas"
echo speech.Speak helllo
echo End If

echo If ans="what is the capital of romania" Then
echo helllo="Bucharest"
echo speech.Speak helllo
echo End If
) >>qwer.vbs
start qwer.vbs

ping localhost -n 5 >nul
echo.
echo                  REMINDER
echo If you got no answer this means there is no valid command.
echo.
pause
goto tell

echo Const ForReading = 1 >rplc.vbs
echo Const ForWriting = 2 >>rplc.vbs
echo. >>rplc.vbs
echo strFileName = Wscript.Arguments(0) >>rplc.vbs
echo strOldText = Wscript.Arguments(1) >>rplc.vbs
echo strNewText = Wscript.Arguments(2) >>rplc.vbs
echo. >>rplc.vbs
echo Set objFSO = CreateObject("Scripting.FileSystemObject") >>rplc.vbs
echo Set objFile = objFSO.OpenTextFile(strFileName, ForReading) >>rplc.vbs
echo. >>rplc.vbs
echo strText = objFile.ReadAll >>rplc.vbs
echo objFile.Close >>rplc.vbs
echo strNewText = Replace(strText, strOldText, strNewText) >>rplc.vbs
echo. >>rplc.vbs
echo Set objFile = objFSO.OpenTextFile(strFileName, ForWriting) >>rplc.vbs
echo objFile.Write strNewText >>rplc.vbs
echo objFile.Close >>rplc.vbs
echo. >>rplc.vbs

ping localhost -n 5 >nul

echo %ans% >good.txt
ping localhost -n 3 >nul
cscript rplc.vbs "good.txt" " " "+" 

ping localhost -n 3 >nul
(
set /p fjfj= 
)<good.txt

start https://www.bing.com/search?q=%fjfj%




pause
goto tell

:bye
DEL qwer.vbs
DEL rplc.vbs
DEL good.txt
cls
echo Bye sir.
set /p ddygdkuyfd=Type anything to exit...
exit
