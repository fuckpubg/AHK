#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force ;It allows to run only one at the same time.
SetTitleMatchMode, 2 ;Matching for window title.
#ifwinactive, PLAYERUNKNOWN'S BATTLEGROUNDS ;Active only when in PUBG.

IniRead up_item_posX, config.ini, Coordinates, up_item_posX
IniRead up_item_posY, config.ini, Coordinates, up_item_posY
IniRead up2_item_posX, config.ini, Coordinates, up2_item_posX
IniRead up2_item_posY, config.ini, Coordinates, up2_item_posY
IniRead down_item_posX, config.ini, Coordinates, down_item_posX
IniRead down_item_posY, config.ini, Coordinates, down_item_posY
IniRead down2_item_posX, config.ini, Coordinates, down2_item_posX
IniRead down2_item_posY, config.ini, Coordinates, down2_item_posY
IniRead inv_posX, config.ini, Coordinates, inv_posX
IniRead inv_posY, config.ini, Coordinates, inv_posY

;#####################
;#     Fast Loot     #
;#####################

~V:: ; Change your hotkey here
	if (isMouseShown() == true)
	{
		Sleep 1
		MouseClickDrag, Left,up_item_posX, up_item_posY, inv_posX, inv_posY , 0
		Sleep 1
		MouseClickDrag, Left, up2_item_posX, up2_item_posY, inv_posX, inv_posY , 0
		Sleep 1
		MouseClickDrag, Left, down_item_posX, down_item_posY, inv_posX, inv_posY , 0
		Sleep 1
		MouseClickDrag, Left, down2_item_posX, down2_item_posY, inv_posX, inv_posY , 0
		Sleep 1
	}
return

isMouseShown()
{
	StructSize := A_PtrSize + 16
	VarSetCapacity(InfoStruct, StructSize)
	NumPut(StructSize, InfoStruct)
	DllCall("GetCursorInfo", UInt, &InfoStruct)
	Result := NumGet(InfoStruct, 8)
	if Result > 1
		Return true
	else
		Return false
}