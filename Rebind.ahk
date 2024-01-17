#Requires AutoHotkey v2.0
on  := True

Insert:: {
 Global on := !on
 SoundBeep 1000 + 500 * on
}

#HotIf on
^Up::Numpad8
^Down::Numpad2
^Right::Numpad6
^Left::Numpad4
^Backspace::Numpad0
^Enter::Numpad5
3::F3
+3::+F3


#HotIf