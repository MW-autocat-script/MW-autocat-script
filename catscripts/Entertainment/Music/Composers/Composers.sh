#!/bin/bash
#Categorization script for composers of music

KEYWORDS_BACH="\bBach\b"
KEYWORDS_BEETHOVEN="Beethoven"
KEYWORDS_BEETHOVEN_EXCLUDE="Bernard|breed|dog"
KEYWORDS_MOZART="Wolfgang|Amadeus|Mozart"
KEYWORDS_MOZART_EXCLUDE="Rock(| )Me|Puck"
KEYWORDS_COPLAND="Aaron(| )Copland"
KEYWORDS_STRAVINSKY="Igor(| )Stravinksy"

if [ "$1" == "" ];
then

  debug_start "Composers"

  BACH=$(egrep -i "$KEYWORDS_BACH" "$NEWPAGES")
  MOZART=$(egrep -i "$KEYWORDS_MOZART" "$NEWPAGES" | egrep -iv "$KEYWORDS_MOZART_EXCLUDE")
  BEETHOVEN=$(egrep -i "$KEYWORDS_BEETHOVEN"  "$NEWPAGES" | egrep -iv "$KEYWORDS_BEETHOVEN_EXCLUDE")
  COPLAND=$(egrep -i "$KEYWORDS_COPLAND" "$NEWPAGES")
  STRAVINSKY=$(egrep -i "$KEYWORDS_STRAVINSKY" "$NEWPAGES")

  categorize "BACH" "Johann Sebastian Bach"
  categorize "MOZART" "Wolfgang Amadeus Mozart"
  categorize "BEETHOVEN" "Ludwig van Beethoven"
  categorize "COPLAND" "Aaron Copland"
  categorize "STRAVINSKY" "Igor Stravinsky"

  debug_end "Composers"

fi
