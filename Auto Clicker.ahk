#Requires AutoHotkey v2.0
#SingleInstance Force												; so you quickly run it without warning of multiple scripts with the same name

global cps := 15													; The cps it starts with
on  := False														; IT STARTS OFF, you have to press Ctrl + Q to start it

^q:: {																; The toggle
 Global on := !on
 SoundBeep 1000 + 500 * on
}

^!XButton2:: {														; Ctrl + Alt + XButton2 opens a little window to set you the global variable "cps" so
	IB := InputBox(,, "w100 h75")
	global cps := IB.Value
}

#HotIf on															; This is like what the script runs when the on variable "on" is "True"

F12::ExitApp														; Panic button because of this HotIf on, the other panic button is out of the HotIf on idk what would happen

; The lil script not even chat gpt could explain to me

LButton:: {
 start := A_TickCount, clicks := 0
 While GetKeyState(ThisHotkey, 'P') {
  Click
  Sleep start - A_TickCount + 1000 * ++clicks / cps
;  ToolTip 'CPS = ' Round(1000 * clicks / (A_TickCount - start))
 }
; ToolTip
}
#HotIf																; Everything below this line is what the script run when the variable "on" is False

F12::quincy(3000, ExitApp)											; Goofy ahh function i made it to understand how a function works very interesting wow such coding

quincy(beep, cmd) {
	SoundBeep beep
	cmd
}