import argparse
import argparse

mudpath = "/domains/dome/rooms/"
syspath = "/Users/dustin.heywood1@ibm.com/git/git/lib"

parser = argparse.ArgumentParser()
parser.add_argument('--name', help='room name', required=True)
parser.add_argument('--short', help='short desc', required=True)
parser.add_argument('--scolor', help='short desc color', required=False)
parser.add_argument('--long', help='long desc', required=True)
parser.add_argument('--lcolor', help='long desc color', required=False)
parser.add_argument('--area', help='area', required=True)
parser.add_argument('--north', help='path to north exit', required=False) 
parser.add_argument('--south', help='path to south exit', required=False)
parser.add_argument('--east', help='path to east exit', required=False)
parser.add_argument('--west', help='path to west exit', required=False)
parser.add_argument('--northeast', help='path to northeast exit', required=False)
parser.add_argument('--northwest', help='path to northwest exit', required=False)
parser.add_argument('--southeast', help='path to southeast exit', required=False)
parser.add_argument('--southwest', help='path to southwest exit', required=False)
parser.add_argument('--up', help='path to up exit', required=False)
parser.add_argument('--down', help='path to down exit', required=False)

args = parser.parse_args()

roomfile = open(syspath + mudpath + args.name + ".c", "w")
#print args.short
#print args.long

roomfile.write('inherit "/std/room";\n\n')
roomfile.write('void setup( void ) {\n')
roomfile.write('  add_area( "' + args.area + '" );\n')
if args.scolor is None:
  roomfile.write('  set_short( "' + args.short + '" );\n')
else:
  roomfile.write('  set_short( "%^' + args.scolor + '%^' + args.short + '%^RESET%^" );\n')
if args.lcolor is None:
  roomfile.write('  set_long( "' + args.long + '" );\n\n')
else:
  roomfile.write('  set_long( "%^' + args.lcolor + '%^' + args.long + '%^RESET%^" );\n\n')

print syspath + mudpath

# exits code here
exits = []
if args.north is not None:
  exits.append(["north", args.north ])
if args.south is not None:
  exits.append(["south", args.south ])
if args.east is not None:
  exits.append(["east", args.east ])
if args.west is not None:
  exits.append(["west", args.west ])
if args.northeast is not None:
  exits.append(["northeast", args.northeast ])
if args.northwest is not None:
  exits.append(["northwest", args.northwest ])
if args.southeast is not None:
  exits.append(["southeast", args.southeast ])
if args.southwest is not None:
  exits.append(["southwest", args.southwest ])
if args.up is not None:
  exits.append(["up", args.up ])
if args.down is not None:
  exits.append(["down", args.down ])

if exits is not None:
  roomfile.write(' set_exits( ([\n')
  exitcount = len(exits)
  exitnum = 0
  for exit in exits:
    exitnum += 1
    if exitcount == exitnum:
      roomfile.write('          "' + exit[0] + '" : "' + mudpath + exit[1] + '"\n')
    else:
      roomfile.write('          "' + exit[0] + '" : "' + mudpath + exit[1] + '",\n')

# end code here
roomfile.write('  ]) );\n')
roomfile.write('}\n')

roomfile.close
