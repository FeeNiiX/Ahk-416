#Requires AutoHotkey v2.0

global on := true

MsgBox "
(
	Press Ctrl + M to toggle the mouse movement
	Press Left, Right, Up, Down to move the mouse
)"

^m:: {
	global on := !on
	SoundBeep 400 + 200 * on
   }

#HotIf on

Left::MouseMove -1, 0,, "R"
Right::MouseMove 1, 0,, "R"
Up::MouseMove 0, -1,, "R"
Down::MouseMove 0, 1,,"R"

#HotIf