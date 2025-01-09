#Requires AutoHotkey v2.0
#MaxThreadsPerHotkey 2
SendMode "Event"
SetDefaultMouseSpeed 2

global toggle := False

^T::{
global toggle := !toggle
if (toggle) {
	AntiAfk()
	SetTimer AntiAfk, 19*60*1000
}
else {
	SoundBeep
	SetTimer AntiAfk, 0
	}
}

AntiAfk() {
	SoundBeep
	SoundBeep
	SoundBeep
	previous_window := WinGetID("A")
	WinActivate "Roblox"
	Sleep 250
	SendInput "{Space Down}"
	Sleep 125
	SendInput "{Space Up}"
	Sleep 250
	WinActivate previous_window
}

#HotIf

F12::quit(750, ExitApp)
F10::quit(500, Reload)
F8::quit(250, Pause)

quit(beep, cmd) {
	SoundBeep beep
	cmd
}