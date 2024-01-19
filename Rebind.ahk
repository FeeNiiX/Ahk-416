#Requires AutoHotkey v2.0
on  := True					; When you execute the script everything will be rebinded, False if you want to toggle it manually

Insert:: {					; This toggles the script with a little soundbeep
 Global on := !on
 SoundBeep 1000 + 500 * on
}

#HotIf on					; This is like what the script runs when the on variable "on" is "True"
^Up::Numpad8				; These i use for airplanes in GTA V and for Trainers (offline)
^Down::Numpad2
^Right::Numpad6
^Left::Numpad4
^Backspace::Numpad0
^Enter::Numpad5
3::F3						; I can use the FN key to make the 3 Key do a F3 but this rebind saves me an entire hand for the mouse
+3::+F3


#HotIf						; Everything below this line is what the script run when the variable "on" is False