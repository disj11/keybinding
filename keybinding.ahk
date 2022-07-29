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
    If ((A_TickCount - cDown) < 400)  ; Modify press time as needed (milliseconds)
        Send {Blind}{Ctrl Up}{Esc}
    Else
        Send {Blind}{Ctrl Up}
Return

Esc::CapsLock
