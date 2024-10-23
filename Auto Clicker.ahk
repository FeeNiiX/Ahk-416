#Requires AutoHotkey v2.0
#SingleInstance Force

; --------------- Variables ---------------

global cps := 15
global on  := False
global clicker := False
global space := False
global customa := False

^q:: {
 global on := !on
 SoundBeep 400 + 200 * on
}

^e:: {
	IB := InputBox(,, "w100 h75")
	global cps := IB.Value
}

#HotIf on

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
SoundBeep
	global space := !space
	if (space)
		SetTimer AutoJump, 40
	else {
		SetTimer AutoJump, 0
	}
}

^t:: {
SoundBeep
	global clicker := !clicker
	if (clicker)
		SetTimer AutoClicker, 66
	else {
		SetTimer AutoClicker, 0
	}
}

^y:: {
SoundBeep
	global customa := !customa
	if (customa) {
		Send "{Right down}"
		SetTimer Custom, 50
	} else {
		Send "{Right up}"
		SetTimer Custom, 0
	}
}

; --------------- Functions ---------------

AutoClicker() {
;	Send "{R}"
	Click
}

AutoJump() {
	Send "{Space}"
}

Custom() {
	Click
}

; --------------- Quitter ---------------

F12::quincy(750, ExitApp)
F10::quincy(500, Reload)

quincy(beep, cmd) {
	SoundBeep beep
	cmd
}