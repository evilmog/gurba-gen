# Open the file with read only permit
f = open('directions_gen.txt', 'r')

lines = f.readlines()

for line in lines:
  name=line.rstrip().split(':')[0]
  exits=line.rstrip().split(':')[1].split(',')

  exitcode = str(" ")
  lexit = str("")

  for exit in exits:
    if exit == 'nw':
      exitcode = "--northwest 1 "
    if exit == 'n':
      exitcode = "--north 1 "
    if exit == 'ne':
      exitcode = "--northeast 1 "
    if exit == 'w':
      exitcode = "--west 1 "
    if exit == 'e':
      exitcode = "--east 1 "
    if exit == 'sw':
      exitcode = "--southwest 1 "
    if exit == 's':
      exitcode = "--south 1 "
    if exit == 'se':
      exitcode = "--southeast 1 "
    lexit += exitcode

  print "python room_p.py --area sewer --name " + name + " " + str(lexit)

