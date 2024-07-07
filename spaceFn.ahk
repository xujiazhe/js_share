#NoEnv ; recommended for performance and compatibility with future autohotkey releases.
#UseHook
#InstallKeybdHook
#SingleInstance force
SendMode Input

; reload script https://stackoverflow.com/questions/15706534/hotkey-to-restart-autohotkey-script

#Persistent
Menu, Tray, Icon , Shell32.dll, 25, 1
TrayTip, AutoHotKey, Started, 1
SoundBeep, 300, 150
Return


											 
;; deactivate capslock completely            
SetCapslockState, AlwaysOff                  
;#Include CapsLock.ahk                       
CapsLock & `::                               
    GetKeyState, CapsLockState, CapsLock, T  
    if CapsLockState = D                     
        SetCapsLockState, AlwaysOff          
    else                                     
        SetCapsLockState, AlwaysOn           
    KeyWait, ``                              
return                                       
CapsLock::Send, {Enter}

CapsLock & a:: Send, !#^+a
CapsLock & v:: Send, !#^+v
CapsLock & g::
    Send, ^c
    Sleep, 2223
    Send, !#^+g
	return

CapsLock & z::ESC

CapsLock & w:: Send, ^{PgUp}
CapsLock & r:: Send, ^{PgDn}
CapsLock & q:: MButton

CapsLock & e:: PgUp
CapsLock & s:: Home
CapsLock & d:: PgDn
CapsLock & f:: End

;CapsLock & e:: Send, !#^+s
;CapsLock & d:: Send, !#^+d
;CapsLock & s:: Send, !#^+f
;CapsLock & f:: Run https://www.google.com/

CapsLock & t:: Reload

;CapsLock & t:: Run Powershell
;汇总
^F1::Run https://github.com/ahkscript/awesome-AutoHotkey
;https://www.downza.cn/soft/317706.html
;交换alt和ctrl   	Ubuntu下 https://blog.csdn.net/ruoshuixx/article/details/130267984
;LCtrl::Alt
;LAlt::Ctrl		
;LAlt & Tab::
;LAlt & LCtrl::ShiftAltTab

LCtrl & Tab::AltTab  
;有问题的
;space as modifier key
;抄袭 https://www.reddit.com/r/AutoHotkey/comments/oq23r4/is_there_a_way_to_use_space_as_a_modifier/
;好东西  https://github.com/almogtavor/static-hands
Space::return
Space Up::
	if (A_PriorKey = "Space")
    {
        Send {Space}
    }
	;if (A_ThisHotkey = A_PriorHotkey) && (A_TimeSincePriorHotkey < 125){
	;	MsgBox, It has been less than a second since the last press
	;	Send {Space}
	;}
    return
;LCtrl & `::WinTab 

Space & j::BackSpace
Space & c::
	GetKeyState, CapsLockState, CapsLock, P 
	if CapsLockState = D
		Send, {PgDn}
	else 
		Send, {PgUp}
	return
;	GetKeyState, CapsLockState, CapsLock, P
;	if CapsLockState = D
;		Send, {PgUp}
;	else
;		Send, {Up}
;	return


Space & e::Up
Space & s::Left
Space & d::Down
Space & f::Right

Space & w::PgUp
Space & r::PgDn
Space & x::Home
Space & v::End

Space & z::ESC
Space & Tab::BackSpace
Space & h::Delete

;CapLock & Space::Enter
