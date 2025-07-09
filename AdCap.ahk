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

#HotIf WinActive("ahk_exe adventure-capitalist.exe")

S::
{
	Click 203, 604
	Sleep 200
	Click 1254, 598
	Sleep 200
	Click 621, 663
	Sleep 200
	Send "{Esc}"
}

;Managers
M::
{
	Click 150, 520
	Sleep 100
	while GetKeyState("M", "P")
	{
		Click 700, 570
		Sleep 30
	}
	Send "{Esc}"
}

;Angel Managers
N::
{
	Click 200, 530
	Sleep 100
	Click 900, 230
	Sleep 100
	while GetKeyState("N", "P")
	{
		Click 700, 570
		Sleep 30
	}
	Send "{Esc}"
}

;Angel Upgrades
J::
{
	Click 150, 430
	Sleep 200
	Click 800, 230
	Sleep 200
	Click 1110, 540, 2
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
	Click 150, 430
	Sleep 200
	Click 1110, 540, 2
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
	FClick(360, 250)
	FClick(360, 350)
	FClick(360, 500)
	FClick(360, 650)
	FClick(360, 750)

	FClick(960, 250)
	FClick(960, 350)
	FClick(960, 500)
	FClick(960, 650)
	FClick(960, 750)
	MouseMove origX, origY, 0
}

X::
{
	MouseGetPos &origX, &origY
	FClick(500, 250)
	FClick(500, 400)
	FClick(500, 500)
	FClick(500, 650)
	FClick(500, 800)

	FClick(1100, 250)
	FClick(1100, 400)
	FClick(1100, 500)
	FClick(1100, 650)
	FClick(1100, 800)
	MouseMove origX, origY, 0
}

#HotIf