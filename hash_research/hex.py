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
  print "-----"
  print fn
  with open(fn, 'rb') as f:
    buffer = ""
    plaintext = ""
    for chunk in iter(lambda: f.read(32), b''):
      buffer += chunk.encode('hex')
      sbuffer = buffer.split('220a70617373776f72642022')
#      xbuffer = sbuffer.split ('2022')
      plaintext += chunk
  print ">"
  print plaintext
  print buffer
#  print xbuffer
  print "-----"
