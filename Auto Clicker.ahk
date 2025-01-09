#Requires AutoHotkey v2.0
#SingleInstance Force

; --------------- Variables ---------------

global cps := 15
global autoclicker  := False
global afkclicker := False
global space := False

^q:: {
 global on := !on
 SoundBeep 400 + 200 * on
}

^e:: {
	IB := InputBox("How fast should it click in CPS", "CPS", "w100 h100")
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

; Thanks to a guy named mikeyww for this code at autohotkey forums "he might be a moderator or something"
; This somehow makes the autoclicker actually click at the speed you set it to

#HotIf

; --------------- Binds ---------------

^r:: {
SoundBeep
	global afkclicker := !afkclicker
	if (afkclicker)
		SetTimer AutoClickero, 1000 / cps
	else {
		SetTimer AutoClickero, 0
	}
}

^t:: {
SoundBeep
	global space := !space
	if (space)
		SetTimer AutoJump, 1000 / cps
	else {
		SetTimer AutoJump, 0
	}
}

; --------------- Functions ---------------

AutoClickero() {
	Click
}

AutoJump() {
	Send "{Space}"
}

; --------------- Quit ---------------

F12::quit(750, ExitApp)
F10::quit(500, Reload)

quit(beep, cmd) {
	SoundBeep beep
	cmd
}

; I wish I knew how to make it so anyone could easily make his own function so it was a all-porpuse macro or something but I am not perfect ;(