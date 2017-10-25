
; PUBG Helper by FxOxAxD [Ver: 0.95]
ToolTip("PUBG Helper by FxOxAxD [Ver: 0.95]")

;#########################
;#     Configuration     #
;#########################
#NoEnv ; Improves performance and compatibility with future AHK updates.
#SingleInstance force ; It allows to run only one at the same time.
SetTitleMatchMode, 2 ; Matching for window title.
#ifwinactive, PLAYERUNKNOWN'S BATTLEGROUNDS ; enabled only when in PUBG.

;#####################
;#     Variables     #
;#####################
isMouseShown() ; To suspend script when mouse is visible.

ADS = 0 ; Var for fast aiming.
CrouchJump = 1 ; Var for crouch when jumping.
AutoFire = 0 ; Var for autofiring.
Compensation = 1 ; Var for compensation when autofiring.
compVal = 8 ; Compensation value. (Default: 8, optimal for short/mid range)

;########################################
;#     Suspends if mouse is visible     #
;########################################


isMouseShown() ; It suspends the script when mouse is visible (map, inventory, menu).
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
  if isMouseShown() ==1
    Suspend On
  else
    Suspend Off
    Sleep 1
}


;#######################
;#     Fast Aiming     #
;#######################

*RButton:: ; Fast Aiming
if ADS = 1
{ ; If enabled, clicks once and clicks again when button is released.
  SendInput {RButton}
  SendInput {RButton Down}
  KeyWait, RButton
  SendInput {RButton Up}
} else { ; If not, just keeps holding until button is released.
  SendInput {RButton Down}
  KeyWait, RButton
  SendInput {RButton Up}
}
Return

;######################
;#     CrouchJump     #
;######################
*$Space::
if CrouchJump = 1
{
  KeyWait, Space, T0.08
  If ErrorLevel = 1  ; If Space is holding then jumps and crouch.
  {
    SendInput {Space}{c down}
    Sleep 500 ; And keeps crouching 0.5 seconds to improve the jump.
    SendInput {c up}
  } else { ; Else just jumps.
    SendInput {Space}
  }
} else
  SendInput {Space}
Return

;####################
;#     AutoFire     #
;####################
~$*LButton:: ; AutoFire
If GetKeyState("RButton") ; Only works while holding aim (so you'll be able to throw grenades)
{
  if (AutoFire = 1 || Compensation = 1)
  {
  	Loop ; If AutoFire or Compensation are activated loops this section.
      {
        Sleep 1
      	GetKeyState, LButton, LButton, P
      	if LButton = U ; If Left Click is released then breaks the loop.
      		Break
          If AutoFire = 1 ; If enabled keeps clicking.
        	  MouseClick, Left,,, 1
          if Compensation = 1 ; If enabled, call to Compensation.
            mouseXY(0, compVal)
        ; Gosub, RandomSleep ; Call to RandomSleep. (Currently unstable)
        Sleep 25
      }
  }
}
Return
RandomSleep: ; Random timing between clicks, just in case.
  Random, random, 14, 25
  Sleep %random%-5
Return




;########################
;#     Compensation     #
;########################

mouseXY(x,y) ; Moves the mouse down to compensate recoil (value in compVal var).
{
  DllCall("mouse_event",uint,1,int,x,int,y,uint,0,int,0)
}

;###################
;#     ToolTip     #
;###################

ToolTip(Text) ; Function to show a tooltip when activating, deactivating or changing values.
{
  activeMonitorInfo(X, Y, Width, Height) ; Get current resolution
  xPos := Width / 2 - 50
  yPos := Height / 2 + (Height / 10)

  ToolTip, %Text%, xPos, yPos ; Tooltips are shown under crosshair.
  SetTimer, RemoveToolTip, 1300 ; Removes tooltip after 1.3 seconds.
  return
  RemoveToolTip:
  SetTimer, RemoveToolTip, Off
  ToolTip
  Return
}

/*
ToolTip(Text, Color) {
  activeMonitorInfo(X, Y, Width, Height) ; Get current resolution
  xPos := Width / 2 - 30
  yPos := Height / 2 + (Height / 10)
;SoundPlay, *64  ; Simple beep. If the sound card is not available, the sound is generated using the speaker.
  CustomColor = EEAA99
  Gui +LastFound +AlwaysOnTop -Caption +ToolWindow
  Gui, Color, %CustomColor%
  Gui, Font, s16, Arial
  Gui, Add, Text, c%Color% , %Text%
  WinSet, TransColor, %CustomColor%
  Gui, Show, x%xPos% y%yPos% NoActivate
  Sleep, 600
  Gui, Destroy
  Return
}
*/

;####################################
;#     Hotkeys to change values     #
;####################################

; Toggles
Pause::
	Suspend
	if (A_IsSuspended)
  {
		ToolTip("SCRIPT OFF")
	} else
		ToolTip("SCRIPT ON")
return
*XButton2::( ADS = 0 ? (ADS := 1,ToolTip("ADS ON")) : (ADS := 0,ToolTip("ADS OFF")) ) ; ADS Toggle
*NumPadDot::( Compensation = 0 ? (Compensation := 1,ToolTip("Compensation ON")) : (Compensation := 0,ToolTip("Compensation OFF")) ) ; Compensation Toggle
*NumPad0::( CrouchJump = 0 ? (CrouchJump := 1,ToolTip("CrouchJump ON")) : (CrouchJump := 0,ToolTip("CrouchJump OFF")) ) ; CrouchJump Toggle

~CapsLock:: ; AutoFire Toggle
if (GetKeyState("CapsLock","t")=0)
{
  AutoFire = 0
  ToolTip("AutoFire OFF")
} else if (GetKeyState("CapsLock","t")=1) {
  AutoFire = 1
  ToolTip("AutoFire ON")
}
Return

*NumpadAdd:: ; Adds compensation.
  compVal := compVal + 2
  ToolTip("Compensation " . compVal)
Return

*NumpadSub:: ; Substracts compensation.
if compVal > 0
{
  compVal := compVal - 2
  ToolTip("Compensation " . compVal)
}
Return

;##########################
;#     Get Resolution     #
;##########################

activeMonitorInfo( ByRef X, ByRef Y, ByRef Width,  ByRef  Height  )
{ ; Retrieves the size of the monitor, the mouse is on

	CoordMode, Mouse, Screen
	MouseGetPos, mouseX , mouseY
	SysGet, monCount, MonitorCount
	Loop %monCount%
    { 	SysGet, curMon, Monitor, %a_index%
        if ( mouseX >= curMonLeft and mouseX <= curMonRight and mouseY >= curMonTop and mouseY <= curMonBottom )
            {
				X      := curMonTop
				y      := curMonLeft
				Height := curMonBottom - curMonTop
				Width  := curMonRight  - curMonLeft
				return
			}
    }
}
