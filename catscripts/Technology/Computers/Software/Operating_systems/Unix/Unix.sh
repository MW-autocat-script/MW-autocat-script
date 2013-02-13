#!/bin/bash

egrep -i '\bUnix' newpages.txt >> Unix.txt #Begin with word boundary so LUnix is not placed here
egrep -i '\bcron\b|crontab|anacron\b|\binit\b|fsck' newpages.txt | egrep -iv 'Linux|BSD' >> Unix.txt
egrep -i 'Xenix' newpages.txt >> Unix.txt #Old-skool Microsoft / AT&T Unix
egrep -i 'Solaris|SunOS|\bSun OS' newpages.txt >> Unix.txt #Sun Microsystems / Oracle
egrep -i 'IRIX' newpages.txt >> Unix.txt #SGI
egrep -i '\bAIX' newpages.txt >> Unix.txt #IBM
egrep -i 'HP( |-)UX' newpages.txt >> Unix.txt #Hewlett-Packard
egrep -i 'Tru64' newpages.txt >> Unix.txt #DEC (now Hewlett-Packard)
egrep -i 'OpenServer' newpages.txt >> Unix.txt #SCO Group
#cat newpages.txt | egrep -i 'Mac OS X' >> Unix.txt #Apple Inc. (has it's own category, so not added here)
egrep -i 'A/UX' newpages.txt >> Unix.txt #Old-skool Apple Unix

UNIX=`stat --print=%s Unix.txt`

if [ $UNIX -ne 0 ];
then
  export CATFILE="Unix.txt"
  export CATNAME="Unix"
  ./catscripts/Categorize.sh
fi

rm Unix.txt
