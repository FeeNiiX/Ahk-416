#Requires AutoHotkey v2.0

global on := false

XButton2:: {
    global on := !on
    soundbeep 500 + 250 * on
}

#HotIf on

1::F1
2::F2
3::F3
4::F4
5::F5

#HotIf
