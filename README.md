<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/HK416N.png/1920px-HK416N.png"/>

# All scripts are AHK v2

^ = Ctrl

! = Alt

∔ = Shift

[More](https://www.autohotkey.com/docs/v2/Hotkeys.htm)

[Keycode names](https://www.autohotkey.com/docs/v2/KeyList.htm)

## MouseMove.ahk

Moves the mouse 1 pixel at a time

## Scroll.ahk

Scroll Faster

## AntiAfk.ahk

Ctrl + T to toggle

For Roblox

## Bloons.ahk

It a script that snaps, clicks and then come back.

It is named bloons because I use it to quickly assing monkey knowledge at bloons. [see more](https://github.com/FeeNiiX/LeeKnow)

## Rebind.ahk

Its how you rebind your keyboard's keys in autohotkey, the simplest thing ever.

I use it because of my short keyboard that I bought

## Resizer.ahk

Damn, the best ahk script I've ever made (not all by myself obviously)

It should be a whole separeted repository of how beautiful it is

It can resize windows precisely with keybinds, one pixel at a time or you can use the presets

## Auto Clicker.ahk

Thanks to [mikeyww](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=59977&sid=1d05da44c8259a0532314d7eb7d9d279)

This script actually clicks in the cps you set it too exactly

As if you only do a simpler

```AHK
LButton:: {
 While GetKeyState(ThisHotkey, 'P') {
  Click
  Sleep 50
 }
```

It should click at 20 cps but it doesn't

When you start changing the sleep values many stays the same cps and then all of a sudden it actually changes the speed to another different sleep time

Basically this

```
100ms until 67ms = 10 cps
66ms until 50ms = 15 cps
49ms until 25 = 20 cps
25ms until 16 = 30+ cps
15ms = 64 cps
1ms = it really tries to do 1000cps
```

The problem is that 100ms is different from 99 or 90 and much much more from 67

[This explanation](https://www.autohotkey.com/boards/viewtopic.php?t=87119)