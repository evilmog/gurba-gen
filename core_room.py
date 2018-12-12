import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--name', help='room name', required=True)
# parser.add_argument('--domain', help='path to domain include ../domain.h', required=True)
# parser.add_argument('--syspath', help='system path to drop files', required=True)
parser.add_argument('--short', help='short desc', required=True)
parser.add_argument('--scolor', help='short desc color', required=False)
parser.add_argument('--long', help='long desc', required=True)
parser.add_argument('--lcolor', help='long desc color', required=False)
parser.add_argument('--area', help='area', required=False)
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
parser.add_argument('--hnorth', help='hidden path to north exit', required=False)
parser.add_argument('--hsouth', help='hidden path to south exit', required=False)
parser.add_argument('--heast', help='hidden path to east exit', required=False)
parser.add_argument('--hwest', help='hidden path to west exit', required=False)
parser.add_argument('--hnortheast', help='hidden path to northeast exit', required=False)
parser.add_argument('--hnorthwest', help='hidden path to northwest exit', required=False)
parser.add_argument('--hsoutheast', help='hidden path to southeast exit', required=False)
parser.add_argument('--hsouthwest', help='hidden path to southwest exit', required=False)
parser.add_argument('--hup', help='hidden path to up exit', required=False)
parser.add_argument('--hdown', help='hidden path to down exit', required=False)
parser.add_argument('--panel', help='hidden path to panel', required=False)
parser.add_argument('--vent', help='hidden path to vent', required=False)
parser.add_argument('--pipe', help='hidden path to pipe', required=False)
parser.add_argument('--hole', help='hidden path to hole', required=False)
parser.add_argument('--pushwall', help='push wall exit', required=False)

parser.add_argument('--item1', help='item1 name', required=False)
parser.add_argument('--item1desc', help='item1 desc', required=False)
parser.add_argument('--item2', help='item1 name', required=False)
parser.add_argument('--item2desc', help='item1 desc', required=False)
parser.add_argument('--item3', help='item1 name', required=False)
parser.add_argument('--item3desc', help='item1 desc', required=False)
parser.add_argument('--item4', help='item1 name', required=False)
parser.add_argument('--item4desc', help='item1 desc', required=False)
parser.add_argument('--obj1', help='path to obj1', required=False)
parser.add_argument('--obj2', help='path to obj2', required=False)
parser.add_argument('--obj3', help='path to obj3', required=False)
parser.add_argument('--obj4', help='path to obj4', required=False)
parser.add_argument('--obj5', help='path to obj5', required=False)
parser.add_argument('--obj6', help='path to obj6', required=False)

args = parser.parse_args()

coords = args.name.replace("x", "").replace("y", ",").replace("z", ",").split(",")
x_coord = coords[0]
y_coord = coords[1]
z_coord = coords[2]
x_int = int(coords[0])
y_int = int(coords[1])
z_int = int(coords[2])

# print "x: " + str(x_int)
# print "y: " + str(y_int)
# print "z: " + str(z_int)
print args.name

syspath = "/Users/dustin.heywood1@ibm.com/git/gurba/lib/domains/core/rooms/"
roomfile = open(syspath + args.name + ".c", "w")
# print args.syspath + args.name + ".c"


roomfile.write('inherit "/std/room";\n\n')
roomfile.write('#include "../domain.h" \n\n')

if args.area is None:
    args.area = "city"

roomfile.write('void setup( void ) {\n\n')

roomfile.write('inherit "/sys/lib/modules/m_properties";\n\n')

roomfile.write('  set_property("x", ' + x_coord + ');\n')
roomfile.write('  set_property("y", ' + y_coord + ');\n')
roomfile.write('  set_property("z", ' + z_coord + ');\n\n')

roomfile.write('  add_area( "' + args.area + '" );\n')
if args.scolor is None:
    roomfile.write('  set_short( "' + args.short + '" );\n')
else:
    roomfile.write('  set_short( "%^' + args.scolor + '%^' + args.short + '%^RESET%^" );\n')
if args.lcolor is None:
    roomfile.write('  set_long( "' + args.long + '" );\n\n')
else:
    roomfile.write('  set_long( "%^' + args.lcolor + '%^' + args.long + '%^RESET%^" );\n\n')

# item code here
if args.item1 is not None:
    if args.item1desc is not None:
        roomfile.write('  add_item("' + args.item1 + '", "' + args.item1desc + '");\n')
if args.item2 is not None:
    if args.item2desc is not None:
        roomfile.write('  add_item("' + args.item2 + '", "' + args.item2desc + '");\n')
if args.item3 is not None:
    if args.item3desc is not None:
        roomfile.write('  add_item("' + args.item3 + '", "' + args.item3desc + '");\n')
if args.item4 is not None:
    if args.item4desc is not None:
        roomfile.write('  add_item("' + args.item4 + '", "' + args.item4desc + '");\n')

# exits code here
exits = []
hexits = []

if args.north is not None:
    new_yint = y_int + int(int(args.north) * 10)
    exits.append(["north", "x" + x_coord + "y" + str(new_yint) + "z" + z_coord])
if args.south is not None:
    new_yint = y_int - int(int(args.south) * 10)
    exits.append(["south", "x" + x_coord + "y" + str(new_yint) + "z" + z_coord])
if args.east is not None:
    new_xint = x_int + int(int(args.east) * 10)
    exits.append(["east", "x" + str(new_xint) + "y" + y_coord + "z" + z_coord])
if args.west is not None:
    new_xint = x_int - int(int(args.west) * 10)
    exits.append(["west", "x" + str(new_xint) + "y" + y_coord + "z" + z_coord])
if args.northeast is not None:
    new_yint = y_int + int(int(args.northeast) * 10)
    new_xint = x_int + int(int(args.northeast) * 10)
    exits.append(["northeast", "x" + str(new_xint) + "y" + str(new_yint) + "z" + z_coord])
if args.northwest is not None:
    new_yint = y_int + int(int(args.northwest) * 10)
    new_xint = x_int - int(int(args.northwest) * 10)
    exits.append(["northwest", "x" + str(new_xint) + "y" + str(new_yint) + "z" + z_coord])
if args.southeast is not None:
    new_yint = y_int - int(int(args.southeast) * 10)
    new_xint = x_int + int(int(args.southeast) * 10)
    exits.append(["southeast", "x" + str(new_xint) + "y" + str(new_yint) + "z" + z_coord])
if args.southwest is not None:
    new_yint = y_int - int(int(args.southwest) * 10)
    new_xint = x_int - int(int(args.southwest) * 10)
    exits.append(["southwest", "x" + str(new_xint) + "y" + str(new_yint) + "z" + z_coord])
if args.up is not None:
    new_zint = z_int + int(int(args.up) * 10)
    exits.append(["up", "x" + x_coord + "y" + y_coord + "z" + str(new_zint)])
if args.down is not None:
    new_zint = z_int - int(int(args.down) * 10)
    exits.append(["down", "x" + x_coord + "y" + y_coord + "z" + str(new_zint)])

# hidden exits
if args.hnorth is not None:
    new_yint = y_int + int(int(args.hnorth) * 10)
    hexits.append(["north", "x" + x_coord + "y" + str(new_yint) + "z" + z_coord])
if args.hsouth is not None:
    new_yint = y_int - int(int(args.hsouth) * 10)
    hexits.append(["south", "x" + x_coord + "y" + str(new_yint) + "z" + z_coord])
if args.heast is not None:
    new_xint = x_int + int(int(args.heast) * 10)
    hexits.append(["east", "x" + str(new_xint) + "y" + y_coord + "z" + z_coord])
if args.hwest is not None:
    new_xint = x_int - int(int(args.hwest) * 10)
    hexits.append(["west", "x" + str(new_xint) + "y" + y_coord + "z" + z_coord])
if args.hnortheast is not None:
    new_yint = y_int + int(int(args.hnortheast) * 10)
    new_xint = x_int + int(int(args.hnortheast) * 10)
    hexits.append(["northeast", "x" + str(new_xint) + "y" + str(new_yint) + "z" + z_coord])
if args.hnorthwest is not None:
    new_yint = y_int + int(int(args.hnorthwest) * 10)
    new_xint = x_int - int(int(args.hnorthwest) * 10)
    hexits.append(["northwest", "x" + str(new_xint) + "y" + str(new_yint) + "z" + z_coord])
if args.hsoutheast is not None:
    new_yint = y_int - int(int(args.hsoutheast) * 10)
    new_xint = x_int + int(int(args.hsoutheast) * 10)
    hexits.append(["southeast", "x" + str(new_xint) + "y" + str(new_yint) + "z" + z_coord])
if args.hsouthwest is not None:
    new_yint = y_int - int(int(args.hsouthwest) * 10)
    new_xint = x_int - int(int(args.hsouthwest) * 10)
    hexits.append(["southwest", "x" + str(new_xint) + "y" + str(new_yint) + "z" + z_coord])
if args.hup is not None:
    new_zint = z_int + int(int(args.hup) * 10)
    hexits.append(["up", "x" + x_coord + "y" + y_coord + "z" + str(new_zint)])
if args.hdown is not None:
    new_zint = z_int - int(int(args.hdown) * 10)
    hexits.append(["down", "x" + x_coord + "y" + y_coord + "z" + str(new_zint)])
if args.panel is not None:
    hexits.append(["panel", args.panel])
if args.vent is not None:
    hexits.append(["vent", args.vent])
if args.pipe is not None:
    hexits.append(["pipe", args.pipe])
if args.hole is not None:
    hexits.append(["hole", args.hole])
if args.pushwall is not None:
    hexits.append(["push wall", args.pushwall])

objects = []
if args.obj1 is not None:
    objects.append([args.obj1])
if args.obj2 is not None:
    objects.append([args.obj2])
if args.obj3 is not None:
    objects.append([args.obj3])
if args.obj4 is not None:
    objects.append([args.obj4])
if args.obj5 is not None:
    objects.append([args.obj5])
if args.obj6 is not None:
    objects.append([args.obj6])

if objects:
    roomfile.write('\n  set_objects( \n')
    objcount = len(objects)
    objnum = 0
    for roomobject in objects:
        objnum += 1
        if objcount == objnum:
          roomfile.write(' DIR+"/monsters/' + roomobject[0] + '.c"\n')
        else:
          roomfile.write(' DIR+"/monsters/' + roomobject[0] + '.c", \n')
    roomfile.write(');\n')

if exits:
    roomfile.write(' set_exits( ([\n')
    exitcount = len(exits)
    exitnum = 0
    for roomexit in exits:
        exitnum += 1
        if exitcount == exitnum:
          roomfile.write('  "' + roomexit[0] + '" : ' + 'DIR+"/rooms/' + roomexit[1] + '.c"\n')
        else:
          roomfile.write('  "' + roomexit[0] + '" : ' + 'DIR+"/rooms/' + roomexit[1] + '.c",\n')
    roomfile.write('  ]) );\n')

if hexits:
    roomfile.write(' set_hidden_exits( ([\n')
    exitcount = len(exits)
    exitnum = 0
    for roomexit in hexits:
        exitnum += 1
        if exitcount == exitnum:
          roomfile.write('  "' + roomexit[0] + '" : ' + 'DIR+"/rooms/' + roomexit[1] + '.c"\n')
        else:
          roomfile.write('  "' + roomexit[0] + '" : ' + 'DIR+"/rooms/' + roomexit[1] + '.c",\n')
    roomfile.write('  ]) );\n')

# end code here


roomfile.write('}\n')

roomfile.close
