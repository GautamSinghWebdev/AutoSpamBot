set shell = createobject ("wscript.shell")
outputType = inputbox("Type In The Message You Wanna Spam")
outputNumber = inputbox("Number Of Times You Wanna Spam The Text")
waitTime = inputbox("Time Between message spams")
waitBefore = inputbox("How Long To Wait Then Start Spamming")
msgbox("The Spam Bot Has Recieved The Inputs are Processing...")
if not isnumeric(outputNumber) then
msgbox("sorry the input recieved in the no. of time you wanna spam was not a number")
wscript.quit
end if
if not isnumeric(waitTime) then
msgbox("sorry the wait time between messages was not a number")
wscript.quit
end if
if not isnumeric(waitBefore) then
msgbox("the per message timer was not a number")
wacript.quit
end if
msgbox("please open the textbox you wanna type in, you have 5 seconds")
WScript.sleep 5000
WScript.sleep (waitBefore)
for i=1 to outputNumber
shell.sendkeys(outputType & "{enter}")
WScript.sleep (waitTime)
next
msgbox("spamming done! ending script.")
wscript.quit
