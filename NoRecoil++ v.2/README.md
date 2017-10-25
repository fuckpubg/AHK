INSTALLATION (Links Included)

If you don't have AutoHotkey installed in your computer then make sure to install it
Also get the AutoHotkey script editor if you can, talking about the "SciTE4AutoHotkey"
SciTE4AutoHotkey: https://fincs.ahk4.net/scite4ahk/
The script is gonna work as long as you're in the game

Make sure...

    your secondary hotkeys are correctly setup (found in the video)
    you have your game on Windowed Borderless or Windowed Fullscreen screen mode
    your NumLock is off



Do, Don't and Why...

Do use 1,2,3,4,5 for scrolling through all the weapons
Don't use Mouse Wheel to scroll through all the weapons you have
Why? Because the script is written so that if you pull out your melee or side arm or throwable the script is not going to interfere or cause any unnecessary mouse movement or clicks.


Crouch Jump
{Numpad 0}
Hold Shift and press Space to make the jump.

Fire
{Numpad 1}
When it's activated, your gun shoots bullets.

No Recoil
{Numpad 2}
If Fire is activated then you're good to go.
When it's activated, it moves the mouse cursor down to reduce recoil.

Timing
{Numpad 3}
Adjustable mouse delay. Toggle between random delay and constant delay.

ADS
{Numpad 4}
Hold right click instead of tapping it.

Selective Fire
{K}
Toggle between AUTO Fire and RAPID Fire modes.
AUTO Fire
is a firing mode enabling the shooter to fire a continuous number of rounds as long as the LClick is held.
RAPID Fire comes with an adjustable fire rate or number of rounds
is a firing mode enabling the shooter to fire a predetermined number of rounds, with a single LClick tap.

AR with SR
{F1}
For weapons in the 1st slot {1} the script runs (eg. AKM, M416...)
For weapons in the 2nd slot {2} the script stops (eg. Kar98, M24, S686...)

AR with AR
{F2}
For weapons in the 1st and 2nd slot {1}, {2} the script runs (eg. AKM, M416, TommyGun, MicroUZI...)

NoRecoil value hotkeys:

    Numpad5 = Ironsight (dyKey1)
    Numpad6 = RDD or Holographic (dyKey2)
    Numpad7 = 2x Scope (dyKey3)
    Numpad8 = 4x Scope (dyKey4)
    Numpad9 = 8x Scope (dyKey5)
    NumpadDivide(/) = CustomGun1 "MicroUZI" (dyCustomKey1)
    NumpadMultiply(*) = CustomGun2 "TommyGun" (dyCustomKey2)



!!! If you want to change the name then it can be found at the top part of my code, under the ;NAME YOUR KEYS comment !!!

RAPID Fire rate of fire hotkeys:

    arrowLeft = ClipSize1
    arrowRight = ClipSize2



Increments:

for NoRecoil values:

    arrowUp = add
    arrowDown = subtract


for RAPID Fire values:

    Numpad+ = add
    Numpad- = subtract



Saving the values:

    RShift + Numpad 5 (for saving the ironsight recoil value)
    RShift + Numpad 6 (for saving the holographic recoil value)
    RShift + Numpad 7 (for saving the 2x recoil value)
    RShift + Numpad 8 (for saving the 4x recoil value)
    RShift + Numpad 9 (for saving the 8x recoil value)
    RShift + NumpadDivide (for saving the CustomGun1 recoil value)
    RShift + NumpadMultiply (for saving the CustomGun2 recoil value)
    RShift + LeftArrow (for saving the ClipSize1 value)
    RShift + RightArrow (for saving the ClipSize2 value)



Enjoy,
Class1