import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--name', help='npc name', required=True)
parser.add_argument('--level', help='level', required=True)
parser.add_argument('--short', help='short desc', required=True)
parser.add_argument('--scolor', help='short desc color', required=False)
parser.add_argument('--long', help='long desc', required=True)
parser.add_argument('--lcolor', help='long desc color', required=False)
parser.add_argument('--gender', help='gender', required=True)

syspath = "/Users/dustin.heywood1@ibm.com/git/gurba/lib/domains/core/monsters/"
domain = "../domain.h"

args = parser.parse_args()

print args.name
mob_race = "human"
mob_level = str(args.level)
mob_gender = str(args.level)
mob_skill = str(int(mob_level) * 5)

npcfile = open(syspath + args.name + ".c", "w")

npcfile.write('inherit "/std/monster";\n\n')
npcfile.write('#include "' + domain + '"\n\n')

npcfile.write('void setup(void) {\n')
npcfile.write('  set_name("' + args.name + '");\n')
npcfile.write('  add_adj("' + mob_race + '");\n')

if args.scolor is None:
    npcfile.write('  set_short( "' + args.short + '" );\n')
else:
    npcfile.write('  set_short( "%^' + args.scolor + '%^' + args.short + '%^RESET%^" );\n')

if args.lcolor is None:
    npcfile.write('  set_long( "' + args.long + '" );\n\n')
else:
    npcfile.write('  set_long( "%^' + args.lcolor + '%^' + args.long + '%^RESET%^" );\n\n')

npcfile.write('  set_gender("' + args.gender + '");\n')
npcfile.write('  set_race("' + mob_race + '");\n\n')
npcfile.write('  set_level(' + str(args.level) + ');\n\n')
npcfile.write('  set_hit_skill("' + "combat/unarmed" + '");\n')
npcfile.write('  set_skill("' + "combat/unarmed" + '", ' + mob_skill + ');\n')
npcfile.write('  set_skill("' + "combat/defense" + '", ' + mob_skill + ');\n')

# end code here
npcfile.write('}\n')

npcfile.close
