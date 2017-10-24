#NoEnv
#InstallKeybdHook
#InstallMouseHook
SetDefaultMouseSpeed, 0
SetMouseDelay, -1
SetKeyDelay, -1
SetWinDelay, -1
SetBatchLines, -1
SetControlDelay -1
#MaxThreads 30
#MaxThreadsBuffer on
#KeyHistory 0
SendMode Input
#UseHook

_auto := true

~LButton::autofire()
NumPad1::_auto := ! _auto

autofire()
{
global _auto
if _auto
{
Loop
{
if GetKeyState("LButton", "P")
{
SendInput {LButton DownTemp}
Sleep 30 // high = slow , Low = fast
mouseXY(0, 5) // high = stong , low = weak
SendInput {LButton Up}
Sleep 20 // high = slow , Low = fast
}
else
break
} ;; loop
} ;; if
} ;; autofire()

mouseXY(x,y)
{
DllCall("mouse_event",uint,1,int,x,int,y,uint,0,int,0)
}

Capslock::Suspend




Space::
Send, {Space Down}{C Down}
return

Space Up::
Send, {Space Up}{C Up}
return