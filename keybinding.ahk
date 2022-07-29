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
    Send {Blind}{LCtrl Down}
    cDown := A_TickCount
Return

*CapsLock up::
    Send {LCtrl Up}
    If ((A_TickCount - cDown) < 200)
        Send {Blind}{Esc}
Return

#If GetKeyState("CapsLock", "P")
    *h::Send {Blind}{LCtrl Up}{Left}{LCtrl Down}
    *j::Send {Blind}{LCtrl Up}{Down}{LCtrl Down}
    *k::Send {Blind}{LCtrl Up}{Up}{LCtrl Down}
    *l::Send {Blind}{LCtrl Up}{Right}{LCtrl Down}

Esc::CapsLock
