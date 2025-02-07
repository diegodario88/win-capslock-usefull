;
; Autohotkey script: CapsLock actually usefull!
;
; Summary:
; CapsLock             : Esc
; CapsLock + h/j/k/l   : arrows left/down/up/right, including most combos:
;                        - CapsLock + Shift
;                        - CapsLock + Shift + Alt
;                        - CapsLock + Shift + Ctrl
;                        - CapsLock + Shift + Ctrl + Alt
;                        - CapsLock + Ctrl
;                        - CapsLock + Ctrl + Win
;                        - CapsLock + Alt
;                        - CapsLock + Win
; CaspLock + n/m       : Home/End
; CaspLock + y/u       : PageUp/PageDown
; CaspLock + s/d/f/g   : Delete word-before/char-before/char-after/word-after
; CapsLock + i/p       : Insert/PrintScreen
; CapsLock + 1/../0/=  : F1/../F10/F12  (F11 TO-DO), supports:
;                        - CapsLock + Ctrl + "="        : zoom in
;                        - CapsLock + Ctrl + Shitf + "=": zoom out
; CapsLock + w/e/r     : volume down/up/off




; Devel info:
; https://www.autohotkey.com/docs/KeyList.htm
;
; Win   = #
; Shift = +
; Ctrl  = ^
; Alt   = !
;
; & may be used between any two keys to combine them into a custom hotkey

; CapsLock Initializer
;--------------------------------------
SetCapsLockState, AlwaysOff

; CapsLock = Esc
;--------------------------------------
CapsLock::Send, {ESC}

; CapsLock Switcher
;--------------------------------------
CapsLock & t::
GetKeyState, CapsLockState, CapsLock, T     
if CapsLockState = D
    SetCapsLockState, AlwaysOff
else
    SetCapsLockState, AlwaysOn
KeyWait, ``
return

; CapsLock Direction Navigator
; CapsLock + h |  Left
; CapsLock + j |  Down
; CapsLock + k |  Up
; CapsLock + l |  Right
; Ctrl, Alt Compatible
;--------------------------------------

; CapsLock + h |  Left
CapsLock & h::
    ; CapsLock + Shift
    if GetKeyState("Shift") = 1 {
        ; CapsLock + Shift + Ctrl
        if GetKeyState("Ctrl") = 1 {
            ; CapsLock + Shift + Ctrl + Alt
            if GetKeyState("Alt") = 1 {
                Send, +^!{Left}
                return
            }
            Send, +^{Left}
            return
        }
        ; CapsLock + Shift + Alt
        else if getKeyState("Alt") = 1 {
            Send, +!{Left}
            return
        }
        Send, +{Left}
        return
    }
    ; CapsLock + Ctrl
    if GetKeyState("Ctrl") = 1 {
        ; CapsLock + Ctrl + Alt
        if GetKeyState("Alt") = 1 {
            Send, ^!{Left}
            return
        }
        if GetKeyState("LWin") = 1 {
            Send, ^#{Left}
            return
        }
        Send, ^{Left}
        return
    }
    ; CapsLock + Alt
    if GetKeyState("Alt") = 1 {
        Send, !{Left}
        return
    }
    ; CapsLock + Win
    if GetKeyState("LWin") = 1 {
        Send, #{Left}
        return
    }
    Send, {Left}
    return


; CapsLock + j |  Down
;--------------------------------------
CapsLock & j::
    ; CapsLock + Shift
    if GetKeyState("Shift") = 1 {
        ; CapsLock + Shift + Ctrl
        if GetKeyState("Ctrl") = 1 {
            ; CapsLock + Shift + Ctrl + Alt
            if GetKeyState("Alt") = 1 {
                Send, +^!{Down}
                return
            }
            Send, +^{Down}
            return
        }
        ; CapsLock + Shift + Alt
        else if getKeyState("Alt") = 1 {
            Send, +!{Down}
            return
        }
        Send, +{Down}
        return
    }
    ; CapsLock + Ctrl
    if GetKeyState("Ctrl") = 1 {
        ; CapsLock + Ctrl + Alt
        if GetKeyState("Alt") = 1 {
            Send, ^!{Down}
            return
        }
        if GetKeyState("LWin") = 1 {
            Send, ^#{Down}
            return
        }
        Send, ^{Down}
        return
    }
    ; CapsLock + Alt
    if GetKeyState("Alt") = 1 {
        Send, !{Down}
        return
    }
    ; CapsLock + Win
    if GetKeyState("LWin") = 1 {
        Send, #{Down}
        return
    }
    Send, {Down}
    return


; CapsLock + k |  Up
;--------------------------------------
CapsLock & k::
    ; CapsLock + Shift
    if GetKeyState("Shift") = 1 {
        ; CapsLock + Shift + Ctrl
        if GetKeyState("Ctrl") = 1 {
            ; CapsLock + Shift + Ctrl + Alt
            if GetKeyState("Alt") = 1 {
                Send, +^!{Up}
                return
            }
            Send, +^{Up}
            return
        }
        ; CapsLock + Shift + Alt
        else if getKeyState("Alt") = 1 {
            Send, +!{Up}
            return
        }
        Send, +{Up}
        return
    }
    ; CapsLock + Ctrl
    if GetKeyState("Ctrl") = 1 {
        ; CapsLock + Ctrl + Alt
        if GetKeyState("Alt") = 1 {
            Send, ^!{Up}
            return
        }
        if GetKeyState("LWin") = 1 {
            Send, ^#{Up}
            return
        }
        Send, ^{Up}
        return
    }
    ; CapsLock + Alt
    if GetKeyState("Alt") = 1 {
        Send, !{Up}
        return
    }
    ; CapsLock + Win
    if GetKeyState("LWin") = 1 {
        Send, #{Up}
        return
    }
    Send, {Up}
    return


; CapsLock + l |  Right
;--------------------------------------
CapsLock & l::
    ; CapsLock + Shift
    if GetKeyState("Shift") = 1 {
        ; CapsLock + Shift + Ctrl
        if GetKeyState("Ctrl") = 1 {
            ; CapsLock + Shift + Ctrl + Alt
            if GetKeyState("Alt") = 1 {
                Send, +^!{Right}
                return
            }
            Send, +^{Right}
            return
        }
        ; CapsLock + Shift + Alt
        else if getKeyState("Alt") = 1 {
            Send, +!{Right}
            return
        }
        Send, +{Right}
        return
    }
    ; CapsLock + Ctrl
    if GetKeyState("Ctrl") = 1 {
        ; CapsLock + Ctrl + Alt
        if GetKeyState("Alt") = 1 {
            Send, ^!{Right}
            return
        }
        ; CapsLock + Ctrl + Win
        if GetKeyState("LWin") = 1 {
            Send, ^#{Right}
            return
        }
        Send, ^{Right}
        return
    }
    ; CapsLock + Alt
    if GetKeyState("Alt") = 1 {
        Send, !{Right}
        return
    }
    ; CapsLock + Win
    ; if .. = 0 is neccessary because of 'lock windows'
    if GetKeyState("Ctrl") = 0 {
        if GetKeyState("LWin") = 1 {
            Send, #{Right}
            return
        }
    }
    Send, {Right}
    return


; CapsLock + Backspace = Del
;--------------------------------------
CapsLock & Backspace::
    if GetKeyState("Shift") = 1 {
        Send, +{Del}
        return
    }
    Send, {Del}
    return


; Alternative modifiers
; s => shift
; d => Ctrl
; f => Alt
;--------------------------------------
CapsLock & s::Shift
CapsLock & d::Ctrl
CapsLock & f::Alt
CapsLock & g::LWin


; More delete options
; CapsLock + ,        = delete word before
;          + /        = delete char before
;          + Ctrl + / = delete char after
;          + .        = delete word after
;--------------------------------------
CapsLock & ,:: Send ^{Backspace}
CapsLock & -:: Send {Del}
CapsLock & .:: Send ^{Del}


; CapsLock + p = PrintScreen
;--------------------------------------
CapsLock & p::
    if GetKeyState("Ctrl") = 1 {
        Send, ^{PrintScreen}
    }
    if GetKeyState("Alt") {
        Send, !{PrintScreen}
    }
    Send, {PrintScreen}
    return


; CapsLock + i = Insert
;--------------------------------------
CapsLock & i::
    ; CapsLock + Shift
    if GetKeyState("Shift") = 1 {
        Send, +{Insert}
        return
    }
    ; CapsLock + Ctrl
    if GetKeyState("Ctrl") = 1 {
        Send, ^{Insert}
        return
    }
    Send, {Insert}
    return


; CapsLock + y = PageUp
;--------------------------------------
CapsLock & y::
    ; CapsLock + Ctrl
    if GetKeyState("Ctrl") = 1 {
        Send, ^{PgUp}
        return
    }
    Send, {PgUp}
    return


; CapsLock + u = PageDown
;--------------------------------------
CapsLock & u::
    ; CapsLock + Ctrl
    if GetKeyState("Ctrl") = 1 {
        Send, ^{PgDn}
        return
    }
    Send, {PgDn}
    return


; CapsLock + n = Home
;--------------------------------------
CapsLock & n::
    ; CapsLock + Ctrl
    if GetKeyState("Ctrl") = 1 {
        ; CapsLock + Ctrl + Shift
        if GetKeyState("Shift"){
            Send, ^+{Home}
            return
        }
        Send, ^{Home}
        return
    }
    ; CapsLock + Shift
    if GetKeyState("Shift"){
        Send, +{Home}
        return
    }
    ; CapsLock + Win
    if GetKeyState("LWin") = 1 {
        Send, ^#{Left}
        return
    }
    Send, {Home}
    return


; CapsLock + m = End
;--------------------------------------
CapsLock & m::
    ; CapsLock + Ctrl
    if GetKeyState("Ctrl") = 1 {
        ; CapsLock + Ctrl + Shift
        if GetKeyState("Shift"){
            Send, ^+{End}
            return
        }
        Send, ^{End}
        return
    }
    ; CapsLock + Shift
    if GetKeyState("Shift"){
        Send, +{End}
        return
    }
    ; CapsLock + Win
    if GetKeyState("LWin") = 1 {
        Send, ^#{Right}
        return
    }
    Send, {End}
    return


; CapsLock + 1 to {{ = }} = F1 to F12
;--------------------------------------
CapsLock & 1:: Send, {F1}
CapsLock & 2:: Send, {F2}
CapsLock & 3:: Send, {F3}
CapsLock & 4::
    if GetKeyState("Shift") = 1 {
        Send +{F4}
        return
    }
    if GetKeyState("Ctrl") = 1 {
        Send ^{F4}
        return
    }
    if GetKeyState("Alt") = 1 {
        Send !{F4}
        return
    }
    Send, {F4}
CapsLock & 5:: Send, {F5}
CapsLock & 6:: Send, {F6}
CapsLock & 7:: Send, {F7}
CapsLock & 8:: Send, {F8}
CapsLock & 9:: Send, {F9}
CapsLock & 0:: Send, {F10}
; F11 TO-DO
CapsLock & =::
    if GetKeyState("Ctrl") = 1 {
        if GetKeyState("Shift") = 1 {
            Send ^{NumpadSub}
            return
        }
        Send ^{NumpadAdd}
        return
    }
    Send, {F12}


; CapsLock Media Controller
;--------------------------------------
CapsLock & r:: Send, {Volume_Mute}
CapsLock & w:: Send, {Volume_Down}
CapsLock & e:: Send, {Volume_Up}

; CapsLock General Controller
;--------------------------------------
CapsLock & Space:: Send, ^{Space}
CapsLock & Enter:: Send, {F13}
