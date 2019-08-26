import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--label', help='npc label', required=False)
parser.add_argument('--level', help='level', required=True)
parser.add_argument('--type', help='type', required=True)


syspath = "../gurba/lib/domains/core/objects/shop/armour/"
domain = "../../../domain.h"

args = parser.parse_args()


# BEGIN TYPE Block
if args.type == "torso":
  armortype = "plate"
if args.type == "head":
  armortype = "helmet"
if args.type == "hands":
  armortype = "gloves"
if args.type == "finger":
  armortype = "ring"
if args.type == "feet":
  armortype = "boots"
if args.type == "arm":
  armortype = "guantlets"
if args.type == "neck":
  armortype = "gorget"
if args.type == "body":
  armortype = "armour"
if args.type == "legs":
  armortype = "bracers"
if args.type == "waist":
  armortype = "faulds"

# Begin Level Block
if args.level == "1":
  material = "Bronze"
if args.level == "2":
  material = "Iron"
if args.level == "3":
  material = "Gold"
if args.level == "4":
  material = "Lead"
if args.level == "5":
  material = "Aluminum"
if args.level == "6":
  material = "Tungsten"
if args.level == "7":
  material = "Iron-Carbide"
if args.level == "8":
  material = "Mithril"
if args.level == "9":
  material = "Tungsten-Carbide"
if args.level == "10":
  material = "Mithril-Titanium"
if args.level == "11":
  material = "Aluminum-Titanium"
if args.level == "12":
  material = "Titanium-Carbide"
if args.level == "13":
  material = "Ubobtanium"
if args.level == "14":
  material = "Aluminum-Unobtainium"
if args.level == "15":
  material = "Tungsten-Unobtanium"
if args.level == "16":
  material = "Titanium-Unobtanium"
if args.level == "17":
  material = "Mogium"
if args.level == "18":
  material = "Mogium-Titanium"
if args.level == "19":
  material = "Tungsten-Mogium"
if args.level == "20":
  material = "Mogium-Unobtanium"



armorname = armortype + args.level

armorfile = open(syspath + armorname + ".c", "w")

armorfile.write('inherit "/std/armor";\n\n')
armorfile.write('#include "' + domain + '"\n\n')

armorfile.write('void setup(void) {\n')
armorfile.write('  set_id("' + armortype + '");\n')
armorfile.write('  set_adj("' + material + '");\n')
armorfile.write('  add_id("armour");\n')
armorfile.write('  add_id("' + material + '");\n')
armorfile.write('  add_id("' + material + ' ' + armortype +'");\n')

if args.level:
    armorfile.write('  set_ac(' + args.level + ');\n')
    armorfile.write('  set_value(' + str((int(args.level) * int(args.level)) * 200 ) + ');\n')
    armorfile.write('  set_size(' + str(args.level) + ');\n')
    armorfile.write('  set_weight(' + str(int(args.level) * 10) + ');\n')

if args.type:
    armorfile.write('  set_slot("' + args.type + '");\n')

armorfile.write('  set_short("A ' + material + ' ' + armortype + '");\n')
armorfile.write('  set_long("A ' + material + ' ' + armortype + '");\n')

# end code here
armorfile.write('}\n')

armorfile.close
