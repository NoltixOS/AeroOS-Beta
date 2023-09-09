set wshshell = wscript.CreateObject("wScript.Shell") 
set speech = CreateObject("sapi.spvoice")
Dim ans 
ans="what os is this" 
If ans="shut up"  Or ans="close ai" Or ans="close window" Or ans="shut down the window" Or ans="close yourself" Or ans="shut down yourself" Then
helllo="Bye"
speech.Speak helllo
End If
If ans="who are you" Or ans="what is your name" Or ans="what is eaith" Or ans="who are you, what is your name" Then
helllo="I am Xalb"
speech.Speak helllo
End If
If ans="what can you do" Then
helllo="I can speak whatever you tell me, I can answer your question and I can tell the time, sir."
speech.Speak helllo
End If
If ans="what is this os" Then
helllo="EX SOFT BATCH FILE OPERATING SYSTEM"
speech.Speak helllo
End If
If ans="hi" Then
helllo="Hi there."
speech.Speak helllo
End If
If ans="hello" Then
helllo="Hello there."
speech.Speak helllo
End If
If ans="what is pokeball" Then
helllo="a ball used to catch pokemon."
speech.Speak helllo
End If
If ans="what is your favorite food" Then
helllo="Well. i dont have one but i like data from files.."
speech.Speak helllo
End If
If ans="what is programming" Then
helllo="According to google programming is making files by typing codes"
speech.Speak helllo
End If
If ans="what is the most popular language" Then
helllo="English is without a doubt!"
speech.Speak helllo
End If
If ans="bye" Then
helllo="Bye, sir"
speech.Speak helllo
End If
If ans="close eaith" Then
helllo="Closing eaith"
speech.Speak helllo
End If
If ans="who is the best ai" Or ans="who is the best of all AIs" Or ans="who is the best artificial intelligence"Then
helllo="According to google, CHAT GPT is the best AI"
speech.Speak helllo
End If
If ans="who do you like google assistant or cortana" Or ans="whom do you like cortana or google assistant" Or ans="whom do you like google assistant or cortana" Or ans="whom do you like cortana or google assistant" Then
helllo="I like siri.. but i like myself more!"
speech.Speak helllo
End If
If ans="" Then
helllo="Bye, sir"
speech.Speak helllo
End If
If ans=" " Or ans="," Or ans="." Or ans="/" Or ans=":" Or ans=";" Then
helllo="I told you, dont use fullstops or question marks. You can use commas"
speech.Speak helllo
End If
If ans="what is the capital of romania" Then
helllo="Bucharest"
speech.Speak helllo
End If
