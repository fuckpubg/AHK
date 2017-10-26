#NoEnv
#SingleInstance force
#MaxThreadsBuffer on
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2
#ifwinactive, PLAYERUNKNOWN'S BATTLEGROUNDS

;NAME YOUR KEYS
NameCustomKey1 := "MicroUZI"
NameCustomKey2 := "TommyGun"
NameCustomKey3 := "VSS"
NameKey1 := "Ironsight"
NameKey2 := "Holographic"
NameKey3 := "Custom"
NameKey4 := "2x"
NameKey5 := "4x"

;0/1 VARIABLES
Fire := 1 ;both "Fire" and "NoRecoil" should either be 1 or 0
NoRecoil := 1 ;both "Fire" and "NoRecoil" should either be 1 or 0
ADS := 1
CrouchJump := 1
SelectiveFireSwitch := 0
LoadoutSwitch := 0 ; "1" for the "AR & SR" loadout & "0" for the "Double AR" loadout

;VALUES
;NoRecoil Values
dyCustomKey1 = 13 ;MicroUZI
dyCustomKey2 = 39 ;TommyGun
dyCustomKey3 = 58 ;VSS
dyKey1 = 21 ;Ironsight
dyKey2 = 23 ;Holographic
dyKey3 = 35 ;Custom
dyKey4 = 46 ;2x
dyKey5 = 43 ;4x
;GunClip Values
GunClipSize1 = 10
GunClipSize2 = 15
;SleepTime
SleepTime = 6

;BUTTONS
;Main Binds
CrouchJumpButton = NumpadIns ;same as Numpad0
FireButton = NumpadEnd ;same as Numpad1
NoRecoilButton = NumpadDown ;same as Numpad2
ADSButton = NumpadPgdn ;same as Numpad3
SelectiveFire = NumpadDel ;same as Numpad.
;NoRecoil Binds
CustomKey1 = NumpadLeft ;same as Numpad4
CustomKey2 = NumpadClear ;same as Numpad5
CustomKey3 = NumpadRight ;same as Numpad6
Key1 = NumpadDiv ;same as Numpad/
Key2 = NumpadMult ;same as Numpad*
Key3 = NumpadHome ;same as Numpad7
Key4 = NumpadUp ;same as Numpad8
Key5 = NumpadPgup ;same as Numpad9
;GunClip Binds
GunClip1 = Left
GunClip2 = Right
;Jump and Crouch Binds
JumpSecondary = F3 ;secondary Jump bind
CrouchSecondary = F4 ;secondary Crouch bind
;LoadoutType Binds
ARwSR = F1
ARwAR = F2
PrimaryWeapon1 = 1
PrimaryWeapon2 = 2
SideArm = 3
MeleeWeapon = 4
Throwables = 5
SecThrowables = G
;Increment Binds
RecoilValueAdd = NumpadAdd
RecoilValueSub = NumpadSub
ClipSizeAdd = Up
ClipSizeSub = Down
SleepTimeAdd = PGUP
SleepTimeSub = PGDN

;HOTKEYS
;Main Hotkeys
Hotkey, *%CrouchJumpButton%, CrouchJumpButton
Hotkey, *%FireButton%, FireButton
Hotkey, *%NoRecoilButton%, NoRecoilButton
Hotkey, *%ADSButton%, ADSButton
;NoRecoil Hotkeys
Hotkey, *%CustomKey1%, CustomKey1
Hotkey, >+%CustomKey1%, SaveCustomKey1
Hotkey, *%CustomKey2%, CustomKey2
Hotkey, >+%CustomKey2%, SaveCustomKey2
Hotkey, *%CustomKey3%, CustomKey3
Hotkey, >+%CustomKey3%, SaveCustomKey3
Hotkey, *%Key1%, Key1
Hotkey, >+%Key1%, SaveKey1
Hotkey, *%Key2%, Key2
Hotkey, >+%Key2%, SaveKey2
Hotkey, *%Key3%, Key3
Hotkey, >+%Key3%, SaveKey3
Hotkey, *%Key4%, Key4
Hotkey, >+%Key4%, SaveKey4
Hotkey, *%Key5%, Key5
Hotkey, >+%Key5%, SaveKey5
;GunClip Hotkeys
Hotkey, *%GunClip1%, GunClip1
Hotkey, >+%GunClip1%, SaveGunClip1
Hotkey, *%GunClip2%, GunClip2
Hotkey, >+%GunClip2%, SaveGunClip2
;GunClip Hotkey
Hotkey, *%SelectiveFire%, SelectiveFire
;LoadoutType Hotkey
Hotkey, *%ARwSR%, ARwSR
Hotkey, *%ARwAR%, ARwAR
Hotkey, *$%PrimaryWeapon1%, PrimaryWeapon1
Hotkey, *$%PrimaryWeapon2%, PrimaryWeapon2
Hotkey, *$%SideArm%, SideArm
Hotkey, *$%MeleeWeapon%, MeleeWeapon
Hotkey, *$%Throwables%, Throwables
Hotkey, *$%SecThrowables%, Throwables
;Increment Hotkey
Hotkey, *%RecoilValueAdd%, RecoilValueAdd
Hotkey, ^%RecoilValueAdd%, LessRecoilValueAdd
Hotkey, *%RecoilValueSub%, RecoilValueSub
Hotkey, ^%RecoilValueSub%, LessRecoilValueSub
Hotkey, *%ClipSizeAdd%, ClipSizeAdd
Hotkey, ^%ClipSizeAdd%, LessClipSizeAdd
Hotkey, *%ClipSizeSub%, ClipSizeSub
Hotkey, ^%ClipSizeSub%, LessClipSizeSub
Hotkey, *%SleepTimeAdd%, SleepTimeAdd
Hotkey, *%SleepTimeSub%, SleepTimeSub

;LINE-SKIP
LineSkip = NumpadEnter
Hotkey, >+%LineSkip%, LineSkip

;OBJECTS
clip := {GunClip1:GunClipSize1, GunClip2:GunClipSize2}
dy := {CustomKey1:dyCustomKey1, CustomKey2:dyCustomKey2, CustomKey3:dyCustomKey3, Key1:dyKey1, Key2:dyKey2, Key3:dyKey3, Key4:dyKey4, Key5:dyKey5}
mark = GunClip1
index = Key1

isMouseShown()
{
StructSize := A_PtrSize + 16
VarSetCapacity(InfoStruct, StructSize)
NumPut(StructSize, InfoStruct)
DllCall("GetCursorInfo", UInt, &InfoStruct)
Result := NumGet(InfoStruct, 8)

if Result > 1
Return 1
else
Return 0
}
Loop
{
if isMouseShown()
Suspend On
else
Suspend Off
Sleep 1
}

GunClip1:
GunClip2:
If (SelectiveFireSwitch){
    mark := A_ThisLabel
    ToolTip(mark ": " clip[mark])
} return

CustomKey1:
CustomKey2:
CustomKey3:
Key1:
Key2:
Key3:
Key4:
Key5:
If Fire {
    index := A_ThisLabel
    ToolTip(name%index% ": " dy[index])
} return

;LoadoutTypes
;Only use "1" and "2" for switching between your primary weapons, NO MOUSE SCROLL
ARwSR: ;for (AR_PrimaryWeapon1/SR_PrimaryWeapon2) loadout
LoadoutSwitch := True
ToolTip("AR & SR")
return

ARwAR: ;for (double AR) loadout
Fire := !Fire
LoadoutSwitch := False
ToolTip("AR & AR")
return

PrimaryWeapon1:
SendInput, {%PrimaryWeapon1%}
If LoadoutSwitch {
    Fire := 1
} else {
    Fire := 1
} return

PrimaryWeapon2:
SendInput, {%PrimaryWeapon2%}
If LoadoutSwitch {
    Fire := 0
} else {
    Fire := 1
} return

SideArm:
SendInput, {%SideArm%}
If Fire {
	Fire := false
} return
MeleeWeapon:
SendInput, {%MeleeWeapon%}
If Fire {	
	Fire := false
} return
Throwables:
SendInput, {%Throwables%}
If Fire {	
	Fire := false
} return

;CrouchJump
*$Space::
If CrouchJump {
  KeyWait, Space, T0.08
  If ErrorLevel {
  SendInput {Space}{%CrouchSecondary% down}
  Sleep 500
  SendInput {%CrouchSecondary% up}
} else {
  SendInput {Space}
}
} else {
  SendInput {Space}
} return

#If Fire
~$*LButton:: 
If SelectiveFireSwitch {
	Loop % clip[mark]{ 
			Sleep %SleepTime%
			Click
			if NoRecoil {
				mouseXY(0, dy[index])
			}
			
	}
} else {
	while (GetKeyState("LButton","P") and a_index < 1000){
			Sleep %SleepTime%
			Click
			if NoRecoil {
				mouseXY(0, dy[index])
			}
	}
} return

mouseXY(dx,dy){
DllCall("mouse_event", "UInt", 0x0001, "UInt", dx, "UInt", dy, "UInt", 0, "UPtr", 0)
}

SelectiveFire:
If Fire {
SelectiveFireSwitch := !SelectiveFireSwitch
	if (SelectiveFireSwitch){
		ToolTip("RAPID FIRE")
	} else {
		ToolTip("AUTO FIRE")
	}		
} return
#IF

;Fast ADS
*RButton::
if ADS {
  SendInput {RButton}
  SendInput {RButton Down}
  KeyWait, RButton
  SendInput {RButton Up}
} else {
  SendInput {RButton Down}
  KeyWait, RButton
  SendInput {RButton Up}
} return

;Toggles
FireButton:
    if Fire {
		if NoRecoil {
			NoRecoil := 0
			Fire := 0
			ToolTip("Fire & NoRecoil OFF")
		} else {
			Fire := 0
			ToolTip("Fire OFF")
		}
    } else {
        Fire :=1
        ToolTip("Fire ON")
    } return
NoRecoilButton:
If Fire {
	if NoRecoil {
		NoRecoil := 0
	ToolTip("NoRecoil OFF")
	} else {
		NoRecoil := 1
	ToolTip("NoRecoil ON")
	}
} else {
	if NoRecoil {
		NoRecoil := 0
		ToolTip("NoRecoil OFF")
	} else {
		Fire := 1
		NoRecoil := 1
	ToolTip("Fire & NoRecoil ON")
	}
} return
ADSButton:
    if ADS {
        ADS := 0
        ToolTip("ADS OFF")
    } else {
        ADS := 1
        ToolTip("ADS ON")
    } return
CrouchJumpButton:
    if CrouchJump {
        CrouchJump := 0
        ToolTip("CrouchJump OFF")
    } else {
        CrouchJump := 1
        ToolTip("CrouchJump ON")
    } return
	
SleepTimeAdd:
SleepTime += 1
ToolTip("Time: " SleepTime)
return

SleepTimeSub:
SleepTime -= 1
ToolTip("Time: " SleepTime)
return

;Increments
RecoilValueAdd:
If Fire {
    dy[index] += 2
    ToolTip(name%index% ": " dy[index])
} return

RecoilValueSub:
If Fire {
    if(dy[index] > 2){
        dy[index] -= 2
        ToolTip(name%index% ": " dy[index])
		}
} return

LessRecoilValueAdd:
If Fire {
    dy[index] += 1
    ToolTip(name%index% ": " dy[index])
} return

LessRecoilValueSub:
If Fire {
    if(dy[index] > 1){
        dy[index] -= 1
        ToolTip(name%index% ": " dy[index])
		}
} return

;GunClip Controls
ClipSizeAdd:
If SelectiveFireSwitch {
    clip[mark] += 2
    ToolTip(mark ": " clip[mark])
} return

ClipSizeSub:
If SelectiveFireSwitch {
    if(clip[mark] > 2){
        clip[mark] -= 2
        ToolTip(mark ": " clip[mark])
		}
}
return
LessClipSizeAdd:
If SelectiveFireSwitch {
    clip[mark] += 1
    ToolTip(mark ": " clip[mark])
}
return

LessClipSizeSub:
If SelectiveFireSwitch {
    if(clip[mark] > 1){
        clip[mark] -= 1
        ToolTip(mark ": " clip[mark])
	}
}
return

ToolTip(label){
  ToolTip, %label%, 930, 650
  SetTimer, RemoveToolTip, 1000
  return
  RemoveToolTip:
  SetTimer, RemoveToolTip, Off
  ToolTip
  return
  }

;Save the values into a text file
SaveCustomKey1:
ToolTip("(" NameCustomKey1 ": " dy.CustomKey1 ") SAVED")
FileAppend, % NameCustomKey1 " = " dy.CustomKey1 "`n", SavedKeys.txt
return
SaveCustomKey2:
ToolTip("(" NameCustomKey2 ": " dy.CustomKey2 ") SAVED")
FileAppend, % NameCustomKey2 " = " dy.CustomKey2 "`n", SavedKeys.txt
return
SaveCustomKey3:
ToolTip("(" NameCustomKey3 ": " dy.CustomKey3 ") SAVED")
FileAppend, % NameCustomKey3 " = " dy.CustomKey3 "`n", SavedKeys.txt
return
SaveKey1:
ToolTip("("NameKey1 ": " dy.Key1 ") SAVED")
FileAppend, % NameKey1 " = " dy.Key1 "`n", SavedKeys.txt
return
SaveKey2:
ToolTip("("NameKey2 ": " dy.Key2 ") SAVED")
FileAppend, % NameKey2 " = " dy.Key2 "`n", SavedKeys.txt
return
SaveKey3:
ToolTip("("NameKey3 ": " dy.Key3 ") SAVED")
FileAppend, % NameKey3 " = " dy.Key3 "`n", SavedKeys.txt
return
SaveKey4:
ToolTip("("NameKey4 ": " dy.Key4 ") SAVED")
FileAppend, % NameKey4 " = " dy.Key4 "`n", SavedKeys.txt
return
SaveKey5:
ToolTip("("NameKey5 ": " dy.Key5 ") SAVED")
FileAppend, % NameKey5 " = " dy.Key5 "`n", SavedKeys.txt
return
SaveGunClip1:
ToolTip("(GunClip 1: " clip.GunClip1 ") SAVED")
FileAppend, % "GunClip 1 Size = " clip.GunClip1 "`n", SavedKeys.txt
return
SaveGunClip2:
ToolTip("(GunClip 2: " clip.GunClip2 ") SAVED")
FileAppend, % "GunClip 2 Size = " clip.GunClip2 "`n", SavedKeys.txt
return
LineSkip:
ToolTip("Line Skipped")
FileAppend, `n, SavedKeys.txt
return

F10::
ComObjCreate("SAPI.SpVoice").Speak("exit")
Exitapp