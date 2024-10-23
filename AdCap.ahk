#Requires AutoHotkey v2.0
#SingleInstance Force
SendMode "Event"
SetMouseDelay 1

global on := false

^a:: {
SoundBeep
global on := !on
}

#HotIf on

J::{
Click 460, 210, 2
Click 460, 320, 2
Click 460, 420, 2
Click 460, 530, 2
Click 460, 640, 2

Click 940, 210, 2
Click 940, 320, 2
Click 940, 420, 2
Click 940, 530, 2
Click 940, 640, 2
}

K::{
Click 300, 210
Click 300, 310
Click 300, 410
Click 300, 520
Click 300, 630

Click 760, 200
Click 760, 310
Click 760, 410
Click 760, 520
Click 760, 630
}

#HotIf

F8:: {
SoundBeep
ExitApp
}
F9:: {
SoundBeep
Reload
}