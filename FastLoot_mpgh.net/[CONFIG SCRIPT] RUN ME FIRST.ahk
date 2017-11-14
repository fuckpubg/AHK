#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force ;It allows to run only one at the same time.
SetTitleMatchMode, 2 ;Matching for window title.
#ifwinactive, PLAYERUNKNOWN'S BATTLEGROUNDS ;Active only when in PUBG.

up_item_posX := 200
up_item_posY := 200
up2_item_posX := 300
up2_item_posY := 300
down_item_posX := 400
down_item_posY := 400
down2_item_posX := 500
down2_item_posY := 500
inv_posX := 600
inv_posY := 600


Loop{
	ToolTip, Item 1 -> key: numpad1, up_item_posX, up_item_posY,1
	sleep 500
	ToolTip, Item 2 -> key: numpad2, up2_item_posX, up2_item_posY,2
	sleep 500
	ToolTip, Item 3 -> key: numpad3, down_item_posX, down_item_posY,3
	sleep 500
	ToolTip, Item 4 -> key: numpad4, down2_item_posX, down2_item_posY,4
	sleep 500
	ToolTip, Inventory -> key: numpad5, inv_posX, inv_posY,5
	sleep 500
}

*NumPad1::
	MouseGetPos, xpos, ypos 
	up_item_posX = %xpos%
	up_item_posY = %ypos%
	IniWrite, %up_item_posX%, config.ini, Coordinates, up_item_posX
	IniWrite, %up_item_posY%, config.ini, Coordinates, up_item_posY
	ToolTip, Item 1 -> key: numpad1, up_item_posX, up_item_posY,1
return
*NumPad2::
	MouseGetPos, xpos, ypos 
	up2_item_posX = %xpos%
	up2_item_posY = %ypos%
	IniWrite, %up2_item_posX%, config.ini, Coordinates, up2_item_posX
	IniWrite, %up2_item_posY%, config.ini, Coordinates, up2_item_posY
	ToolTip, Item 2 -> key: numpad2, up2_item_posX, up2_item_posY,2
return
*NumPad3::
	MouseGetPos, xpos, ypos 
	down_item_posX = %xpos%
	down_item_posY = %ypos%
	IniWrite, %down_item_posX%, config.ini, Coordinates, down_item_posX
	IniWrite, %down_item_posY%, config.ini, Coordinates, down_item_posY
	ToolTip, Item 3 -> key: numpad3, down_item_posX, down_item_posY,3
return
*NumPad4::
	MouseGetPos, xpos, ypos 
	down2_item_posX = %xpos%
	down2_item_posY = %ypos%
	IniWrite, %down2_item_posX%, config.ini, Coordinates, down2_item_posX
	IniWrite, %down2_item_posY%, config.ini, Coordinates, down2_item_posY
	ToolTip, Item 4 -> key: numpad4, down2_item_posX, down2_item_posY,4
return
*NumPad5::
	MouseGetPos, xpos, ypos 
	inv_posX = %xpos%
	inv_posY = %ypos%
	IniWrite, %inv_posX%, config.ini, Coordinates, inv_posX
	IniWrite, %inv_posY%, config.ini, Coordinates, inv_posY
	ToolTip, Inventory -> key: numpad5, inv_posX, inv_posY,5
return

*Del::
	ToolTip,Script Configured,500,500,6
	Sleep 2000
	ExitApp
return