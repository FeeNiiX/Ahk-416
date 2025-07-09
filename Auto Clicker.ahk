#Requires AutoHotkey v2.0
#SingleInstance Force

; --------------- Variables ---------------

global cps := 15
global autoclicker  := False
global afkclicker := False
global keyclicker := False

MsgBox "
(
	Ctrl + Q to toggle the trigger clicker
	Ctrl + E to set the CPS
	Ctrl + R to toggle the auto clicker
	Ctrl + T to toggle the key clicker
	F10 to reload the script
	F12 to exit the script
	)"

^q:: {
 global autoclicker := !autoclicker
 SoundBeep 400 + 200 * autoclicker
}

^e:: {
	IB := InputBox("How fast should it click in CPS",, "w100 h100")
	global cps := IB.Value
}

#HotIf autoclicker

LButton:: {
	Start := A_TickCount, Clicks := 0
	While GetKeyState(ThisHotkey, 'P') {
		Click
		Sleep Start - A_TickCount + 1000 * ++Clicks / cps
	}
}

#HotIf

; --------------- Binds ---------------

^r:: {
	global afkclicker := !afkclicker
	SoundBeep 400 + 200 * afkclicker
	if (afkclicker)
		SetTimer AutoClickero, 1000 / cps
	else {
		SetTimer AutoClickero, 0
	}
}

^t:: {
	global keyclicker := !keyclicker
	SoundBeep 400 + 200 * keyclicker
	if (keyclicker)
		SetTimer Key, 1000 / cps
	else {
		SetTimer Key, 0
	}
}

; --------------- Functions ---------------

AutoClickero() {
	Click
}

;TODO: make it so you can set the key to click

Key() {
	Send "F"
}

; --------------- Quit ---------------

F12::quit(750, ExitApp)
F10::quit(500, Reload)

quit(beep, cmd) {
	SoundBeep beep
	cmd
}

; I wish I knew how to make it so anyone could easily make his own function so it was a all-porpuse macro or something but I am not perfect ;(