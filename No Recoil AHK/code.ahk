#NoEnv
SendMode Input
~CapsLock::Suspend
~End::ExitApp


~*$LButton::
Loop
{

GetKeyState, state, Lbutton, P
if state=u
break

mouseXY(3,10)
sleep 1
mouseXY(0,10)
sleep 1
mouseXY(-3,-10)
sleep 1
mouseXY(-3,0)
sleep 1
mouseXY(3,10)
sleep 1
mouseXY(0,-10)
sleep 1

}
return

mouseXY(x,y)
{
DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
}