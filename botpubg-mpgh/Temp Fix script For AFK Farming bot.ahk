;This script auto jumps you out the plane at a random point  after the plane spawns. It will also make you walk forward and fly forward.
;No this isnt a stand alone bot, you can use it with the pythonbot on these forums. No its not the updated python bot i made.
;make sure to edit the config in that python bot otherwise it will exit the game 10 seconds after you enter the "plain" (lol thats how he spell the plane var)

loop {
	sleep 85000
	Random, rand, 46000, 60000
	sleep rand
	Send F
	loop, 5{
		sleep 1000
				{ 
				Send {W down}
				sleep 15000
				Send {W Up}
				}
 
	}
    sleep 34000
}
 
 
Home::
Suspend,Toggle
return