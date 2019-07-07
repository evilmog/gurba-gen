#!/bin/bash
python core_room.py --area prison --name "x210y170z0" --short "CITY Detention Center - South Transit" --long "You have entered the CITY Detention Center for dangerous individuals.  The surgical steel of this corridor is kept spotless by around-the-clock surveillance and cleaning droids, while a large green stripe runs down the center of the corridor, heading towards the main bulk of the quad.  Two large Vaurgch guards stand at their posts here to prevent any unauthorized entry into the facility." --asouth east --south 7 --north 4 --mon1 prisonguard --mon2 prisonguard
python core_room.py --area prison --name "x210y210z0" --short "City Detention Center" --long "This is a hallway in the Detention Center bordering the detention cells.  A series of force field generators outlines the border between the hallway and the cells themselves.  The hallway continues to the west.  If you're not incarcerated here, you can enter the prison cells to the east and visit an inmate if you want.  The security in the cells is top-notch, so there's no danger. " --west 3 --east 4 --north 4 --south 4 --northeast 1 --southwest 1 --northwest 1
python core_room.py --area prison --name "x250y210z0" --short "CITY Detention Center - East Transit" --long "You have entered the CITY Detention Center for dangerous individuals. The surgical steel of this corridor is kept spotless by around-the- clock surveillance and cleaning droids, while a large green stripe runs down the center of the corridor, heading towards the main bulk of the quad.  Two large Vaurgch guards stand at their posts here to prevent any unauthorized entry into the facility. " --west 4 --mon1 prisonguard --mon2 prisonguard
python core_room.py --area prison --name "x210y250z0" --short "CITY Detention Center - North Transit" --long "You have entered the CITY Detention Center for dangerous individuals. The surgical steel of this corridor is kept spotless by around-the- clock surveillance and cleaning droids, while a large green stripe runs down the center of the corridor, heading towards the main bulk of the quad.  Two large Vaurgch guards stand at their posts here to prevent any unauthorized entry into the facility. " --south 4 --mon1 prisonguard --mon2 prisonguard
python core_room.py --area prison --name "x180y210z0" --short "Detention Center - West Transit" --long "This is the transit center entering the Detention Center.  Cold steel greets you at every turn as the guards pat you down for concealed weapons or contraband before allowing you to continue onwards from this point.  The panel west of here leads back towards the CITY proper Two large Vaurgch guards stand at their posts here to prevent any unauthorized entry into the facility.  A small poster has been placed on the wall. " --west 1 --east 3
python core_room.py --area prison --name "x170y210z0" --short "CITY Detention Center - Entrance" --long "You have entered the CITY Detention Center for dangerous individuals. The surgical steel of this corridor is kept spotless by around-the- clock surveillance and cleaning droids, while a large green stripe runs down the center of the corridor, heading towards the main bulk of the quad.  Two large Vaurgch guards stand at their posts here to prevent any unauthorized entry into the facility.  There's an old turbo-lift leading down into the bowels of the CITY dome in this room as well. " --west 7 --awest north --southeast 1 --east 1 --down 1 --adown prisonbasement
python core_room.py --area prison --name "x180y200z0" --short "CSCC security area" --long "This is a large room, that is fashioned as a lobby of some sort. There is one large desk with a huge chair behind it.  There are two doors one to the northwest, and one to the south. This room has minimum lighting, enough to see well.  The floor is of dark blue tile, interlocked in such a way where a large CSCC in bright red appears in the center of the floor right in front of the desk.  Company logos are also along the walls in different languages." --south 1 --northwest 1 --mon1 cscccaptain --mon2 csccagent --mon3 csccagent
python core_room.py --area prison --name "x180y190z0" --short "CSCC head operations office" --long "This is the CSCC head operations office, for closed or working on cases. The room has just enough light to see without any problems.  There is a CSCC logo on a black desk in this office that sits infront of a rather large Abernon.  Four rather large and protective CSCC agents stand guard at the door.  There is a case with a shotgun in it in the wall behind the desk, and a large computer terminal against the south side of the wall. " --north 1 --mon1 csccagent --mon2 csccagent --mon3 csccagent --mon4 csccagent --mon5 varysstark
python core_room.py --area prison --name "x200y200z0" --short "CITY Detention Center -  Main Hall" --long "This is the maximum security wing of the Detention Center. From this point on, only Enforcement and the worst of the lot of criminals in the CITY will be found.  The hallway darkens as it leads southwest, while the Detention Center central hub is located back to the northeast. " --southwest 1 --northeast 1
python core_room.py --area prison --name "x200y220z0" --short "CITY Detention Center - Hallway" --long "This quiet hallway is a bit dim compared to the rest of the Detention Center.  A bit further up the corridor some loud laughter can be heard, while an almost chilling aura seems to emanate from another room down the hall. " --west 1 --southeast 1
python core_room.py --area prison --name "x190y220z0" --short "CITY Detention Center - Hallway" --long "You are in a hallway within the CITY Detention Center.  This hallway runs through the center of the dome, with the detention cells lying just a ways to the east.  A dark and forboding room is due north of your current position.  A warning label is posted on the north door. West leads towards a loud room, while east takes you back towards the central hub. " --item1 label --item1desc "The label reads %^CYAN%^BOLD%^INTERROGATION ROOM - NO UNAUTHORIZED PERSONNEL%^RESET%^" --north 1 --west 1 --east 1
python core_room.py --area prison --name "x180y220z0" --short "CITY Detention Center -  Sub-Hallway" --long "This is a sub-hallway away from the normal hub of the Detention center.  To the north lies the Enforcement Officer break room, off-limits to non-Enforcement.  The hallway heads back to the east towards the dome exit and the foreboding interrogation room. " --north 1 --east 1
python core_room.py --area prison --name "x220y220z0" --short "CITY Detention Center - Hallway" --long "This is a hallway in the Detention Center bordering the detention cells.  A series of force field generators outlines the border between the hallway and the cells themselves.  Prison Director Brocke's office is a bit north of here, while the hallway continues to the west.  If you're not incarcerated here, you can enter the prison cells to the east and visit an inmate if you want.  The security in the cells is top-notch, so there's no danger. " --southwest 1 --northeast 1 --north 1 --east 1
python core_room.py --area prison --name "x220y230z0" --short "CITY Detention Center - Hallway" --long "This is a hallway in the Detention Center bordering the detention cells.  A series of force field generators outlines the border between the hallway and the cells themselves.  Prison Director Brocke's office is a bit north of here, while the hallway continues to the south.  If you're not incarcerated here, you can enter the prison cells to the east and visit an inmate if you want.  The security in the cells is top-notch, so there's no danger. " --southeast 1 --south 1 --north 1 --east 1
python core_room.py --area prison --name "x220y240z0" --short "CITY Detention Center - Hallway" --long "This is a hallway in the Detention Center bordering the detention cells.  A series of force field generators outlines the border between the hallway and the cells themselves.  Prison Director Brocke's office is due east of here, while the hallway continues to the south. " --southeast 1 --south 1 --east 1
python core_room.py --area prison --name "x230y240z0" --short "Warden Brocke's Office" --long "This is the office of the Detention Center Warden, Warden Brocke. Brocke sits behind a solid oak desk, resting back in his leather chair, sifting through paperwork as you enter.  Several awards and certifications line the walls of the office, as well as pictures of several family members. " --west 1 --mon1 wardenbrocke
python core_room.py --area prison --name "x230y230z0" --short "CITY Detention Center - Holding Cell" --long "You are in a cell in the CITY Detention Center.  The new cells allow the prisoners to intermingle within a single area that holds all guilty individuals.  You're free to roam within the containment area to your heart's content.  Just don't expect to waltz out if you're being held here." --west 1 --southwest 1 --southeast 1 --south 1 --northwest 1 --east 1 --mon1 prisonfreddie --mon2 cellguard
python core_room.py --area prison --name "x230y220z0" --short "CITY Detention Center - Holding Cell" --long "You are in a cell in the CITY Detention Center.  The new cells allow the prisoners to intermingle within a single area that holds all guilty individuals.  You're free to roam within the containment area to your heart's content.  Just don't expect to waltz out if you're being held here. " --west 1 --northwest 1 --northeast 1 --north 1 --east 1
python core_room.py --area prison --name "x240y220z0" --short "CITY Detention Center - Holding Cell" --long "You are in a cell in the CITY Detention Center.  The new cells allow the prisoners to intermingle within a single area that holds all guilty individuals.  You're free to roam within the containment area to your heart's content.  Just don't expect to waltz out if you're being held here. \n\n    A somewhat dirty stairway leads down to the showers and the bail panel for those who can afford to pay their way out of here." --west 1 --northwest 1 --north 1 --down 1
python core_room.py --area prison --name "x240y230z0" --short "CITY Detention Center - Holding Cell" --long "You are in a cell in the CITY Detention Center.  The new cells allow the prisoners to intermingle within a single area that holds all guilty individuals.  You're free to roam within the containment area to your heart's content.  Just don't expect to waltz out if you're being held here.  In this corner of the cell block, a few games have been set up to occupy the time of the inhabitants. " --west 1 --southwest 1 --south 1
python core_room.py --area prison --name "x240y220z-10" --short "CITY Detention Center - Holding Cell" --long "This is the holding cell's shower room.  Just be careful not to drop the soap while cleaning yourself up.  The bail panel has been positioned in the small room north of here." --up 1 --north 1
python core_room.py --area prison --name "x240y230z-10" --short "CITY Detention Center - Holding Cell" --long "This small room contains the bail panel for the prison system. Justice being what it is in this day and age, if you can afford pay your way out, you're a free man.  Otherwise, the shower room awaits you. " --south 1
