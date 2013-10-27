#!/bin/bash


KEYWORDS_UNIX="\bUnix|Xenix|Solaris|Sun(| )OS|IRIX|\bAIX|HP(| |-)UX|Tru64|A/UX|Apple(| )Rhapsody|RhapsodyOS|NextStep|OpenServer"
KEYWORDS_UNIX_SPECIAL="\bcron\b|crontab|anacron\b|\binit\b|fsck"
KEYWORDS_UNIX_EXCLUDE="Mac(| )OS|OS(| )X"

if [ "$1" == "" ]; #Normal operation
then
  
  egrep -i "$KEYWORDS_UNIX" newpages.txt | egrep -iv "$KEYWORDS_UNIX_EXCLUDE" >> Unix.txt
  egrep -i "$KEYWORDS_UNIX_SPECIAL" newpages.txt | egrep -iv "$KEYWORDS_UNIX_EXCLUDE|Linux|BSD" >> Unix.txt #FIXME: Should fetch names of all distros from ./catscripts/Technology/Computers/Software/Operating_systems/Linux/Linux.sh

UNIX=`stat --print=%s Unix.txt`

if [ $UNIX -ne 0 ];
then
  export CATFILE="Unix.txt"
  export CATNAME="Unix"
  $CATEGORIZE
fi

rm Unix.txt
