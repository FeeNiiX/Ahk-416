#Requires AutoHotkey v2.0

on := True

!q:: {
    Global on := !on
    SoundBeep 500 + 250 * on
}

#HotIf on

LShift:: {
    While GetKeyState(ThisHotkey, 'P') {
    {
        SendInput "{WheelUp}"
		Sleep 50
    }
}}

LControl:: {
    While GetKeyState(ThisHotkey, 'P') {
    {
        SendInput "{WheelDown}"
		Sleep 50
    }
}}

Up::WheelUp
Down::WheelDown

#HotIf

^+R::Reload