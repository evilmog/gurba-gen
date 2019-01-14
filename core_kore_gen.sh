#!/usr/bin/env bash
python core_room.py --area south --name "x100y-210z0" --short "Section:  East End" --long "This is the eastern side of housing dome #3. The sight of the people relaxing and enjoying themselves beckons you back west. " --west 10 --east 7 --aeast kore
python core_room.py --area kore --name "x170y-210z0" --short "KORE West Transit" --long "This is the mass transit area at the west side of the KORE Radio dome.\n\n%^CYAN%^West: South Housing Dome\n%^CYAN%^East: KORE Dome Center\n%^RESET%^" --west 7 --awest south --east 4
python core_room.py --area kore --name "x210y-210z0" --short "KORE Central Transit" --long "%^RED%^      K  K   OOO    RRR    EEEE\n      K K   O   O   R  R   E\n      KK    O 0 O   RRR    EE\n      K K   O   O   R  R   E\n      K  K   OOO    R  R   EEEE\n      %^YELLOW%^*************************%^RESET%^\n         %^MAGENTA%^Tune in at 2655 mhz%^RESET%^\n\nYou are in the KORE Radio Station Dome, center transit. The dome is painted with a mix of white and bright blue. The word 'KORE' seems to be inscribed on almost every surface.\nA sign reads:\n%^BOLD%^   North:     East Housing\n   West:      South Housing\n   Southeast: KJ Booth and Guest Room\n   Northwest: Offices\n   Northeast: Television Studio\nThere also appears to be a secluded storage closet off to the southwest." --west 4 --north 4 --southwest 1 --northwest 1 --northeast 1 --southeast 1
python core_room.py --area kore --name "x210y-170z0" --short "KORE North Transit" --long "This is the mass transit area at the north side of the KORE Radio dome.\n\n%^BOLD%^South: KORE Dome Center%^RESET%^\n" --south 4 --north 7 --anorth east
python core_room.py --area kore --name "x220y-200z0" --short "Lobby" --long "You have entered a well-lit quiet room.  Numerous chairs and small couches are set about the room in a very orderly manner.  In the northeast corner of the room sits a small desk with a smiling liktah secretary behind it. In the north wall is a door with a sign next to it reading, 'Employees only'." --southwest 1 --north 1
python core_room.py --area kore --name "x200y-220z0" --short "KORE maintenance closet." --long "A small storage closet used for cleaning supplies and minor maintenance functions.  It is quite dusty in there, so it looks like nobody's been in here since the aftermath of the cruise missile accident of June 2649.\n\nThere's a clunky old turbolift in the corner that leads down to an additional storage area." --northeast 1 --down 1 --mon1 koretech
python core_room.py --area kore --name "x200y-220z-10" --short "Seldom Used Storeroom" --long "You are standing in a dirty and damp storeroom, illuminated by a solitary bulb.  Shadows are cast about the room but you can see that this must be a storeroom for useless junk. The walls are smooth and plain except for the east wall which has a small access panel.  Next to the panel, the control module has been opened and wires protrude like spaghetti.\n\nA clunky old turbolift leads up to the storage closet." --along "You are standing in a dirty and damp storeroom, illuminated by a solitary bulb.  Shadows are cast about the room but you can see that this must be a storeroom for useless junk. The walls are smooth and plain except for the east wall which has a small access panel.  The access panel is standing open and you can see a narrow hallway leading off to the east.\n\nA clunky old turbolift leads up to the storage closet." --east 1
python core_room.py --area kore --name "x210y-220z-10" --short "A Forgotten Corridor" --long "This corridor has a layer of dust and dirt on its floor. There is a dampness in the air and you swear you can smell the faint odor of pine needles from the east. There is an access panel back to the west that looks almost like it may be operational. \n\nA half-hidden path leads roughly south to a small alcove." --west 1 --east 1 --south 1
python core_room.py --area kore --name "x210y-230z-10" --short "Atrium Alcove" --long "Somehow a small portion of the larger atrium to the east was split off, resulting in this cozy alcove. There is a large tangle of growth to the east which makes passage to the main atrium impossible. \n\n     There is an odd pile of rocks here, shaped like a large chair or throne, that may be covering a hole of some sort.  You might be able to squeeze through." --north 1
python core_room.py --area weevil --name "x210y-270z-10" --short "Secret Passage" --long "There is a hole in the ceiling you can enter to go back to the hidden atrium. It looks tough to climb though. An odd space on the wall looks slime free. There are rice crumbs and slime trails heading east. " --east 1 --mon1 smallweevil --mon2 weevil
python core_room.py --area weevil --name "x220y-270z-10" --short "Hidden Passage" --long "The stench of slime fills the room. The hallway here is narrower than the entrance of this small cave, but appears to open up further to the east. The walls are coated with slime and pock marks.  Stalactites cover the ceiling like sharp spikes ready to fall on you.  The ground is completely uneven in this area, causing the pools of slime to form at odd angles and crevices. " --west 1 --east 1 --mon1 smallweevil --mon2 smallweevil --mon3 smallweevil --mon4 weevil
python core_room.py --area weevil --name "x230y-270z-10" --short "Hidden Passage" --long "Slime saturates the walls and the floor heavily here. There appears to be several worm markings from weevils. The hallway closes together a little, making it hard to traverse through.  You can go back to the west, or trudge on further east. " --west 1 --east 1 --mon1 angryweevil --mon2 angryweevil
python core_room.py --area weevil --name "x240y-270z-10" --short "Hidden Passage" --long "The slime on the wall continues to thicken as you travel in the passage. The passage curves to the south here, but there is a small barely noticeable passage to the north..  You hear a moaning sound in the distance. Although the walls open up more here, it's still not wide enough for complete comfort for most individuals. " --west 1 --south 1 --north 1 --mon1 tinyweevil --mon2 tinyweevil --mon3 greenslime --mon4 greenslime --mon5 greenslime --mon6 greenslime
python core_room.py --area weevil --name "x240y-260z-10" --short "Abandoned Storage Room" --long "This is an empty storage room, that would house tons of items.  It would appear that only small mutated cockroaches are here now.  There are chains laying all over the ground.  You gaze up reluctantly to the ceiling and notice that there is barely any light in this room, air is blowing from some kind of hole, but it's rather small. " --south 1 --mon1 mutatedcockroach --mon2 mutatedcockroach --mon3 mutatedcockroach --mon4 mutatedcockroach --mon5 mutatedcockroach --mon6 mutatedcockroach --mon7 mutatedcockroach --mon8 mutatedcockroach --mon9 mutatedcockroach --mon10 mutatedcockroach --mon11 mutatedcockroach --mon12 mutatedcockroach
python core_room.py --area weevil --name "x240y-280z-10" --short "Hidden Passage" --long "The hallway opens up wider here. There are noticeable footprints scattered about the slime on the floor.  There appears to be more rice crumbs everywhere.  There is a strange glow on the floor of the cave here. It appears to be covered with toxic sludge. You notice a large mark on the wall.  Perhaps if you take a closer look at the mark, you might be able to see what made it. " --south 1 --north 1 --mon1 tinyweevil --mon2 greenslime --mon3 weevil --mon4 deformedweevil --item1 mark --item1desc "There is a large claw mark on the wall.  It looks completely unnatural."
python core_room.py --area weevil --name "x240y-290z-10" --short "Hidden Passage" --long "The tunnel curves west and north here.  Slime and toxic sludge mix to form a very bright glowing green waste.  You notice a laser drill on the ground.. well, what's left of it.  The parts left don't look useful, but they still spark slightly.  Some stalactites have formed on the ceiling. " --west 1 --north 1 --mon1 deeformedweebil --mon2 tinyweevil --mon3 tinyweevil --mon4 tinyweevil --mon5 tinyweevil --mon6 deformedweevil --mon7 weevil --mon8 greenslime --item1 ground --item1desc "You search the ground, and only find scraps and tidbits of what use to be a laser drill. "
python core_room.py --area weevil --name "x230y-290z-10" --short "Hidden Passage" --long "This passage opens up to a wide steel door that is stuck almost closed. There is a huge empty clearing, where some sort of storage containers may have sat.  You notice parts of rods cluttering the floor.  The slime and sludge is relatively thick in large puddles. " --west 1 --east 1 --mon1 culprit
python core_room.py --area weevil --name "x220y-290z-10" --short "Entrance to Secret dump site" --long "The room feels funny, and smells odd. You notice a sturdy door that is almost closed, but stuck.  Some sort of sticky slime is all over the place here, leading into the room behind the door. You see a sign saying that the cylindrical rods have been moved to the Reactor storeroom.  You hear scraping noises somewhere close. " --east 1 --mon1 massiveweevil --mon2 massiveweevil --mon3 massiveweevil --item1 door --item1desc "You look at the broken door, and wonder how it got stuck, but there is enough room to fit something against it and pry it open. "
