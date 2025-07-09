#Requires AutoHotkey v2.0

MsgBox "
(
    Press Ctrl + S to toggle the scroll script
    Press Left Shift to scroll up
    Press Left Control to scroll down
    Press Up to scroll up
    Press Down to scroll down
)"

global on := True

^s:: {
    global on := !on
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