inherit "/std/room";

inherit "../domain.h");

void setup( void ) {
  add_area( "city1" );
  set_short( "%^GREEN%^%^BOLD%^%^Church of Wifi - Initiation Room%^RESET%^" );
  set_long( "This room is a stark change from the drab metal. The floors are green shag carpet while the walls appear to be made of wooden panels.  A leather ottoman is in the middle of the room. Various implements including floggers, wooden paddels, and belts hang from the walls.\n\nThe domes hallway is to the north." );

  add_item("rock", "test");

  set_objects( ([
    DIR + "obj1.c",
    DIR + "obj2.c"
  );

 set_exits( ([
          "north" : " DIR + "60n70"
  ]) );
}
