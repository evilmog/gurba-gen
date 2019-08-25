#!/usr/bin/env bash
python core_room.py --area prisonbasement --name "x210y420z-10" --short "Prison Turbolift: Basement Level" --long "This mass-transit station is in the middle of the Prison's basement, two floors down from the first floor. It is a large circular room with many light plates on the ceiling illuminating it. Somewhere nearby you can hear the soft hum of power generators.\n\nA corridor leads to the northwest. There is a turbolift in a far corner of the room which you may use to go up." --up 1 --aup prison --northwest 1
python core_room.py --area prisonbasement --name "x200y430z-10" --short "REACTOR ONE Reception Area." --long "White walls and black floors meet your eyes as you enter the reception area of REACTOR ONE, the Prison's main reactor facility. It is a large well-kept room, furnished only with furniture which is black in color. There is a large reception table in the middle of the room.\n\nTube-like corridors extend to your north and your west, while heading northwest will take you to the reactor decks around REACTOR ONE itself.\n\nThe hatch leading to the Prison turbolift is to the southeast." --item1 table --item1desc "This is a state-of-the-art reception table. It has all the latest quirks in reception table technology which ranges from a hologram communicator to a mini television. Unfortunately, these facilities are only available to the receptionist in charge." --west 1 --northwest 1 --north 1 --southeast 1 --mon1 cyclophant --mon2 cyclophant --mon3 anthonyfox
python core_room.py --area prisonbasement --name "x190y430z-10" --short "Tube Passageway" --long "The round tube-like shape of this corridor gives you the feeling that you're walking in the belly of some metallic snake. And the many wires, pipes and cables which adorn the entire passageway are somewhat reminiscent of all those derelict spaceship horror movies which they used to make back in the twenty first century.\n\nTo your east is the reception area, while the reactor's security center lies to your west." --west 1 --east 1
python core_room.py --area prisonbasement --name "x180y430z-10" --short "REACTOR ONE Security Center" --long "This is the hub of the security system of the reactor, the nerve center where all security measures are taken from and where all emergencies are processed. The walls are covered with monitors which show every single room in the reactor via hidden security cameras. A few consoles which control the security system are scattered all over the room. The cyclophants are usually found here when not on guard duty.\n\nYou may leave by going east." --east 1 --mon1 cyclophant --mon2 cyclophant --mon3 cyclophant --mon4 cyclophant --mon5 cyclophant --mon6 cyclophant
python core_room.py --area prisonbasement --name "x200y440z-10" --short "Tube Passageway" --long "This passageway is circular in shape. Here, the cool and professional image which is constantly reflected by other areas in the Company's domes gives way to an orderly mess of wires and tubes which line the walls and ceilings of this passageway.\n\nThe passageway continues to the north while to the south is the reception area." --south 1 --north 1
python core_room.py --area prisonbasement --name "x200y450z-10" --short "Tube Passageway" --long "Thick cables and pipes adorn the ceiling and floor all around the circular passageway you're in. This tube-like corridor is rather dimly-lit, although the lighting is good enough to see where you're going.\n\nThe passageway extends to your north and to your south. To your west is one of the reactor decks of REACTOR ONE." --west 1 --south 1 --north 1
python core_room.py --area prisonbasement --name "x200y460z-10" --short "Tube Passageway" --long "This long tube-like passageway is lined with a host of wires, cables and pipes. Its unique circular shape reminds you of the mass-transit tubes except for the fact that humans and not tubes travel along these tubes.\n\nThis passage snakes along to the northwest and the south." --south 1 --northwest 1
python core_room.py --area prisonbasement --name "x190y470z-10" --short "Tube Passageway" --long "The circular parameter of this passageway is lined with many wires, cables and pipes which seem to be connected to everywhere. Dimly-lit, your way is illuminated only by the small grace of some thin light plates which have been affixed to the ceiling, walls and floor of this tubelike passage.\n\nTo the north is the coolant storage area. This passageway extends to your southeast." --southeast 1 --north 1 --mon1 bugsy
python core_room.py --area prisonbasement --name "x190y480z-10" --short "Collant Stoage Area" --long "You have entered REACTOR ONE's coolant storage area, the place where cylinders storing coolant fluids to keep the reactor's temperature in check are kept. Two dozen cylinders or so are on the floor, stacked neatly together. Pipes which line the ceiling of the room are fixed to some of these cylinders.\n\nMore coolant storage areas can be accessed east. A corridor leading out is to the south." --south 1 --east 1 --mon1 raddyzoon --mon2 raddyzoon --mon3 raddyzoon --mon4 raddyzoon --mon5 radgoo --mon6 raddgoo --mon7 radgoo
python core_room.py --area prisonbasement --name "x200y480z-10" --short "Coolant Storage Area" --long "You are in a moderately cool room. All around you on the floor are cylinders which are stacked neatly on the floor. You notice pipes which are joined to these cylinders lining the ceiling above you. The floor itself is made of hard cold cement. You can almost feel its solid hardness beneath your feet.\n\nMore coolant storage areas are located to the north, south and west." --west 1 --south 1 --north 1 --mon1 raddyzoon --mon2 raddyzoon --mon3 radgoo --mon4 radgoo --mon5 radgoo
python core_room.py --area prisonbasement --name "x200y470z-10" --short "Cold Coolant Storage Area" --long "It is extremely cold in this room. Unlike the other coolant storage areas, this one seems to have no auto-thermostat system to regulate the temperature. The coolant cylinders sitting around in this room seem to have frost all over them. There are even icicles hanging from the pipes which transfer the coolant fluids to the reactor.\n\nThe exit is to the north." --north 1 --mon1 radgoo --mon2 radgoo --mon3 radgoo --mon4 radgoo --mon5 raddyzoon --mon6 raddyzoon --mon7 raddyzoon
python core_room.py --area prisonbasement --name "x200y490z-10" --short "Very Infested Coolant Storage Area" --long "Oh no! It seems something disgusting has thoroughly taken over this coolant storage area! The cylinders which used to contain the coolant fluids have been broken, spilling the fluids all over the room. The pipes have been wrenched from their joints. Something must have gone about this spree of wilful destruction. The whole room appears to be infested with some sort of gooey stuff!\n\nThe only visible exit is located to the south of the room." --south 1 --mon1 radgoo --mon2 radgoo --mon3 radgoo --mon4 radgoo --mon5 radgoo --mon6 raddyzoon --mon7 raddyzoon --mon8 raddyzoon --mon9 raddyzoon --mon10 raddyzoon --mon11 cyberslime
python core_room.py --area prisonbasement --name "x190y440z-10" --short "Reactor Deck" --long "Just in front of you stand the outer hull of REACTOR ONE. It is huge, towering almost twenty feet into the air and descending to God knows how deep beneath the floor. Its circumference is so big that a few reactor decks like this one has to be built around it so that the reactor personnel can go around it to check its integrity.\n\nOther reactor decks are to your north and west. The reception area lies to the southeast." --west 1 --southeast 1 --north 1 --mon1 cyclophant --mon2 cyclophant --mon3 r1engineer
python core_room.py --area prisonbasement --name "x190y450z-10" --short "Reactor Deck" --long "The reactor deck is brightly lit. The soft purring of the reactor surrounds you completely. The grill floor below is vibrating slightly from the immense amount of power which the reactor is generating. Overhead, huge light plates almost blind you with their intensity. Just next to you is the outer hull of REACTOR ONE.\n\nThe leak control station is to your north. A tube passageway may be accessed by going east, and another reactor deck is to your south." --south 1 --north 1 --east 1 --mon1 r1radiologist --mon2 r1radiologist --mon3 r1serviceman --mon4 r1physicist
python core_room.py --area prisonbasement --name "x190y460z-10" --short "Leak Control Station" --long "The leak control station is the place where the reactor personnel keep constant vigil on the state of the influx and outflux of materials to and from the reactor. You see a mixture of classic reactor technology and new cutting edge equipment which work together to give the best results. A button is on the wall. Gauges, valves and meters can be found alongside digital readouts and computer screens. Truly a place of precision and accuracy.\n\nReactor decks can be reached by going south or west." --west 1 --south 1 --mon1 r1engineer --mon2 r1engineer --mon3 cyclophant --mon4 r1radiologist --mon5 r1serviceman --item1 button --item1desc "a purple button, it says 'push me'"
python core_room.py --area prisonbasement --name "x180y440z-10" --short "Reactor Deck" --long "The floor seems to vibrate slightly as the reactor hums pleasantly in the background. Bright lights are needed here as the maintenance personnel have to carry out their duties in good and clear lighting. High above you, the huge light plates which cover the entire length of the ceiling almost blind you with their intensity.\n\nTo your east is another reactor deck, while going west will take you to the reactor's main control center." --west 1 --east 1 --mon1 r1serviceman --mon2 cyclophant --mon3 cyclophant
python core_room.py --area prisonbasement --name "x170y440z-10" --short "Main Control Center" --long "Manned mostly by reactor engineers, the main control center is the heart of all operations in the reactor. Every other division is kept under a watchful eye here, and all reports will go through this center before they are sent to the reactor supervisor. Various screens show the status of each other division which the engineers will check every now and then to see if everything is running smoothly. All assignments are also sent to the other divisions from here. \n\nTo the north and east are reactor decks. A tube passageway can be reached by going west."  --west 1 --north 1 --east 1 --mon1 r1engineer --mon2 r1engineer --mon3 r1engineer --mon4 r1engineer --mon5 r1physicist
python core_room.py --area prisonbasement --name "x160y440z-10" --short "Tube Passageway" --long "Pipes, cables and wires adorn the entire length of the passageway you're in. You seem to feel a bit claustrophobic, especially since it is rather dark here. Somewhere, you can hear the hum of the reactor. The whole tube is vibrating slightly with the immensity of the power being generated.\n\nThe tube passageway continues south. To the east is the main control center, while the radiology department lies to the west." --west 1 --east 1 --south 1
python core_room.py --area prisonbasement --name "x160y430z-10" --short "Tube Intersection" --long "You stand in the middle of a three-way tube intersection. The circular passageway is joined to the other with some sort of hard alloy. As usual, the wires and tubes run crazily all over the corridor.\n\nThe tube corridors continue north and west. The maintenance operations room is located east." --west 1 --east 1 --north 1
python core_room.py --area prisonbasement --name "x170y430z-10" --short "Maintenance Operations" --long "A large room with white walls, a white ceiling and a whiter floor, this is where the servicemen meet for their assignments and duty rosters. Most of the maintenance equipment are stored here, although they are not available for use to the public.\n\nThe exit is to the west." --west 1 --mon1 r1serviceman --mon2 r1serviceman --mon3 r1serviceman --mon4 r1serviceman --mon5 r1radsensor --mon6 r1radsensor --mon7 r1alan
python core_room.py --area prisonbasement --name "x150y430z-10" --short "Tube Intersection" --long "Like all other tube passageways in the reactor area, this one too is relatively dark and completely lined with wires and pipes. Walking here demands caution, else one might actually hit one's head upon a pipe.\n\nThe supervisor's office is located west. Otherwise, the tube passageway continues east." --west 1 --east 1
python core_room.py --area prisonbasement --name "x150y430z-10" --short "Supervisor's Office" --long "The supervisor's office is a nice carpeted room. The walls and the furniture are made of genuine wood, giving the place a very very comfortable look. There is even a ceiling fan spinning above you although the room is air-conditioned. The supervisor is obviously someone who likes classical office settings.\n\nYou can leave by going east." --east 1 --mon1 r1elaine --mon2 cyclophant
python core_room.py --area prisonbasement --name "x150y440z-10" --short "Radiology Department" --long "The radiology department is a vast room where all the radiologists meet to compare readings and findings. Headed by a tyrannical supervisor, you can expect that the radiologists keep this room in spick and span condition. Bright lighting is readily available here due to the fact that the personnel working here spend a lot of time going over reports. There are many chairs and tables around for the radiologists to work on.\n\nYou can leave by going east." --east 1 --mon1 r1radiologist --mon2 r1radiologist --mon3 r1radiologist --mon4 r1radiologist --mon5 r1radsensor --mon6 r1radsensor --mon7 r1marilynn
python core_room.py --area prisonbasement --name "x170y450z-10" --short "Reactor Deck" --long "The large light plates on the ceiling is the source of this room's brightness. The light reflects off the outer hull of the reactor, and even leaves a glint on the deck's slightly vibrating floor. Big as this room is, the light generated by the plates is more than sufficient to illuminate it.\n\nTo the north is the monitoring station. Going south will take you to the main control center, or you can go west into the rod control room." --west 1 --south 1 --north 1 --mon1 r1physicist --mon2 r1physicist --mon3 r1engineer --mon4 r1serviceman
python core_room.py --area prisonbasement --name "x160y450z-10" --short "Rod Control Room" --long "Fully-automated, the rod control room is run by manipulator drones. Here is where the drones control the intensity of the reaction within the reactor by placing or removing rods inside the reactor. The presence of the rods will reduce the reaction rate, so the reactor can be downpowered if it is generating too much energy inside. This is not a place humans can work in. Apart from being too cramped, there are also too many controls to handle.\n\nThe exit is to your east." --east 1 --mon1 r1engineer --mon2 r1mandrone --mon3 r1mandrone --mon4 r1mandrone
python core_room.py --area prisonbasement --name "x170y460z-10" --short "Monitoring Station" --long "The monitoring station is the place where every single aspect of REACTOR ONE's condition is monitored. There are monitors depicting the current reaction rate, digital flowcharts showing inner hull integrity, temperature valves and even a small viewslot to see the reactor core. This station functions not only as an all-around information hub about the reactor, but it also serves as a back-up system on monitoring should any of the other stations fail.\n\nReactor decks lie to your east and south." --south 1 --east 1 --mon1 r1physicist --mon2 cyclophant --mon3 r1radiolist --mon4 r1engineer --mon5 r1serviceman
python core_room.py --area prisonbasement --name "x180y460z-10" --short "Reactor Deck" --long "You can only see the outer hull of the reactor, but the soft humming of the reactor and the slight vibration of the floor beneath you more than convinces you that this gigantic piece of machinery is working perfectly. The huge light plates above is blinding.\n\nThe rod control room is situated to your north. Going west will take you to the reactor's leak control station, while east leads to the monitoring station." --west 1 --north 1 --east 1 --mon1 r1serviceman --mon2 r1physicist --mon3 r1serviceman --mon4 r1radiologist
python core_room.py --area prisonbasement --name "x180y470z-10" --short "Rod Control Room" --long "A room filled with many consoles, the rod control room was designed to be a hundred percent automated. Here is where manipulator drones work to regulate the reactor's energy reactions within so that the power generated is constant. Every now and then, the drones will put or remove a rod or two from inside the reactor's innards so that the reactions will be stabilized. No human can work here. There are just too many controls in too little space.\n\nThe exit is to the south." --south 1 --mon1 r1engineer --mon2 r1mandrone --mon2 r1mandrone --mon3 r1mandrone --mon4 r1mandrone
