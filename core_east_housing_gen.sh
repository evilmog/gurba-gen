#!/usr/bin/env bash
python core_room.py --area city --name "x110y0z0" --short "East Housing Dome - West Mass-Transit" --long "You have just entered housing dome #2 through an airlock. This dome is a bit smaller than the first but not as low-quality.  You see a conveyor belt ahead of you with its riders heading towards the central area." --west 1 --east 10 --aeast east
python core_room.py --area east --name "x210y0z0" --short "East Housing Dome: Center" --long  "The conveyor belt has brought you to the central area. Habitants are moving boxes of equipment into the housing building in front of you.  There are benches for people to sit on while they can watch the children frolic in the nearby playground.  There seem to be some important looking edifices to the southeast.\n\n You can visit the Atrium by going to the southwest." --west 10 --south 10 --north 10 --east 10 --southeast 1 --southwest 1 --up 1
python core_room.py --area east --name "x200y-10z0" --short "Atrium Entrance" --long "Lush exotic-looking plants grow abundantly all over this place. This is the entrance of an atrium located in the East Housing dome. The floor around you is paved with cement, while fresh soil cover the wide areas around the cement walkway. This atriums main purpose is to keep the natural air balance of the dome stable while at the same time providing sanctuary for the animals from Earth which have been transported to the colony.\n\nA metal archway to the northeast, lined with vines, lead to the the center mass-transit station of the East Housing dome. The cement walkway continues onward to the southwest." --northeast 1 --southwest 1 --mon1 mamba
python core_room.py --area east --name "x190y-20z0" --short "Atrium Walkway" --long "On both sides of the cement walkway are thick heavy foliage made out of strange plants which you hardly recognize. The dense plants make this walkway dark, obscuring the soft lightpanels above. Suspended just below the ceiling is a crazy network of iron water sprinklers which run off haphazardly everywhere.\n\nThe atrium entrance lies to your northeast. The walkway also extends to the southeast and southwest." --southwest 1 --southeast 1 --northeast 1 --mon1 doe
python core_room.py --area east --area east --name "x200y-30z0" --short "Atrium Walkway" --long "The walkway is sandwiched between very dense greenery, all of which is composed of plants both exotic and strange in nature. Illumination from the lightpanels above shed shadows as the light is blocked by the numerous leaves and scrubs. This results in the walkway being very dim, with just enough light to see where you're going.\n\nTo your north is the filtering area. A clearing can be reached by heading northwest." --north 1 --northwest 1 --mon1 monkey
python core_room.py --area east --name "x200y-20z0" --short "Filtering Area" --long "The cement path comes to an end here. Plants and small trees grow abundantly here, but the dense foliage cannot hide the large bulky air filters which have been fastened securely to the eastern wall. Because of the filters, the leaves and some of the softer-vined plants in this area are in a perpetual state of rustling.\n\nYou can leave by heading south." --south 1 --mon1 boar
python core_room.py --area east --name "x180y-30z0" --short "Atrium Walkway" --long "This cement path is the only thing which keeps the plants from growing over the many various passages in the atrium. The air is wet with moisture, courtesy of the water sprinklers suspended just below the ceiling. Lightpanels overhead illuminate the passage dimly, partially caused by the obstructing leafage. \n\nClearings are located to both your east and west. The atrium walkway continues northeast." --west 1 --northeast 1 --east 1 --mon1 monkey
python core_room.py --area east --name "x190y-30z0" --short "A clearing" --long "You have reached a clearing in the atrium. Here, the ceiling is over twelve feet high, and bright solar-panels radiate artificial solar energy down upon you. There is little sign of the exotic plants which so populate the atrium in this clearing.\n\nThe walkway extends to your west and southwest. A panel set into the high metal wall takes you into a passage southeast from here." --west 1 --southwest 1 --southeast 1 --mon1 baboon
python core_room.py --area east --name "x200y-40z0" --short "Service Passage" --long "This corridor is made out of brick-layered walls and black-tiled floor. In the ceiling, a row of small turbines from north to south spins lazily, while red lights beneath them illuminate the passage. \n\nA panel in the wall leads out northwest, while the atrium service room lies to the south." --south 1 --northwest 1
python core_room.py --area east --name "x200y-50z0" --short "Atrium service room" --long "This is a rather small room, with steel walls and a large turbine spinning away above a heavy iron grate in the ceiling. To the south of the room is a semi-circular array of consoles, each indicating the status of various environmental controls in the atrium itself. The soft whirrings and the occasional clicking sound in the background hints of the self-automated nature of this service room.\n\nThe door to your north takes you out to a service passage." --north 1
python core_room.py --area east --name "x180y-40z0" --short "Atrium Walkway" --long "Lightpanels in the ceiling mutely illuminate this cement walkway. On both sides of the path are plants, all of which are unfamiliar to you. Above you, hanging below the lightpanels, is a crazy network of water sprinklers. The foliage partially obstructs the light from above, causing the walkway to appear dim.\n\nYou can feel a slight draft heading southeast. The plants seem to get thicker to your east and west, while a clearing lies to your northeast." --west 1 --southeast 1 --northeast 1 --east 1 --mon1 python
python core_room.py --area east --name "x190y-50z0" --short "Inflow area" --long "Among the heavy foliage here are pairs of iron pipes with metal gratings on them fixed to the eastern wall. The air around you is being sucked into the pipes, which hum constantly with the effort. A bunch of loose leaves are collected untidily beneath the pipes, blocked by the gratings from entering the pipes.\n\nThe atrium walkway exits to the northwest." --northwest 1 --mon1 mamba
python core_room.py --area east --name "x170y-40z0" --short "Heavy undergrowth" --long "Overhanging vines reach down from the ceiling where they have twisted themselves around the network of water sprinklers above. Heavy foliage resulting from the high growth rate of the exotic plants here reach out from beyond the cement path to encroach upon the atrium walkway which you are standing on. \n\nThe only way out is to your east." --east 1 --mon1 baboon
python core_room.py --area east --name "x170y-30z0" --short "A clearing" --long "Overhead, bright solar-panels illuminate the clearing you are in with artificial solar energy. Apart from a few patches of grass, there doesn't seem to be any other plants around. The steel walls of the atrium are warm to the touch, an effect of the solar-panels. \n\nCement walkways disappear into increasing foliage to your north and east. There seems to be a pool of water to your northwest." --northwest 1 --north 1 --east 1 --mon1 python
python core_room.py --area east --name "x170y-20z0" --short "Atrium Walkway" --long "Soft lightpanels cast long bulky shadows everywhere along this walkway. The air feels very wet, and the walkway beneath you feels a bit slippery. Plants on both sides of the walkway seem very unfamiliar to you. Above you is a network of water sprinklers which seem to go off in every direction.\n\nThe plants seem to have dominated the cement path further up northwest. Clearings lie to your south and northeast." --south 1 --northwest 1 --northeast 1 --mon1 python
python core_room.py --area east --name "x180y-10z0" --short "A clearing" --long "This clearing seems to be relatively free of the exotic-looking plants of the atrium. The ceiling here towers over twelve feet high, with bright solar-panels illuminating the whole area. It does seem a mite warm, with the cement walkway beneath your feet feeling hot.\n\nA gust of foul-smelling air is coming from the direction the eastern cement path leads to. The plants seem to get thicker to your south and west. The walkway also extends to the southwest." --west 1 --southwest 1 --south 1 --east 1 --mon1 monkey
python core_room.py --area east --name "x180y-20z0" --short "Heavy undergrowth" --long "Thick, heavy leaves of exotic and unknown plants threaten to swallow you up whole and overwhelm the cement path. The foliage is so abundant that the plants reach all the way to the ceiling, vines entwining along with the water sprinklers to effectively darken the whole area.\n\nBeneath you, the cement walkway leads out north to a clearing." --north 1 --mon1 gorilla
python core_room.py --area east --name "x190y-10z0" --short "Outflow area" --long "Pairs of vertically-arranged metallic tubes jut out of the eastern wall. A strong gush of foul-smelling wind is blowing out of the metallic tubes, presumably the circulated air of the dome. The plants here seem to be extremely well-grown and thick, although they look a little sickly. \n\nThe cement walkway forms a circle here amid the thicket, with a path leading to the west." --west 1 --mon1 boar
python core_room.py --area east --name "x170y-10z0" --short "Heavy undergrowth" --long "The plants in this part of the atrium seem to be enjoying a very high growth rate, for the thicket here is so dense that nothing can possible make its way through the underbrush. The cement walkway seems to have come to an end here, while the abundance of plants everywhere makes this area dark.\n\nThe only way out of this thick undergrowth is east." --east 1 --mon1 panther
python core_room.py --area east --area east --name "x160y-10z0" --short "Heavy undergrowth" --long "Unfamiliar plants and all manner of leaves and large ferns which you have not seen before envelope this area like a skin of greenery. The smell of earth is strong here, and the semi-darkness along with the drops of water condensing on the leaves all around lends this section of the atrium a certain coolness.\n\nThe exit is to the southeast." --southeast 1 --mon1 monkey
python core_room.py --area east --area east --name "x160y-20z0" --short "Pong Area" --long "You stand at the edge of a small pond, only six feet across. The water is crystal clear, and you estimate the depth to be only four feet deep. The pond is circular in shape, its form bordered by a heavy-looking metal circle. All around the pond, unfamiliar plants grow with casual abundance. \n\nThe cement path will take you southeast along an atrium walkway." --southeast 1 --mon1 doe
python core_room.py --area east --name "x310y0z0" --short "East Housing: East Mass-Transit" --long " You have just entered housing dome #2 through an airlock. This dome is a bit smaller than the first but not as low-quality.  You see a conveyor belt ahead of you with its riders heading towards the central area.  Eastward a  node is connected to the eastern mining dome and recreation dome. You can see the Registrar's office to the southwest." --west 10 --southwest 1 --east 11 --aeast eastmasstransit
python core_room.py --area eastmasstransit --name "x420y0z0" --short "East Mass-Transit Node" --long "This circular room is in the very center of a tiny dome that is a connector for all of the domes in the East District.  Use any exit to be instantly transported via mass-transit tube to the listed destination.\n\n%^CYAN%^+----------%^RED%^D I R E C T O R Y%^RESET%^%^CYAN%^------------+\n|                                       |\n|%^RESET%^    W - Eastern Housing Dome           %^CYAN%^|\n|%^RESET%^    E - Eastern Mining Dome            %^CYAN%^|\n|%^RESET%^    S - Southeast Mass-Transit Node    %^CYAN%^|\n|                                       |\n+---------------------------------------+%^RESET%^\n%^RESET%^" --anorth northeastmasstransit --north 42 --awest east --west 11 --aeast eastmine --east 17 --asouth southeastmasstransit --south 42
python core_room.py --area eastmine --name "x590y0z0" --short "East Mine - W Transit" --long "Despite the constant cleaning efforts, the maintenance crews haven't been able to completely remove the mine soot that has been ground into the floor.  This can be none other than one of The Company's mine domes." --awest eastmasstransit --west 17 --east 4 --northeast 1 --mon1 guard --mon2 guard --mon3 captain
python core_room.py --area eastmine --name "x600y10z0" --short "Guard Barracks" --long "Here is where the off-duty guards take their rest.  The lighting is pleasant and subdued, and the furniture is quite comfortable.  The guards look up at you in surprise as you enter." --southwest 1 --mon1 guard --mon2 guard
python core_room.py --area eastmine --name "x630y0z0" --short "East Mine Ruins" --long "This is the center of the East Mine, it once had miners here but now the floor is just rubble and scrap and the walls look like they have seen better days." --south 4 --west 4 --north 4 --east 4
python core_room.py --area eastmine --name "x630y-40z0" --short "East Mine - S Transit" --long "Despite the constant cleaning efforts, the maintenance crews haven't been able to completely remove the mine soot that has been ground into the floor.  This can be none other than one of The Company's mine domes." --northwest 1 --north 4 --mon1 guard --mon2 guard
python core_room.py --area eastmine --name "x620y-30z0" --short "Guard Barracks" --long "Here is where the off-duty guards take their rest.  The lighting is pleasant and subdued, and the furniture is quite comfortable.  The guards look up at you in surprise as you enter." --southeast 1 --mon1 guard --mon2 guard
python core_room.py --area eastmine --name "x630y40z0" --short "East Mine - N Transit" --long "No domes exist north of this point, although a mass-transit station has been built here to accommodate future growth." --southeast 1 --south 4 --mon1 guard --mon2 guard
python core_room.py --area eastmine --name "x640y30z0" --short "Guard Barracks" --long "Here is where the off-duty guards take their rest.  The lighting is pleasant and subdued, and the furniture is quite comfortable.  The guards look up at you in surprise as you enter." --northwest 1 --mon1 guard --mon2 guard
python core_room.py --area eastmine --name "x670y0z0" --short "East Mine - E Transit" --long "This is the end of the line, the walls are falling down and the domes integrity looks questionable at best. The air smells of rotten eggs and dust."  --west 4 --southwest 1 --mon1 guard --mon2 guard
python core_room.py --area eastmine --name "x660y0z0" --short "Guard Barracks" --long "Here is where the off-duty guards take their rest.  The lighting is pleasant and subdued, and the furniture is quite comfortable.  The guards look up at you in surprise as you enter." --northeast 1 --mon1 guard --mon2 guard
python core_room.py --area city --name "x-100y0z0" --short "Mass-transit:  West" --long "This is the west mass transit station within the CITY dome. The following are the destinations available to you:\n\n      West Sector ....................... west\n      Center CITY mass transit .......... east" --awest westmasstransit --east 10 --west 1 --awest west
python core_room.py --area west --name "x-110y0z0" --short "West Housing: E Transit" --long "This atmosphere in this luxurious housing dome drips extravagance with an artificial sky and computer controlled weather patterns.  You feel a slight breeze against your face and can smell a hint of ocean.  Up above you a bright moon illuminates all.  Some couples are walking by you hand in hand." --aeast city --east 1 --west 10
python core_room.py --area west --name "x-210y0z0" --short "West Housing: Center" --long "This is the center of the massive West Housing dome. Only the finest, hardest-working, and most dedicated miners are assigned to live within this complex.  You see a few of them making their way to the mining dome west of here." --east 10 --west 10
python core_room.py --area west --name "x-310y0z0" --short "West Housing: W Transit" --long "This atmosphere in this luxurious housing dome drips extravagance with an artificial sky and computer controlled weather patterns.  You feel a slight breeze against your face and can smell a hint of ocean.  Up above you a bright moon illuminates all.  A few elite miners are making their way to the mining dome west of here." --east 10 --west 11 --awest westmasstransit
python core_room.py --area westmasstransit --name "x-420y0z0" --short "West Mass-Transit Node" --long "This circular room is in the very center of a tiny dome that is a connector for all of the domes in the West District.  Use any exit to be instantly transported via mass-transit tube to the listed destination.\n\n%^CYAN%^+----------%^RESET%^%^RED%^D I R E C T O R Y%^RESET%^%^CYAN%^------------+\n%^CYAN%^|                                       %^CYAN%^|\n%^CYAN%^|%^RESET%^    W - West Mining Dome               %^CYAN%^|\n%^CYAN%^|%^RESET%^    E - West Housing Dome              %^CYAN%^|\n%^CYAN%^|%^RESET%^    N - Northwest Mass-Transit Node    %^CYAN%^|\n%^CYAN%^|%^RESET%^    S - Southwest Mass-Transit Node    %^CYAN%^|\n%^CYAN%^|                                       %^CYAN%^|\n%^CYAN%^+---------------------------------------+\n%^RESET%^" --awest westmine --west 17 --aeast west --east 11 --asouth southwestmasstransit --south 42 --anorth northwestmasstransit --north 42
python core_room.py --area northwestmasstransit --name "x-420y420z0" --short "Northwest Mass-Transit Node" --long "This circular room is in the very center of a tiny dome that is a connector for all of the domes in the Northwest District.  Use any exit to be instantly transported via mass-transit tube to the listed destination.\n\n%^CYAN%^+----------%^RESET%^%^RED%^D I R E C T O R Y%^RESET%^%^CYAN%^------------+\n%^CYAN%^|                                       |\n%^CYAN%^|    %^RESET%^E - North Mass-Transit Node%^CYAN%^        |\n%^CYAN%^|    %^RESET%^S - West Mass-Transit Node         %^CYAN%^|\n%^CYAN%^|                                       %^CYAN%^|\n%^CYAN%^+---------------------------------------+\n%^RESET%^" --south 42 --east 42 --asouth westmasstransit --aeast northmasstransit
python core_room.py --area northeastmasstransit --name "x420y420z0" --short "Northeast Mass-Transit Node" --long "This circular room is in the very center of a tiny dome that is a connector for all of the domes in the Northeast District. Use any exit to be instantly transported via mass-transit tube to the listed destination.\n\n%^CYAN%^+----------%^RESET%^%^RED%^D I R E C T O R Y%^RESET%^%^CYAN%^------------+\n%^CYAN%^|                                       |\n%^CYAN%^|    %^RESET%^W - North Mass-Transit Node%^CYAN%^        |\n%^CYAN%^|    %^RESET%^S - East Mass-Transit Node         %^CYAN%^|\n%^CYAN%^|                                       %^CYAN%^|\n%^CYAN%^+---------------------------------------+\n%^RESET%^" --asouth eastmasstransit --south 42 --west 42
python core_room.py --area southwestmasstransit --name "x-420y-420z0" --short "Southwest Mass-Transit Node" --long "This circular room is in the very center of a tiny dome that is a connector for all of the domes in the Southwest District.  Use any exit to be instantly transported via mass-transit tube to the listed destination.\n\n%^CYAN%^+----------%^RESET%^%^RED%^D I R E C T O R Y%^RESET%^CYAN%^------------+\n%^CYAN%^|                                       |\n%^CYAN%^|%^RESET%^    N - West Mass-Transit Node         %^CYAN%^|\n%^CYAN%^|%^RESET%^    E - South Mass-Transit Node        %^CYAN%^|\n%^CYAN%^|                                       |\n%^CYAN%^+---------------------------------------+%^RESET%^\n" --anorth westmasstransit --north 42 --aeast southmasstransit --east 42
python core_room.py --area southmasstransit --name "x0y-420z0" --short "South Mass-Transit Node" --long "This circular room is in the very center of a tiny dome that is a connector for all of the domes in the South District.  Use any exit to be instantly transported via mass-transit tube to the listed destination.\n\n%^CYAN%^+----------%^RED%^D I R E C T O R Y%^CYAN%^------------+\n%^CYAN%^|                                       |\n%^CYAN%^|%^RESET%^    S - Southern Mining Dome           %^CYAN%^|\n%^CYAN%^|%^RESET%^    N - Southern Housing Dome          %^CYAN%^|\n%^CYAN%^|%^RESET%^    E - Southeast Mass-Transit Node    %^CYAN%^|\n%^CYAN%^|%^RESET%^    W - Southwest Mass-Transit Node    %^CYAN%^|\n%^CYAN%^|%^RESET%^   SW - Fusion Reactor, SW Quadrant    %^CYAN%^|\n%^CYAN%^|                                       %^CYAN%^|\n%^CYAN%^+---------------------------------------+%^RESET%^\n" --awest southwestmasstransit --west 42 --anorth south --north 11 --aeast southeastmasstransit --east 42 --south 17
python core_room.py --area southeastmasstransit --name "x420y-420z0" --short "Southeast Mass-Transit Node" --long "This circular room is in the very center of a tiny dome that is a connector for all of the domes in the Southeast District.  Use any exit to be instantly transported via mass-transit tube to the listed destination.\n\n%^CYAN%^+----------%^RED%^D I R E C T O R Y%^CYAN%^------------+\n%^CYAN%^|                                       %^CYAN%^|\n%^CYAN%^|%^RESET%^    N - East Mass-Transit Node         %^CYAN%^|\n%^CYAN%^|%^RESET%^    W - South Mass-Transit Node        %^CYAN%^|\n%^CYAN%^|%^RESET%^    S - Nympho Dome                    %^CYAN%^|\n%^CYAN%^|%^RESET%^    E - Industrial Complex             %^CYAN%^|\n%^CYAN%^|                                       |\n%^CYAN%^+---------------------------------------+%^RESET%^\n" --awest southmasstransit --west 42 --anorth eastmasstransit --north 42 --south 14
python core_room.py --area south --name "x0y-310z0" --short "Section:  South End" --long "The southern mining dome is located to the south.  The entrance to the housing area is back to the north.  Some tenants look at you nonchalantly.  You feel they know you do not belong here with them." --south 11 --north 10
python core_room.py --area south --name "x0y-210z0" --short "Central Area" --long " There are few residents of this area who are enjoying the peace and serenity from the hustle and bustle of the city and mining domes.  This dome within a dome contains the housing for middle-class miners." --north 10 --south 10
python core_room.py --area south --name "x0y-110z0" --short "Section:  North End" --long "You have just entered housing dome #3 through an airlock. This dome is slightly smaller than housing dome #2.  Its residents are not many but sport items of value and hard work. Some are lounging under palm trees conversing with one another as newcomers gape at the luxury that surrounds them." --south 10 --north 1
python core_room.py --area city --name "x0y-100z0" --short "CITY Mass Transit Station: South" --long "This is the south mass transit station within the CITY dome. The following are the destinations available to you:\n\n      South Sector ..................... south\n      Center CITY mass transit ......... north" --north 10 --south 1
python core_room.py --area east --name "x220y-10z0" --short "East Dome Corridor" --long "You are in the southeast quadrant of the East housing dome. This is a corridor you are in with a large sign hanging over your head in with a large sign hanging over your head work involving the East housing dome.\n\nA mass-transit station is to your northwest. The corridor continues to your south and southeast." --northwest 1 --south 1 --southeast 1
python core_room.py --area east --name "x220y-20z0" --short "East Dome Corridor" --long "You find yourself walking inside the East housing dome. The corridor is not too large, but wide enough to allow three average-sized adult humans to walk abreast.\n\nYou may continue to your north or south." --mon1 droid --south 1 --north 1
python core_room.py --area east --name "x220y-30z0" --short "East Dome Corridor" --long "Blue stripes run along the entire length of this corridor. You can differentiate this corridor with other domes by the stripes which mark it out as uniquely East Dome.\n\nThe domes maintenance office is to your south. Corridors extend to your north and east." --north 1 --south 1 --east 1
python core_room.py --area east --name "x220y-40z0" --short "Maintenance Office" --long "This is the East domes maintenance office. A strange smell of disinfectant is in the air, and you can see that this office is in the process of being cleaned. Soapwater lie in puddles all over the room, and a damp rag sits precariously on the edge of the only table in the room." --mon1 zaryem --north 1 --item1 table --item1desc "The desk of the maintenance officer. Like everything else in the office, it is covered with spots of soapwater." --item2 rag --item2desc "This filthy-looking rag has seen better days. At the moment, it is unused. The rag is just lying on the edge of a table, waiting to fall off on its own weight."
python core_room.py --area east --name "x230y-30z0" --short "East Dome Corridor" --long "This East Dome corridor allows at least three human adults to walk abreast. The blue stripes running along its entire make up to give the corridor a bluish hue.\n\nYou can walk along to the east or west." --west 1 --east 1
python core_room.py --area east --name "x240y-30z0" --short "East Dome Corridor" --long "This East Dome corridor allows at least three human adults to walk abreast. The blue stripes running along its entire make up to give the corridor a bluish hue.\n\nSouth leads to the living stats department. Corridors continue to your east and west." --mon1 droid --west 1 --south 1 --east 1
python core_room.py --area east --name "x240y-40z0" --short "Living Stats Department" --long "The living stats department is an automated room where life detectors work alongside statistic programs to produce a detailed report of the East domes inhabitants every month. This report is automatically generated every month unless it is requested earlier.\n\nA corridor connecting to other parts of the East dome lies to your north. To your east is the domes public relations office, while to your southwest is the dome managers secretary." --southwest 1 --north 1 --east 1
python core_room.py --area east --name "x230y-50z0" --short "Dome Managers Secretary" --long "You are standing in the East dome managers secretarys office. An air-conditioner hums cheerfully in the corner, while a rather pleasant-looking desk sits in the southwestern corner of the room. It is quite comfortably lit here, and you can see everything in the room with astounding clarity.\n\nThe dome managers office lies to the north. To your east is the power management room. Northeast will take you to the living stats department. There seems to be a sort of maintenance storeroom to your west." --west 1 --northeast 1 --north 1 --east 1 --mon1 mila
python core_room.py --area east --name "x230y-40z0" --short "Dome Managers Office" --long "A brightly-lit place, you can see that this office has been very tidily kept. All the furniture are immaculately arranged, and even the dome managers desk is very systematically organized. You do not doubt that this is the penultimate in condusive working environments.\n\nThe exit is to your south." --mon1 vlarapp --south 1
python core_room.py --area east --name "x240y-50z0" --short "Power Management" --long "Linked to the domes power room, the power management room is where Core certified technicians can change the power settings of the entire dome. All around you are computer mainframes which are used to control the power in the dome. Due to the nature of the work done here, the rooms temperature settings are kept to a minimum.\n\nYou can leave by heading east to the planning room or west to the dome managers secretary's office." --west 1 --east 1
python core_room.py --area east --name "x250y-50z0" --short "Planning Room" --long "Brightly lit and spacious, the planning room is the place where the top dome executives and dome planners work together to plan out the domes management. Policies regarding the East dome, work orders and modifications to the dome are brought up here before actual implementation.\n\nTo the north is the public relations office, while to the west is the power management room." --mon1 planner --mon2 planner --west 1 --north 1
python core_room.py --area east --name "x250y-40z0" --short "East Dome Public Relations" --long "This is the East dome public relations office. The floor is comfortably covered with a plush green carpet. Soft yellow light illuminates the room, so as to give the room a relaxed atmosphere. This is where the general public go to to handle their businesses with the East dome.\n\nTo the south lies the planning room. The living stats department is located to your west, while a corridor is to your southeast." --west 1 --southeast 1 --south 1 --mon1 roger
python core_room.py --area east --name "x260y-50z0" --short "East Dome Corridor" --long "Being large enough to accommodate three humans walking abreast, the corridor you are in is otherwise pretty featureless save for a single blue line running along its entire length.\n\nThe corridor extends to your east and northeast. Alternatively, you may head northwest to the dome's public relations office." --northwest 1 --northeast 1 --east 1
python core_room.py --area east --name "x270y-50z0" --short "East Dome Corridor" --long "A bluish hue comes from the single blue stripe which adorns the walls of this corridor you are in. The corridor is rather bland otherwise.\n\nThe corridor continues to your south, west and northeast." --west 1 --south 1 --northeast 1 --mon1 droid
python core_room.py --area east --name "x270y-60z0" --short "East Dome Corridor" --long "The blue stripe running along the walls of this corridor mark this dome as the East housing dome. For apart from the stripes, there are no other distinctive features here.\n\nTo your north is another corridor. To your east is the droid maintenance bay." --north 1 --east 1
python core_room.py --area east --name "x280y-60z0" --short "Droid Maintenance Bay" --long "This droid maintenance bay is used for advanced maintenance procedures on the droids. Doubling as a repair bay, this bay is equipped with a wide variety of maintenance and repair equipment.\n\nA corridor connects to this bay to the west. To the east is a droid docking bay.  The droid power station is to the north." --west 1 --north 1 --east 1 --mon1 maintainer
python core_room.py --area east --name "x280y-50z0" --short "Droid Power Station" --long "The droid power station is the place where the droids recharge their internal power supply via direct connection cables to the domes power supply. Cylindrical tanks marked with the words %^BOLD%^C26-B%^RESET%^hang from the ceiling. You see a lot of tubes and cables all over the room.\n\nYou may leave by going south." --south 1 --mon1 powerdrone
