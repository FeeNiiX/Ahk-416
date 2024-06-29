#Requires AutoHotkey v2.0
#MaxThreadsPerHotkey 2
SendMode "Event"
SetDefaultMouseSpeed 2

toggle := 0

^T::{
global
toggle := !toggle
if (toggle) {
	AntiAfk()
	SetTimer AntiAfk, 19*60*1000
}
else{
	SoundBeep
	SetTimer AntiAfk, 0
}}

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

;Teleporting

#HotIf WinActive("Roblox")

XButton2:: {
MouseClick "left", 163, 364
Sleep 100
MouseClick "left", 970, 225
}

XButton1:: {
MouseClick "left", 163, 364
Sleep 100
MouseClick "left", 830, 225
}

+T:: {
MouseGetPos &x, &y
MouseClick "left", 163, 364
MouseMove x, y
}

#HotIf

^K:: {
SoundBeep
ExitApp
}

^R:: {
SoundBeep
Reload
}

^P:: {
SoundBeep
Pause
}