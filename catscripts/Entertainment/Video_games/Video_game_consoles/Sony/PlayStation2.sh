#!/bin/bash
KEYWORDS_PS2="PlayStation 2|Play Station 2|\bPS2|\bPS 2\b"
KEYWORDS_PS2_EXCLUDE="PS(| )2(| )(mouse|port|keyboard)"

egrep -i "$KEYWORDS_PS2" newpages.txt | egrep -iv "$KEYWORDS_PS2_EXCLUDE" >> PlayStation2.txt

PS2=`stat --print=%s PlayStation2.txt`

if [ $PS2 -ne 0 ];
then
  export CATFILE="PlayStation2.txt"
  export CATNAME="PlayStation 2"
  $CATEGORIZE
fi

rm PlayStation2.txt