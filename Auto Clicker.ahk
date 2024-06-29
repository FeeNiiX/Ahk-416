#Requires AutoHotkey v2.0
#SingleInstance Force

global cps := 20
global tps := 30
global on  := False
global space := False
global licker := False

^q:: {
 Global on := !on
 SoundBeep 500 + 200 * on
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

Space:: {
	Start := A_TickCount, Clicks := 0
	While GetKeyState(ThisHotkey, 'P') {
		SendInput "{Space}"
		Sleep Start - A_TickCount + 1000 * ++Clicks / tps
	}
}

#HotIf

^t:: {
SoundBeep
	global space := !space
	if (space) {
		Send "{Space down}"
	}
	else {
		Send "{Space up}"
	}
}

^r:: {
SoundBeep
	global licker := !licker
	if (licker)
		SetTimer AutoClicker, 66
	else {
		SetTimer AutoClicker, 0
	}
}

AutoClicker() {
Click
}

F12::quincy(750, ExitApp)
F10::quincy(500, Reload)

quincy(beep, cmd) {
	SoundBeep beep
	cmd
}