sed 's/    / /g' < core_gen.txt | awk '{ print "python core_room.py " $0 }' > core_gen.sh
