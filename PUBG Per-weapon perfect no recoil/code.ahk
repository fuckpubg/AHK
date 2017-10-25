sens:=3.0
zoomsens:=0.9


key_ump:="F1"
key_uzi:="F2"
key_akm:="F3"
key_m416:="F4"
key_scar:="F5"
key_m16a4:="F6"
key_groza:="F7"
key_m249:="home"
key_vector:="F9"
key_skspubg:="F10"
key_Tgun:="F11"
key_glock:="ins"
key_RCoff:="capslock"
key_Terminate:="Del"
key_shoot:="LButton"
key_zoom:="RButtont"


modifier:=2.52/sens




loop {
sleep 1

if GetKeyState(key_ump)
{
ump:=true
m416:=false
uzi:=false
akm:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false

}
if GetKeyState(key_glock)
{
glock:=true
ump:=false
m416:=false
uzi:=false
akm:=false
scar:=false
m16a4:=false
groza:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false

}
if GetKeyState(key_m16a4)
{
m16a4:=true
m416:=false
uzi:=false
akm:=false
scar:=false
ump:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false

}
if GetKeyState(key_scar)
{
scar:=true
m416:=false
uzi:=false
akm:=false
ump:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false

}
if GetKeyState(key_m416)
{
m416:=true
ump:=false
uzi:=false
akm:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false

}

if GetKeyState(key_akm)
{
akm:=true
m416:=false
uzi:=false
ump:=false
scar:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false

}


if GetKeyState(key_uzi)
{
uzi:=true
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false

}
if GetKeyState(key_groza)
{
groza:=true
uzi:=false
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false

}
if GetKeyState(key_m249)
{
m249:=true
groza:=false
uzi:=false
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
glock:=false
vector:=false
skspubg:=false
Tgun:=false

}
if GetKeyState(key_vector)
{
vector:=true
m249:=false
groza:=false
uzi:=false
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
glock:=false
skspubg:=false
mk14pubg:=false
Tgun:=false

}
if GetKeyState(key_skspubg)
{
vector:=false
m249:=false
groza:=false
uzi:=false
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
glock:=false
skspubg:=true
Tgun:=false
}

if GetKeyState(key_Tgun)
{
Tgun:=true
vector:=false
m249:=false
groza:=false
uzi:=false
m416:=false
akm:=false
scar:=false
ump:=false
m16a4:=false
glock:=false
skspubg:=false
}


if GetKeyState(key_Terminate)
{
sleep 2000
ExitApp
}

if GetKeyState(key_RCoff)
{
akm:=false
uzi:=false
scar:=false
ump:=false
m416:=false
m16a4:=false
groza:=false
glock:=false
m249:=false
vector:=false
skspubg:=false
Tgun:=false

}

if GetKeyState(key_shoot)
{

if ump
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 22*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 23*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 28*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 28*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 28*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 28*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 28*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 28*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 28*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 28*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 35*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 35*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 35*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 35*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 35*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 35*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 28*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 28*modifier)
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 28*modifier)

sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -14*modifier, "UInt", 28*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -14*modifier, "UInt", 28*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -14*modifier, "UInt", 28*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -14*modifier, "UInt", 28*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -14*modifier, "UInt", 28*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -14*modifier, "UInt", 28*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 92
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -14*modifier, "UInt", 28*modifier)
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
sleep 92
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}

else if AKM
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 15
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 30*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 30*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 30*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 30*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -5*modifier, "UInt", 35*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 35*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 35*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 10*modifier, "UInt", 32*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 10*modifier, "UInt", 32*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 32*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 7*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -9*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -5*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 5*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 8*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -6*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 42*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 2*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 6*modifier)
sleep 100






if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}

else if uzi
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 15
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 10*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 10*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 10*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 10*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 10*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 10*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 10*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 14*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 20*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 20*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 20*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 23*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 27*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 27*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 27*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 27*modifier)
sleep 48
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 27*modifier)
sleep 48S
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}

else if m416
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 30
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 26*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 26*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 27*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 26*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 28*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 30*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 33*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 6*modifier, "UInt", 33*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 33*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 33*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 33*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 33*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 33*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 33*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 33*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 33*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 33*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 33*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 72
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}

else if groza
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 17*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 17*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 17*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 17*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 17*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 17*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 17*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 17*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 17*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 40*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 40*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 40*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 40*modifier)
sleep 80
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -4*modifier, "UInt", 40*modifier)
sleep 80

if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}


else if glock
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 25*modifier)
sleep 60
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 60
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 25*modifier)
sleep 60
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -2*modifier, "UInt", 25*modifier)
sleep 60
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 60
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 25*modifier)
sleep 60
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 33*modifier)
sleep 60
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 33*modifier)
sleep 60
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 33*modifier)
sleep 60
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 33*modifier)
sleep 60
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 35*modifier)
sleep 60
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 60
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -8*modifier, "UInt", 35*modifier)
sleep 60
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 40*modifier)
sleep 60
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 40*modifier)
sleep 60
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 60
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 5*modifier, "UInt", 40*modifier)
sleep 60





if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}



else if scar
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 27*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 27*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 27*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 30*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 30*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 33*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 33*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 33*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 34*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 30*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 20*modifier)
sleep 100

if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}

else if m249
{

loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 27*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 27*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 27*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 30*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 30*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 35*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 37*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 38*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 33*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 33*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 33*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 34*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 30*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 20*modifier)
sleep 100
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 20*modifier)
sleep 100

if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}

else if Tgun
{

loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 40*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 40*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 40*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 45*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 45*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 45*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 45*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -3*modifier, "UInt", 65*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 65*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 65*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 65*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 60*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 70*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 2*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 55*modifier)
sleep 86
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 3*modifier, "UInt", 55*modifier)
sleep 86



if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}

else if vector
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 1*modifier, "UInt", 12*modifier)
sleep 55
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", -1*modifier, "UInt", 12*modifier)
sleep 55
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 12*modifier)
sleep 55
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 15*modifier)
sleep 55
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 17*modifier)
sleep 55
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 55
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 55
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 30*modifier)
sleep 55
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 30*modifier)
sleep 55
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 35*modifier)
sleep 55
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 35*modifier)
sleep 55
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 35*modifier)
sleep 55
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 4*modifier, "UInt", 35*modifier)
sleep 55


if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 1000
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}


else if skspubg
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 50*modifier)
sleep 110



if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 900
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}




else if m16a4
{
loop
{
DllCall("mouse_event", uint, 2, int, 0, int, 0, uint, 0, int, 0)
sleep 10
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 30*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 25*modifier)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", "UInt", 0x01, "UInt", 0*modifier, "UInt", 27*modifier)
sleep 75


if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
sleep 75
if !GetKeyState(key_shoot)
{
DllCall("mouse_event", uint, 4, int, 0, int, 0, uint, 0, int, 0)
break
}
}
}
}


}