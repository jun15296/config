;◆Base config
;CapsLock > Ctrl
; キーがおしっぱなしとなって正常に動作しないため、レジストリで設定する
;Capslock::Ctrl
;sc03a::Ctrl

;◆AHK config
;Reload
vk1Dsc07 & F5::Reload


;◆IME config 
#Include IME.ahk
;@see [https://github.com/karakaram/alt-ime-ahk/blob/master/IME.ahk]
;変換 > 日本語入力
vk1Csc079::IME_SET(1)
;無変換 > 英数
vk1Dsc07::IME_SET(0)


;◆無変換function
vk1Dsc07 & 2::Send,{F2}


;◆vim config
Space::Send,{Blind}{Space}
+Space::Send,{Blind}+{Space}
Space & vk1Csc079::Send,{Blind}

; H J K L
Space & h::
  If GetKeyState("vk1Csc079","P")
    Send,{Blind}^+{Tab}
  Else
    Send,{Blind}{Left}
  Return

Space & j::
  If GetKeyState("vk1Csc079","P")
    Send,{Blind}{PgDn}
  Else
    Send,{Blind}{Down}
  Return

Space & k::
  If GetKeyState("vk1Csc079","P")
    Send,{Blind}{PgUp}
  Else
    Send,{Blind}{Up}
  Return

Space & l::
  If GetKeyState("vk1Csc079","P")
    Send,{Blind}^{Tab}
  Else
    Send,{Blind}{Right}
  Return

; I
Space & i::
  If GetKeyState("vk1Csc079","P")
    Send,{Blind}+{Home}{Delete}
  Else
    Send,{Blind}{Home}
  Return

; A
Space & a::
  If GetKeyState("vk1Csc079","P")
    Send,{Blind}+{End}{Delete}
  Else
    Send,{Blind}{End}
  Return

; W
Space & w::
  If GetKeyState("vk1Csc079","P")
    Send,{Blind}^+{Right}{Delete}
  Else
    Send,{Blind}^{Right}
  Return

; B
Space & b::
  If GetKeyState("vk1Csc079","P")
    Send,{Blind}^+{Left}{Delete}
  Else
    Send,{Blind}^{Left}
  Return

; O
Space & o::
  If GetKeyState("vk1Csc079","P")
    Send,{Blind}{Home}{Home}{Enter}{Up}
  Else
    Send,{Blind}{End}{Enter}
  Return

; G
Space & g::
  If GetKeyState("vk1Csc079","P")
    Send,{Blind}^{End}
  Else
    Send,{Blind}^{Home}
  Return

; Remove
Space & r::Send,{Blind}{BackSpace}

; X
Space & x::Send,{Blind}{Delete}

; Delete
Space & d::
  If GetKeyState("vk1Csc079","P")
    Send,{Blind}{Home}{Home}+{End}^x
  Else
    Send,{Blind}^x
  Return

; Yank
Space & y::
  If GetKeyState("vk1Csc079","P")
    Send,{Blind}{Home}{Home}+{End}^c
  Else
    Send,{Blind}^c
  Return

; Paste
Space & p::Send,{Blind}^v

; Undo
Space & u::
  If GetKeyState("vk1Csc079","P")
    Send,{Blind}^y
  Else
    Send,{Blind}^z
  Return

; Save
Space & s::Send,^s

; Quit
Space & q::
  If GetKeyState("vk1Csc079","P")
    Send,!{F4}
  Else
    Send,^w
  Return


