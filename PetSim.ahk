#Requires AutoHotkey v2.0
#MaxThreadsPerHotkey 2

toggle := 0

^T::{
global
toggle := !toggle
if (toggle){
	AntiAfk()
	SoundBeep
	SetTimer AntiAfk, 19*60*1000
}
else{
	SoundBeep
	SetTimer AntiAfk, 0
}}

AntiAfk()
{
	SoundBeep
	SoundBeep
	SoundBeep
	BlockInput 1
	previous_window := WinGetID("A")
	WinActivate "Roblox"
	Sleep 250
	Send "{Space Down}"
	Sleep 125
	Send "{Space Up}"
	Sleep 250
	;WinActivate previous_window
	BlockInput 0
}

^K::{
SoundBeep
ExitApp
}

^R::{
SoundBeep
Reload
}

^P::{
SoundBeep
Pause
}