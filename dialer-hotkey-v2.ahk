; ============================================================
; Дуудлагын жагсаалт — Global hotkey helper (AutoHotkey v2)
; ------------------------------------------------------------
; Use THIS file if you installed AutoHotkey v2 (the version
; the website installs by default today).
;
; Usage: from ANY app (including CallPro), press F9.
;   1. Switches to the browser tab running dialer.html
;   2. Presses Space in it (fires the next call)
;   If the tab can't be found/activated within 1 second, it
;   will NOT send Space anywhere else — shows a tray warning
;   instead, so it can never leak a keystroke into CallPro.
; ============================================================

#Requires AutoHotkey v2.0
#SingleInstance Force

F9:: {
    WinActivate("DIALER-APP")
    hwnd := WinWaitActive("DIALER-APP", , 1)
    if hwnd
        Send("{Space}")
    else
        TrayTip("Веб хуудас олдсонгүй — Space илгээгдсэнгүй.", "Дуудлагын жагсаалт")
}
