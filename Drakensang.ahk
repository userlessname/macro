#SingleInstance force
#Persistent
#include C:\Users\Nilsen\Documents\AutoHotkey\AutoHotInterception\Lib\AutoHotInterception.ahk
AHI := new AutoHotInterception()
;keyboard
	;~ keyboardId := AHI.GetKeyboardIdFromHandle("ACPI\VEN_HPQ&DEV_8001")
	;~ AHI.SubscribeKey(keyboardId, GetKeySC("F1"), false, Func("oneKeyEvent"), true)
	;~ AHI.SubscribeKeyboard(keyboardId, false, Func("KeyEvent"))
;mouse
	mouseId := AHI.GetMouseIdFromHandle("HID\VID_09DA&PID_9090&REV_0103&MI_01")
	;~ AHI.SubscribeMouseButton(mouseId, 0, false, Func("MouseButtonEvent"))
/*1
;~ global localState := 0
;~ global toggle := 0
;0: Left Mouse, 1: Right Mouse, 2: Middle Mouse, 3: Side Button 1, 4: Side Button 2, 5: Mouse Wheel (Vertical), 6: Mouse Wheel (Horizontal)
AHI.SubscribeKeyboard(keyboardId, false, Func("KeyEvent"))
AHI.SubscribeMouseMove(mouseId, false, Func("MouseEvent"))
AHI.SubscribeMouseButtons(mouseId, false, Func("MouseButtonEvent"))
global tick := 0
global tock := 0
tick = % A_TickCount
tock = % A_TickCount - tick
IfWinActive, ahk_exe Crossout.exe
ToolTip % " State: " state
ifequal, state, 1, return
if !GetKeyState("space", "P")
---------------------------------------------------------------------------------
oneKeyEvent(state){
	localState := state
	ifequal, state, 0, return
	(localState) ? toggle := !toggle
	IfWinNotActive, ahk_exe KnightOnline.exe  
		return
	if !toggle
		SoundPlay, C:\Users\Nilsen\Documents\AutoHotkey\sounds\151779__slappy13__outtake-beep-1k-5.wav
	while toggle
	{
		loop, 1
		{
			sendKey(1)
			sendKey(7,2)
			sendKey(8)
		}
	}
	;~ localState=!localState
	;177817781778
}
sendKey(key,count:=1,delay:=25){
	loop, % count
	{
		AHI.SendKeyEvent(keyboardId, GetKeySC(""key), 1)
		Sleep delay
		AHI.SendKeyEvent(keyboardId, GetKeySC(""key), 0)
		Sleep delay
	}
}
;~
;~ oneKeyEvent(state){
	;~ ifequal, state, 1, return
	;~ IfWinActive, ahk_exe KnightOnline.exe
	;~ MsgBox
;~ }
;~ MouseButtons(state){
	;~ WinGetTitle, Title, A
	;~ MsgBox, The active window is "%Title%".
*/
return

MouseButtonEvent(state){
	ToolTip %  "State: " state	
}
#IfWinActive, ahk_exe dro_client64.exe
f1::
	AHI.SendMouseButtonEvent(mouseId, 0, 1)
return
~w::
	AHI.SendMouseButtonEvent(mouseId, 0, 1)
return
~w up::
	AHI.SendMouseButtonEvent(mouseId, 0, 0)
return
#If












;~ f1::
	;~ MouseClick,left,,,,,D
;~ return
;~ #If
*^esc::
	Controlsend,, ^{s}, ahk_exe SciTE.exe
	Sleep 50
	SoundBeep,2500,100
	Reload 
return
::ah::utohotkey