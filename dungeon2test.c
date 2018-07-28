inherit "/std/room";

#include "dungeon"

void setup( void ) {
  add_area( "dungeon" );
  set_short( "test" );
  set_long( "test" );

 set_exits( ([
  "north" : DIR+"/room/1.c",
  "south" : DIR+"/room/2.c",
  "east" : DIR+"/room/3.c"
  ]) );
}
