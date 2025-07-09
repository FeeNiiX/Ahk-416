#Requires AutoHotkey v2.0
#MaxThreadsPerHotkey 2
SendMode "Event"

MsgBox "Press Ctrl + T to toggle the anti-afk script"

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

F12::ExitApp