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
6::F6
7::F7
8::F8
9::F9
0::F10

#HotIf