from os import listdir
from os.path import isfile, join

from os import walk

fl = []
for (dirpath, dirnames, filenames) in walk("."):
    fl.extend(filenames)
    break

def toHex(s):
     lst = []
     for ch in s:
         hv = hex(ord(ch)).replace('0x', '')
         if len(hv) == 1:
             hv = '0'+hv
         lst.append(hv)

     return reduce(lambda x,y:x+y, lst)


for line in fl:
  f = open(line, "r")
  lines = f.readlines()
  f.close
  f.close()
  hash = toHex(lines[1].split(' ')[1].rstrip())[2:-2]
  username = lines[0].split('"')[1]
  print username+":"+hash

