;��Base config
;CapsLock > Ctrl
; �L�[���������ςȂ��ƂȂ��Đ���ɓ��삵�Ȃ����߁A���W�X�g���Őݒ肷��
;Capslock::Ctrl
;sc03a::Ctrl

;��AHK config
;Reload
vk1D & F5::Reload

; ����
ScrollLock::Return

; �ϊ�
vkE2::Send,_

; �X�y�[�X�̓�������
Space::Send,{Blind}{Space}
+Space::Send,{Blind}{Space}
!Space::Send,{Blind}{Space}
^Space::Send,{Blind}{Space}
; �X�y�[�X�{�ϊ�
Space & vk1C::Send,{Blind}

; H J K L
Space & h::
  If GetKeyState("vk1C","P")
    Send,{Blind}^+{Tab}
  Else
    Send,{Blind}{Left}
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

Space & l::
  If GetKeyState("vk1C","P")
    Send,{Blind}^{Tab}
  Else
    Send,{Blind}{Right}
  Return

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
Space & w::
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

; Quit
Space & q::
  If GetKeyState("vk1C","P")
    Send,!{F4}
  Else
    Send,^w
  Return

; ����
Space & /::Send,^{f}
; ��������
Space & n::Send,{Blind}{F3}

; AltTab
Space & e::AltTab

; �^�u�ړ�
Space & t::
  If GetKeyState("vk1C","P")
    Send,^+{Tab}
  Else
    Send,^{Tab}
  Return

; �E�N���b�N
Space & @::Send,{AppsKey}

; �t�@���N�V�����L�[
vk1D & 1::Send,{F1}
vk1D & 2::Send,{F2}
vk1D & 3::Send,{F3}
vk1D & 4::Send,{F4}
vk1D & 5::Send,{F5}
vk1D & 6::Send,{F6}
vk1D & 7::Send,{F7}
vk1D & 8::Send,{F8}
vk1D & 9::Send,{F9}
vk1D & 0::Send,{F10}
vk1D & -::Send,{F11}
vk1D & ^::Send,{F12}