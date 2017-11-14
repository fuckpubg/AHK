#NoEnv
#SingleInstance force
#MaxThreadsBuffer on
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2
#ifwinactive, PLAYERUNKNOWN'S BATTLEGROUNDS

;NAME YOUR KEYS
NameCK1 := "M16A4", NameCK2 := "M416", NameCK3 := "SCAR-L"
NameCK4 := "AKM", NameCK5 := "Mini14", NameCK6 := "SKS"
NameCK7 := "UMP9", NameCK8 := "Vector" ,NameCK9 := "Groza"

NameK1 := "Ironsight", NameK2 := "Holographic", NameK3 := "2x", NameK4 := "4x"

IniRead, NoRecoil, variables.ini, Variables, NoRecoil
IniRead, ADS, variables.ini, Variables, ADS
IniRead, CrouchJump, variables.ini, Variables, CrouchJump
IniRead, Switch, variables.ini, Variables, Switch
IniRead, LoadoutSwitch, variables.ini, Variables, LoadoutSwitch
IniRead, FreeMode, variables.ini, Variables, FreeMode
IniRead, SideArmVariable, variables.ini, Variables, SideArmFastShooting
IniRead, NoRecoilButton, binds.ini, Features, NoRecoil
IniRead, ADSButton, binds.ini, Features, ADS
IniRead, CrouchJumpButton, binds.ini, Features, CrouchJump
IniRead, FreeModeButton, binds.ini, Features, FreeMode
IniRead, ARwSR, binds.ini, Louadouts, AutoRifleSemiRifle
IniRead, ARwAR, binds.ini, Louadouts, AutoRifleAutoRifle
IniRead, PrimaryWeapon1, binds.ini, Louadouts, PrimaryWeapon1
IniRead, PrimaryWeapon2, binds.ini, Louadouts, PrimaryWeapon2
IniRead, SideArm, binds.ini, Louadouts, SideArm
IniRead, MeleeWeapon, binds.ini, Louadouts, MeleeWeapon
IniRead, Throwables, binds.ini, Louadouts, Throwables
IniRead, SecThrowables, binds.ini, Louadouts, SecondaryThrowables
IniRead, YRecoilValueAdd, binds.ini, Increments, ValueAdd
IniRead, YRecoilValueSub, binds.ini, Increments, ValueSub
IniRead, SaveTheKey, binds.ini, Increments, ValueSave
IniRead, y11, values.ini, M16A4, Ironsight
IniRead, y21, values.ini, M16A4, Holo
IniRead, y31, values.ini, M16A4, 2x
IniRead, y41, values.ini, M16A4, 4x
IniRead, y12, values.ini, M416, Ironsight
IniRead, y22, values.ini, M416, Holo
IniRead, y32, values.ini, M416, 2x
IniRead, y42, values.ini, M416, 4x
IniRead, y13, values.ini, SCAR-L, Ironsight
IniRead, y23, values.ini, SCAR-L, Holo
IniRead, y33, values.ini, SCAR-L, 2x
IniRead, y43, values.ini, SCAR-L, 4x
IniRead, y14, values.ini, AKM, Ironsight
IniRead, y24, values.ini, AKM, Holo
IniRead, y34, values.ini, AKM, 2x
IniRead, y44, values.ini, AKM, 4x
IniRead, y15, values.ini, Mini14, Ironsight
IniRead, y25, values.ini, Mini14, Holo
IniRead, y35, values.ini, Mini14, 2x
IniRead, y45, values.ini, Mini14, 4x
IniRead, y16, values.ini, SKS, Ironsight
IniRead, y26, values.ini, SKS, Holo
IniRead, y36, values.ini, SKS, 2x
IniRead, y46, values.ini, SKS, 4x
IniRead, y17, values.ini, UMP9, Ironsight
IniRead, y27, values.ini, UMP9, Holo
IniRead, y37, values.ini, UMP9, 2x
IniRead, y47, values.ini, UMP9, 4x
IniRead, y18, values.ini, Vector, Ironsight
IniRead, y28, values.ini, Vector, Holo
IniRead, y38, values.ini, Vector, 2x
IniRead, y48, values.ini, Vector, 4x
IniRead, y19, values.ini, Groza, Ironsight
IniRead, y29, values.ini, Groza, Holo
IniRead, y39, values.ini, Groza, 2x
IniRead, y49, values.ini, Groza, 4x
;HOTKEYS
;Main Hotkeys
Hotkey, *%CrouchJumpButton%, CrouchJumpButton
Hotkey, *%NoRecoilButton%, NoRecoilButton
Hotkey, *%ADSButton%, ADSButton
Hotkey, *%FreeModeButton%, FreeModeButton
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
Hotkey, *%YRecoilValueAdd%, YRecoilValueAdd
Hotkey, *%YRecoilValueSub%, YRecoilValueSub
;Saving Hotkey
Hotkey, *%SaveTheKey%, SaveTheKey

yrr := {"CK1":{"K1":y11,"K2":y21,"K3":y31,"K4":y41}
	   ,"CK2":{"K1":y12,"K2":y22,"K3":y32,"K4":y42}
	   ,"CK3":{"K1":y13,"K2":y23,"K3":y33,"K4":y43}
	   ,"CK4":{"K1":y14,"K2":y24,"K3":y34,"K4":y44}
	   ,"CK5":{"K1":y15,"K2":y25,"K3":y35,"K4":y45}
	   ,"CK6":{"K1":y16,"K2":y26,"K3":y36,"K4":y46}
	   ,"CK7":{"K1":y17,"K2":y27,"K3":y37,"K4":y47}
	   ,"CK8":{"K1":y18,"K2":y28,"K3":y38,"K4":y48}
	   ,"CK9":{"K1":y19,"K2":y29,"K3":y39,"K4":y49}}
	   
IniRead, CK1, binds.ini, WeaponPresets, M16A4
IniRead, CK2, binds.ini, WeaponPresets, M416
IniRead, CK3, binds.ini, WeaponPresets, SCAR
IniRead, CK4, binds.ini, WeaponPresets, AKM
IniRead, CK5, binds.ini, WeaponPresets, Mini14
IniRead, CK6, binds.ini, WeaponPresets, SKS
IniRead, CK7, binds.ini, WeaponPresets, UMP9
IniRead, CK8, binds.ini, WeaponPresets, Vector
IniRead, CK9, binds.ini, WeaponPresets, Groza
IniRead, K1, binds.ini, SightPresets, Ironsight
IniRead, K2, binds.ini, SightPresets, HoloRedDot
IniRead, K3, binds.ini, SightPresets, 2xScope
IniRead, K4, binds.ini, SightPresets, 4xScope

Hotkey, *%CK1%, CK1
Hotkey, *%CK2%, CK2
Hotkey, *%CK3%, CK3
Hotkey, *%CK4%, CK4
Hotkey, *%CK5%, CK5
Hotkey, *%CK6%, CK6
Hotkey, *%CK7%, CK7
Hotkey, *%CK8%, CK8
Hotkey, *%CK9%, CK9
Hotkey, *%K1%, K1
Hotkey, *%K2%, K2
Hotkey, *%K3%, K3
Hotkey, *%K4%, K4

nullA := "CK1", nullB := "CK1"
subKeyA := "K1", subKeyB := "K1"

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
Loop {
if isMouseShown()
Suspend On
else
Suspend Off
Sleep 1
}

CK1:
CK2:
CK3:
CK4:
CK5:
CK6:
CK7:
CK8:
CK9:
If Switch {
	If NoRecoil {
		nullA := A_ThisLabel
		Tooltip("Choose a sight for [" name%nullA% "]")
	}
} else {
	If NoRecoil {
		nullB := A_ThisLabel
		Tooltip("Choose a sight for [" name%nullB% "]")
	}
} return

K1:
K2:
K3:
K4:
If Switch {
	If NoRecoil {
		subKeyA := A_ThisLabel
		Tooltip("[" name%nullA% "] : [" name%subKeyA% "] = (" yrr[nullA][subKeyA] ")")
	}
} else {
	If NoRecoil {
		subKeyB := A_ThisLabel
		Tooltip("[" name%nullB% "] : [" name%subKeyB% "] = (" yrr[nullB][subKeyB] ")")
	}
} return

YRecoilValueAdd:
If NoRecoil {
	If Switch {
		yrr[nullA][subKeyA] += 1
		Tooltip("[" name%nullA% "] : [" name%subKeyA% "] = (" yrr[nullA][subKeyA] ")")
	} else {
		yrr[nullB][subKeyB] += 1
		Tooltip("[" name%nullB% "] : [" name%subKeyB% "] = (" yrr[nullB][subKeyB] ")")
	}
} return
YRecoilValueSub:
If NoRecoil {
	If Switch {
		if(yrr[nullA][subKeyA] > 1) {
		yrr[nullA][subKeyA] -= 1
		Tooltip("[" name%nullA% "] : [" name%subKeyA% "] = (" yrr[nullA][subKeyA] ")")
		}
	} else {
		if(yrr[nullB][subKeyB] > 1) {
		yrr[nullB][subKeyB] -= 1
		Tooltip("[" name%nullB% "] : [" name%subKeyB% "] = (" yrr[nullB][subKeyB] ")")
		}
	}
} return

ARwSR:
LoadoutSwitch := True
ToolTip("AR & SR")
return
ARwAR:
NoRecoil := !NoRecoil
LoadoutSwitch := False
ToolTip("AR & AR")
return
PrimaryWeapon1:
SendInput, {%PrimaryWeapon1%}
Switch := True
If LoadoutSwitch {
    NoRecoil := 1
} else {
    NoRecoil := 1
} return
PrimaryWeapon2:
SendInput, {%PrimaryWeapon2%}
If LoadoutSwitch {
    NoRecoil := 0
} else {
    NoRecoil := 1
	Switch := False
} return
SideArm:
SendInput, {%SideArm%}
If NoRecoil {
	NoRecoil := SideArmVariable
} return
MeleeWeapon:
SendInput, {%MeleeWeapon%}
If NoRecoil {	
	NoRecoil := false
} return
Throwables:
SendInput, {%Throwables%}
If NoRecoil {	
	NoRecoil := false
} return

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

;Fire
#If NoRecoil
~$*LButton::
yA := yrr[nullA][subKeyA]
yB := yrr[nullB][subKeyB]
cnt := 0
If FreeMode {
	while (GetKeyState("LButton","P")) {
		Sleep, 5
		Click
		if NoRecoil {
			if Switch {
				mouseXY(0, yA)
			} else {
				mouseXY(0, yB)
			
			}
		}
	}
}

mouseXY(dx,dy){
DllCall("mouse_event", "UInt", 0x0001, "UInt", dx, "UInt", dy, "UInt", 0, "UPtr", 0)
} return
#IF

NoRecoilButton:
	if NoRecoil {
		NoRecoil := 0
	ToolTip("NoRecoil OFF")
	} else {
		NoRecoil := 1
	ToolTip("NoRecoil ON")
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
	
FreeModeButton:
    if FreeMode {
        FreeMode := 0
        ToolTip("FreeMode ON")
    } else {
        FreeMode := 1
        ToolTip("FreeMode OFF")
    } return

ToolTip(Text) {
activeMonitorInfo(X, Y, Width, Height)
xPos := Width / 2 - 50
yPos := Height / 2 + (Height / 10)
ToolTip, %Text%, xPos, yPos
SetTimer, RemoveToolTip, 2000
return
RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return
}
activeMonitorInfo( ByRef X, ByRef Y, ByRef Width,  ByRef  Height  ) {
CoordMode, Mouse, Screen
MouseGetPos, mouseX , mouseY
SysGet, monCount, MonitorCount
Loop %monCount% {
	SysGet, curMon, Monitor, %a_index%
	if ( mouseX >= curMonLeft and mouseX <= curMonRight and mouseY >= curMonTop and mouseY <= curMonBottom ) {
		X      := curMonTop
		y      := curMonLeft
		Height := curMonBottom - curMonTop
		Width  := curMonRight  - curMonLeft
		return
	}
}
}


;SAVE CURRENT VALUE
SaveTheKey:
yy11 := yrr.CK1.K1, yy21 := yrr.CK1.K2, yy31 := yrr.CK1.K3, yy41 := yrr.CK1.K4
yy12 := yrr.CK2.K1, yy22 := yrr.CK2.K2, yy32 := yrr.CK2.K3, yy42 := yrr.CK2.K4
yy13 := yrr.CK3.K1, yy23 := yrr.CK3.K2, yy33 := yrr.CK3.K3, yy43 := yrr.CK3.K4
yy14 := yrr.CK4.K1, yy24 := yrr.CK4.K2, yy34 := yrr.CK4.K3, yy44 := yrr.CK4.K4
yy15 := yrr.CK5.K1, yy25 := yrr.CK5.K2, yy35 := yrr.CK5.K3, yy45 := yrr.CK5.K4
yy16 := yrr.CK6.K1, yy26 := yrr.CK6.K2, yy36 := yrr.CK6.K3, yy46 := yrr.CK6.K4
yy17 := yrr.CK7.K1, yy27 := yrr.CK7.K2, yy37 := yrr.CK7.K3, yy47 := yrr.CK7.K4
yy18 := yrr.CK8.K1, yy28 := yrr.CK8.K2, yy38 := yrr.CK8.K3, yy48 := yrr.CK8.K4
yy19 := yrr.CK9.K1, yy29 := yrr.CK9.K2, yy39 := yrr.CK9.K3, yy49 := yrr.CK9.K4
FileDelete, values.ini
IniWrite, % yy11, values.ini, M16A4, Ironsight
IniWrite, % yy21, values.ini, M16A4, Holo
IniWrite, % yy31, values.ini, M16A4, 2x
IniWrite, % yy41, values.ini, M16A4, 4x
FileAppend, `n, values.ini
IniWrite, % yy12, values.ini, M416, Ironsight
IniWrite, % yy22, values.ini, M416, Holo
IniWrite, % yy32, values.ini, M416, 2x
IniWrite, % yy42, values.ini, M416, 4x
FileAppend, `n, values.ini
IniWrite, % yy13, values.ini, SCAR-L, Ironsight
IniWrite, % yy23, values.ini, SCAR-L, Holo
IniWrite, % yy33, values.ini, SCAR-L, 2x
IniWrite, % yy43, values.ini, SCAR-L, 4x
FileAppend, `n, values.ini
IniWrite, % yy14, values.ini, AKM, Ironsight
IniWrite, % yy24, values.ini, AKM, Holo
IniWrite, % yy34, values.ini, AKM, 2x
IniWrite, % yy44, values.ini, AKM, 4x
FileAppend, `n, values.ini
IniWrite, % yy15, values.ini, Mini14, Ironsight
IniWrite, % yy25, values.ini, Mini14, Holo
IniWrite, % yy35, values.ini, Mini14, 2x
IniWrite, % yy45, values.ini, Mini14, 4x
FileAppend, `n, values.ini
IniWrite, % yy16, values.ini, SKS, Ironsight
IniWrite, % yy26, values.ini, SKS, Holo
IniWrite, % yy36, values.ini, SKS, 2x
IniWrite, % yy46, values.ini, SKS, 4x
FileAppend, `n, values.ini
IniWrite, % yy17, values.ini, UMP9, Ironsight
IniWrite, % yy27, values.ini, UMP9, Holo
IniWrite, % yy37, values.ini, UMP9, 2x
IniWrite, % yy47, values.ini, UMP9, 4x
FileAppend, `n, values.ini
IniWrite, % yy18, values.ini, Vector, Ironsight
IniWrite, % yy28, values.ini, Vector, Holo
IniWrite, % yy38, values.ini, Vector, 2x
IniWrite, % yy48, values.ini, Vector, 4x
FileAppend, `n, values.ini
IniWrite, % yy19, values.ini, Groza, Ironsight
IniWrite, % yy29, values.ini, Groza, Holo
IniWrite, % yy39, values.ini, Groza, 2x
IniWrite, % yy49, values.ini, Groza, 4x
If Switch {
	FormatTime, CurrentDate,, dd/MM/yy
	FormatTime, CurrentTime,, HH:mm
	ToolTip("[" name%nullA% "] : [" name%subKeyA% "] = (" yrr[nullA][subKeyA] ") SAVED")
	FileAppend, % "[" name%nullA% "]:[" name%subKeyA% "] = (" yrr[nullA][subKeyA] ")  @ " CurrentTime " (" CurrentDate ")`n", SavedHistory.txt
} else {
	FormatTime, CurrentDate,, dd/MM/yy
	FormatTime, CurrentTime,, HH:mm
	ToolTip("[" name%nullB% "] : [" name%subKeyB% "] = (" yrr[nullB][subKeyB] ") SAVED")
	FileAppend, % "[" name%nullB% "]:[" name%subKeyB%  "] = (" yrr[nullB][subKeyB] ")  @ " CurrentTime " (" CurrentDate ")`n", SavedHistory.txt
} return

F9::
ComObjCreate("SAPI.SpVoice").Speak("exit")
Exitapp
return