#Requires AutoHotkey v2.0
#SingleInstance Force

MsgBox "
(
Keybinds:

M - Managers
N - Angel Managers
K - Upgrades
J - Angel Upgrades
S - Sacrifice
C - Click
X - Buy all
)"

FClick(x, y) {
	Click x, y
	Sleep 30
}

Slow := 100
Fast := 30

#HotIf WinActive("ahk_exe adventure-capitalist.exe")

F_PressCount := 0

F::
{
	Click 1206, 36
}

G::
{
	Loop 4
	{
		Click 1206, 36
		Sleep 30
	}
}

S::
{
	Click 111, 484
	Sleep Slow
	Click 1021, 478
	Sleep Slow
	Click 500, 533
	Sleep Slow
	Send "{Esc}"
}

;Managers
M::
{
	Click 117, 416
	Sleep Slow
	while GetKeyState("M", "P")
	{
		Click 543, 464
		Sleep 30
	}
	Send "{Esc}"
}

;Angel Managers
N::
{
	Click 117, 416
	Sleep Slow
	Click 725, 186
	Sleep Fast
	while GetKeyState("N", "P")
	{
		Click 543, 464
		Sleep 30
	}
	Send "{Esc}"
}

;Angel Upgrades
J::
{
	Click 113, 349
	Sleep Slow
	Click 641, 183
	Sleep Fast
	Click 894, 427
	; while GetKeyState("J", "P")
	; {
	; 	Click 666, 690
	; 	Sleep 15
	; }
	Send "{Esc}"
}

;Upgrades
K::
{
	Click 113, 349
	Sleep Slow
	Click 894, 427
	; while GetKeyState("N", "P")
	; {
	; 	Click 666, 690
	; 	Sleep 15
	; }
	Send "{Esc}"
}

C::
{
	MouseGetPos &origX, &origY
	FClick(300, 180)
	FClick(300, 280)
	FClick(300, 380)
	FClick(300, 480)
	FClick(300, 580)

	FClick(760, 180)
	FClick(760, 280)
	FClick(760, 380)
	FClick(760, 480)
	FClick(760, 580)
	MouseMove origX, origY, 0
}

X::
{
	MouseGetPos &origX, &origY
	FClick(380, 200)
	FClick(380, 310)
	FClick(380, 420)
	FClick(380, 530)
	FClick(380, 640)

	FClick(840, 210)
	FClick(840, 320)
	FClick(840, 420)
	FClick(840, 530)
	FClick(840, 640)
	MouseMove origX, origY, 0
}

#HotIf