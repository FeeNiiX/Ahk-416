#Requires AutoHotkey v2.0
#SingleInstance Force

global cps := 15
global on  := False

^q:: {
 Global on := !on
 SoundBeep 1000 + 500 * on
}

!XButton2:: {
	IB := InputBox(,, "w100 h75")
	global cps := IB.Value
}

#HotIf on

LButton:: {
	start := A_TickCount, clicks := 0
	While GetKeyState(ThisHotkey, 'P') {
		Click
		Sleep start - A_TickCount + 1000 * ++clicks / cps
	}
}

F12::quincy(3000, ExitApp)

quincy(beep, cmd) {
	SoundBeep beep
	cmd
}

#HotIf