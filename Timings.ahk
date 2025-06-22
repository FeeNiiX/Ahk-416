Delays := [1, 10, 25]
Iterations := 50
Results := ""

for delay in Delays {
    StartTime := A_TickCount
    Loop Iterations
        Sleep delay
    avg := (A_TickCount - StartTime) / Iterations
    Results .= "Sleep " delay " ms: " avg " ms`n"
}

MsgBox Results