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
NameCustomKey4 := "Custom"
NameKey1 := "Ironsight"
NameKey2 := "Holographic"
NameKey3 := "2x"
NameKey4 := "4x"

;0/1 VARIABLES
Switch := 1
Fire := 1
NoRecoil := 1
ADS := 1
CrouchJump := 1
LoadoutSwitch := 0 ; "1" for the "AR & SR" loadout & "0" for the "Double AR" loadout
SelectiveFireSwitch := 0 ; "0" for Auto & "1" for Semi-Auto

;VALUES
;NoRecoil Values
dyCustomKey1 = 13 ;MicroUZI
dyCustomKey2 = 39 ;TommyGun
dyCustomKey3 = 58 ;VSS
dyCustomKey4 = 50 ;Custom
dyKey1 = 21 ;Ironsight
dyKey2 = 23 ;Holographic
dyKey3 = 46 ;2x
dyKey4 = 100 ;4x
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
CustomKey3 = NumpadRight
CustomKey4 = NumpadHome ;same as Numpad7
Key1 = NumpadUp ;same as Numpad8
Key2 = NumpadPgup ;same as Numpad9
Key3 = NumpadDiv ;same as Numpad/
Key4 = NumpadMult ;same as Numpad*
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
RecoilValueAdd = Up
RecoilValueSub = Down

;HOTKEYS
;Main Hotkeys
Hotkey, *%CrouchJumpButton%, CrouchJumpButton
Hotkey, *%FireButton%, FireButton
Hotkey, *%NoRecoilButton%, NoRecoilButton
Hotkey, *%ADSButton%, ADSButton
Hotkey, *%SelectiveFire%, SelectiveFire
;NoRecoil Hotkeys
Hotkey, *%CustomKey1%, CustomKey1
Hotkey, >+%CustomKey1%, SaveCustomKey1
Hotkey, *%CustomKey2%, CustomKey2
Hotkey, >+%CustomKey2%, SaveCustomKey2
Hotkey, *%CustomKey3%, CustomKey3
Hotkey, >+%CustomKey3%, SaveCustomKey3
Hotkey, *%CustomKey4%, CustomKey4
Hotkey, >+%CustomKey4%, SaveCustomKey4
Hotkey, *%Key1%, Key1
Hotkey, >+%Key1%, SaveKey1
Hotkey, *%Key2%, Key2
Hotkey, >+%Key2%, SaveKey2
Hotkey, *%Key3%, Key3
Hotkey, >+%Key3%, SaveKey3
Hotkey, *%Key4%, Key4
Hotkey, >+%Key4%, SaveKey4
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

;LINE-SKIP
LineSkip = NumpadEnter
Hotkey, >+%LineSkip%, LineSkip

;OBJECTS
dy := {CustomKey1:dyCustomKey1, CustomKey2:dyCustomKey2, CustomKey3:dyCustomKey3, CustomKey4:dyCustomKey4, Key1:dyKey1, Key2:dyKey2, Key3:dyKey3, Key4:dyKey4}
nullA = Key1
nullB = Key1

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

CustomKey1:
CustomKey2:
CustomKey3:
CustomKey4:
Key1:
Key2:
Key3:
Key4:
If Switch {
	If Fire {
		nullA := A_ThisLabel
		ToolTip(name%nullA% ": " dy[nullA])
	}
} else {
	If Fire {
		nullB := A_ThisLabel
		ToolTip(name%nullB% ": " dy[nullB])
	}
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
Switch := True
dy[nullA]
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
	Switch := False
	dy[nullB]
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
  SendInput {Space}{C down}
  Sleep 500
  SendInput {C up}
} else {
  SendInput {Space}
}
} else {
  SendInput {Space}
} return

#If Fire
~$*LButton::
If SelectiveFireSwitch {
	Loop 1 { 
		Sleep %SleepTime%
		Click
		if NoRecoil {
			if Switch {
				mouseXY(0, dy[nullA])
			} else {
				mouseXY(0, dy[nullB])
			}
		}
			
	}
} else {
	while (GetKeyState("LButton","P") and a_index < 1000){
		Sleep %SleepTime%
		Click
		if NoRecoil {
			if Switch {
				mouseXY(0, dy[nullA])
			} else {
				mouseXY(0, dy[nullB])
			}
		}
	}
} return

mouseXY(dx,dy){
DllCall("mouse_event", "UInt", 0x0001, "UInt", dx, "UInt", dy, "UInt", 0, "UPtr", 0)
}
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
SelectiveFire:
If Fire {
SelectiveFireSwitch := !SelectiveFireSwitch
	if (SelectiveFireSwitch){
		ToolTip("Semi-Automatic")
	} else {
		ToolTip("Automatic")
	}		
} return
#IF
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

;Increments
RecoilValueAdd:
If Fire {
If Switch {
	dy[nullA] += 2
	ToolTip(name%nullA% ": " dy[nullA])
} else {
	dy[nullB] += 2
	ToolTip(name%nullB% ": " dy[nullB])
}
} return

RecoilValueSub:
If Fire {
If Switch {
	if(dy[nullA] > 2) {
		dy[nullA] -= 2
		ToolTip(name%nullA% ": " dy[nullA])
	}
} else {
	if(dy[nullB] > 2) {
		dy[nullB] -= 2
		ToolTip(name%nullB% ": " dy[nullB])
	}
}
} return

LessRecoilValueAdd:
If Fire {
If Switch {
	dy[nullA] += 1
	ToolTip(name%nullA% ": " dy[nullA])
} else {
	dy[nullB] += 1
	ToolTip(name%nullB% ": " dy[nullB])
}
} return

LessRecoilValueSub:
If Fire {
If Switch {
	if(dy[nullA] > 1) {
		dy[nullA] -= 1
		ToolTip(name%nullA% ": " dy[nullA])
	}
} else {
	if(dy[nullB] > 1) {
		dy[nullB] -= 1
		ToolTip(name%nullB% ": " dy[nullB])
	}
}
} return

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
SaveCustomKey4:
ToolTip("(" NameCustomKey4 ": " dy.CustomKey4 ") SAVED")
FileAppend, % NameCustomKey4 " = " dy.CustomKey4 "`n", SavedKeys.txt
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
LineSkip:
ToolTip("Line Skipped")
FileAppend, `n, SavedKeys.txt
return

F10::
ComObjCreate("SAPI.SpVoice").Speak("exit")
Exitapp