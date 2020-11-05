;◆Base config
;CapsLock > Ctrl
; キーがおしっぱなしとなって正常に動作しないため、レジストリで設定する
;Capslock::Ctrl
;sc03a::Ctrl

; 無効
ScrollLock::Return

; 変換
vkE2::Send,_

; スペース
Space::Send,{Blind}{Space}
+Space::Send,{Blind}{Space}
!Space::Send,{Blind}{Space}
^Space::Send,{Blind}{Space}
; 同時押しでIME切り替えを行わせない
Space & vk1C::Send,{Blind}
; ？
vk1D::Send,{Blind}{vk1D}

; H J K L
Space & h::
  If GetKeyState("vk1C","P")
    Send,{Blind}!{Left}
  Else
    Send,{Blind}{Left}
  Return

Space & l::
  If GetKeyState("vk1C","P")
    Send,{Blind}!{Right}
  Else
    Send,{Blind}{Right}
  Return

Space & j::
  If GetKeyState("vk1C","P")
    Send,{Blind}{PgDn}
  Else
    Send,{Blind}{Down}
  Return

Space & k::
  If GetKeyState("vk1C","P")
    Send,{Blind}{PgUp}
  Else
    Send,{Blind}{Up}
  Return

vk1D & h::Send,{Blind}!{Left}
vk1D & j::Send,{Blind}!{Down}
vk1D & k::Send,{Blind}!{Up}
vk1D & l::Send,{Blind}!{Right}

;vk1D & h::Send,{Blind}^+{Tab}
;vk1D & j::Send,{Blind}{PgDn}
;vk1D & k::Send,{Blind}{PgUp}
;vk1D & l::Send,{Blind}^{Tab}

; I
Space & i::
  If GetKeyState("vk1C","P")
    Send,{Blind}+{Home}{Delete}
  Else
    Send,{Blind}{Home}
  Return

; A
Space & a::
  If GetKeyState("vk1C","P")
    Send,{Blind}+{End}{Delete}
  Else
    Send,{Blind}{End}
  Return

; W
Space & e::
  If GetKeyState("vk1C","P")
    Send,{Blind}^+{Right}{Delete}
  Else
    Send,{Blind}^{Right}
  Return

; B
Space & b::
  If GetKeyState("vk1C","P")
    Send,{Blind}^+{Left}{Delete}
  Else
    Send,{Blind}^{Left}
  Return

; O
Space & o::
  If GetKeyState("vk1C","P")
    Send,{Blind}{Home}{Home}{Enter}{Up}
  Else
    Send,{Blind}{End}{Enter}
  Return

; G
Space & g::
  If GetKeyState("vk1C","P")
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
  If GetKeyState("vk1C","P")
    Send,{Blind}{Home}{Home}+{End}^x
  Else
    Send,{Blind}^x
  Return

; Yank
Space & y::
  If GetKeyState("vk1C","P")
    Send,{Blind}{Home}{Home}+{End}^c
  Else
    Send,{Blind}^c
  Return

; Paste
Space & p::Send,{Blind}^v

; Undo
Space & u::
  If GetKeyState("vk1C","P")
    Send,{Blind}^y
  Else
    Send,{Blind}^z
  Return

; Save
Space & s::Send,^s

; ESC
Space & [::Send,{Esc}

; Quit
Space & q::
  If GetKeyState("vk1C","P")
    Send,!{F4}
  Else
    Send,^w
  Return

; 検索
Space & /::Send,^{f}
; 次を検索
Space & n::Send,{Blind}{F3}

; AltTab
Space & w::AltTab

; タブ移動
Space & t::
  If GetKeyState("vk1C","P")
    Send,^+{Tab}
  Else
    Send,^{Tab}
  Return

; 右クリック
Space & @::Send,{AppsKey}

; ファンクションキー
Space & 1::Send,{F1}
Space & 2::Send,{F2}
Space & 3::Send,{F3}
Space & 4::Send,{F4}
Space & 5::Send,{F5}
Space & 6::Send,{F6}
Space & 7::Send,{F7}
Space & 8::Send,{F8}
Space & 9::Send,{F9}
Space & 0::Send,{F10}
Space & -::Send,{F11}
Space & ^::Send,{F12}