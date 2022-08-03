j::
KeyWait, k, D T0.03
If (ErrorLevel = 0)
    Send {Esc}
Else
    Send j
Return

k::
KeyWait, j, D T0.03
If (ErrorLevel = 0)
    Send {Esc}
Else
    Send k
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
#If

Esc::CapsLock

#IfWinActive ahk_class CabinetWClass
#t::
    ActivePath := GetExplorerPath()
    Run, wt -d %ActivePath%
Return
#IfWinNotActive ahk_class CabinetWClass
#t::
    Run, wt
Return 



GetExplorerPath(hwnd=0) {
    if(hwnd==0) {
        explorerHwnd := WinActive("ahk_class CabinetWClass")
        if(explorerHwnd==0)
            explorerHwnd := WinExist("ahk_class CabinetWClass")
    }
    else
        explorerHwnd := WinExist("ahk_class CabinetWClass ahk_id " . hwnd)
        if (explorerHwnd) {
            for window in ComObjCreate("Shell.Application").Windows {
                try {
                    if (window && window.hwnd && window.hwnd==explorerHwnd)
                        return window.Document.Folder.Self.Path
                }
            }
        }
    return false
}
