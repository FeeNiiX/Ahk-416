#Requires AutoHotkey v2.0
#SingleInstance Force

H::{
MouseGetPos &xp, &yp
Click 1430, 930
Sleep 15
MouseMove xp, yp
}

F10::ExitApp