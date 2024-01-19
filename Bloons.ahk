#Requires AutoHotkey v2.0
#SingleInstance Force	; so you quickly run it without warning of multiple scripts with the same name

H::{
MouseGetPos &xp, &yp	; get your mouse coordinates when you press H
Click 1430, 930 		; the coordinates
Sleep 50 				; a little bit of delay because it was too fast
MouseMove xp, yp		; come back to where your mouse was
}

F10::ExitApp			; panic button, maybe isnt needed (never trust clicking scripts) you can close the script in the tray.