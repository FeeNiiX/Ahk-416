<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/HK416N.png/1920px-HK416N.png"/>

# All scripts are AHK v2

^ = Ctrl

! = Alt

"+" = Shift

[More of this](https://www.autohotkey.com/docs/v2/Hotkeys.htm)

[Keycode names](https://www.autohotkey.com/docs/v2/KeyList.htm)

# Bloons.ahk

It a script that snaps, clicks and then come back.

It is named bloons because i use it to quickly assing monkey knowledge at bloons. [see more](https://github.com/FeeNiiX/LeeKnow/tree/main)

# Rebind.ahk

Its how you rebind your keyboard's keys in autohotkey, the simplest thing ever.

I use it because of my short keyboard that i bought

# Resizer.ahk

Damn, the best ahk script i ever made (not all by myself obviously)

It should be a whole separeted repository of how beautiful it is

It can resize windows precisely with keybinds.

One pixel at a time or you can use the presets, the code is there so you can change the keybinds and add your on presets and shit

I already commented too much so imma leave the most difficult script to not be commented

# Auto Clicker.ahk

I got it from someone by searching autohotkey auto clicker script in google.

But i made so Ctrl + Alt + Mouse2(the next/redo) you can change your cps in real time without coding and re-running the script

This script has something special because it actually clicks in the cps you set it too exactly

As if you only do a simpler

```
LButton:: {
 While GetKeyState(ThisHotkey, 'P') {
  Click
  Sleep 50
 }
 
```

It should click at 20 cps, but if you would test for example at [this site that doesnt lag with fast clicks](https://cookie.riimu.net/speed/)

It might not do 20 cps exactly idk, i think it has to do with the Windows Timer Resolution or smth

When you start changing the sleep values many stays the same cps and then all of a sudden it actually changes the speed to another different sleep time

Basically this

```
100ms until 67ms = 10 cps
66ms until 50ms = 15 cps
49ms until 25 = 20 cps
25ms until 16 = 30+ cps
15ms (max) = 64 cps
```

The problem is that 100ms is different from 99 or 90 and much much more from 67

[What i've said but in antique egyptian](https://www.autohotkey.com/boards/viewtopic.php?t=87119)