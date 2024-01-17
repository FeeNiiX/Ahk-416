#Requires AutoHotkey v2.0

; Centers the window

!PgDn:: {
    WinGetPos ,, &Width, &Height, "A"
    WinMove (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2),,, "A"
}

; Set your custom size

!PgUp:: {
	IB1 := InputBox(,, "w100 h75")
	IB2 := InputBox(,, "w100 h75")
	
	if IB1.Result = "Cancel"
		return
	else
		if IB2.Result = "Cancel"
			return
		else
			WinMove ,, IB1.Value, IB2.Value, "A"
}

; Most left

!Left::WinMove -7,,,, "A"

; Most up

!Up::WinMove ,0,,, "A"

; Most down

!Down:: {
WinGetPos ,, &Width, &Height, "A"
WinMove ,(A_ScreenHeight)-(Height)-40,,, "A"
}

; Most right

!Right:: {
WinGetPos ,, &Width, &Height, "A"
WinMove (A_ScreenWidth)-(Width)+7,,,, "A"
}

; Resizes pixel by pixel

^!Left:: ResizeActiveWindowBy(-1, 0)
^!Right:: ResizeActiveWindowBy(+1, 0)
^!Up:: ResizeActiveWindowBy(0, -1)
^!Down:: ResizeActiveWindowBy(0, +1)

+!Left:: ResizeActiveWindowBy(-10, 0)
+!Right:: ResizeActiveWindowBy(+10, 0)
+!Up:: ResizeActiveWindowBy(0, -10)
+!Down:: ResizeActiveWindowBy(0, +10)

ResizeActiveWindowBy(SW, SH) {
    WinGetPos ,, &W, &H, "A"
    WinMove ,, W + SW, H + SH, "A"
}

; Moves pixel by pixel

<^>!Left::MoveActiveWindowBy(-1, 0)
<^>!Right::MoveActiveWindowBy(+1, 0)
<^>!Up::MoveActiveWindowBy(0, -1)
<^>!Down::MoveActiveWindowBy(0, +1)

<^>!+Left::MoveActiveWindowBy(-10, 0)
<^>!+Right::MoveActiveWindowBy(+10, 0)
<^>!+Up::MoveActiveWindowBy(0, -10)
<^>!+Down::MoveActiveWindowBy(0, +10)

MoveActiveWindowBy(SX, SY) {
    WinGetPos &X, &Y,,, "A"
    WinMove X + SX, Y + SY,,, "A"
}