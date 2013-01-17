#!/bin/bash

cat newpages.txt | egrep -i '\bUnix' >> Unix.txt #Begin with word boundary so LUnix is not placed here
cat newpages.txt | egrep -i 'Xenix' >> Unix.txt #Old-skool Microsoft / AT&T Unix
cat newpages.txt | egrep -i 'Solaris|SunOS|\bSun OS' >> Unix.txt #Sun Microsystems / Oracle
cat newpages.txt | egrep -i 'IRIX' >> Unix.txt #SGI
cat newpages.txt | egrep -i 'AIX' >> Unix.txt #IBM
cat newpages.txt | egrep -i 'HP( |-)UX' >> Unix.txt #Hewlett-Packard
cat newpages.txt | egrep -i 'Tru64' >> Unix.txt #DEC (now Hewlett-Packard)
cat newpages.txt | egrep -i 'OpenServer' >> Unix.txt #SCO Group
#cat newpages.txt | egrep -i 'Mac OS X' >> Unix.txt #Apple Inc. (has it's own category, so not added here)
cat newpages.txt | egrep -i 'A/UX' >> Unix.txt #Old-skool Apple Unix

UNIX=`stat --print=%s Unix.txt`

if [ $UNIX -ne 0 ];
then
  export CATFILE="Unix.txt"
  export CATNAME="Unix"
  ./catscripts/Categorize.sh
fi

rm Unix.txt