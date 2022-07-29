~j::
    KeyWait, k, D T0.03
    If (ErrorLevel = 0)
        Send, {Esc}
Return

~k::
    KeyWait, j, D T0.03
    If (ErrorLevel = 0)
        Send, {Esc}
Return

*CapsLock::
    Send {Blind}{Ctrl Down}
    cDown := A_TickCount
Return

*CapsLock up::
    Send {Blind}{Ctrl Up}
    If ((A_TickCount - cDown) < 300)
        Send {Blind}{Esc}
    cDown =
Return

#If cDown
    h::Left
    j::Up
    k::Down
    l::Right

Esc::CapsLock
