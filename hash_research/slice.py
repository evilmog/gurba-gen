from os import listdir
from os.path import isfile, join

from os import walk

fl = []
for (dirpath, dirnames, filenames) in walk("hashes"):
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
  fn = "hashes/" + line
  f = open(fn, "r")
  lines = f.readlines()
  f.close()
  raw = toHex(lines[1]).rstrip()
  username = lines[0].rstrip().split('"')[1]
  print lines[1]
  print raw+":"+username
