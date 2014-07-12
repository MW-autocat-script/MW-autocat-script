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

  BACH=$(egrep -i "$KEYWORDS_BACH" newpages.txt)
  MOZART=$(egrep -i "$KEYWORDS_MOZART" newpages.txt | egrep -iv "$KEYWORDS_MOZART_EXCLUDE")
  BEETHOVEN=$(egrep -i "$KEYWORDS_BEETHOVEN"  newpages.txt | egrep -iv "$KEYWORDS_BEETHOVEN_EXCLUDE")
  COPLAND=$(egrep -i "$KEYWORDS_COPLAND" newpages.txt)
  STRAVINSKY=$(egrep -i "$KEYWORDS_STRAVINSKY" newpages.txt)

  if [ "$BACH" != "" ];
  then
    printf "%s" "$BACH" > Bach.txt
    export CATFILE="Bach.txt"
    export CATNAME="Johann Sebastian Bach"
    $CATEGORIZE
    rm Bach.txt
    unset BACH
  fi

  if [ "$MOZART" != "" ];
  then
    printf "%s" "$MOZART" > WolfgangAmadeusMozart.txt
    export CATFILE="WolfgangAmadeusMozart.txt"
    export CATNAME="Wolfgang Amadeus Mozart"
    $CATEGORIZE
    rm WolfgangAmadeusMozart.txt
    unset MOZART
  fi

  if [ "$BEETHOVEN" != "" ];
  then
    printf "%s" "$BEETHOVEN" > LudwigVanBeethoven.txt
    export CATFILE="LudwigVanBeethoven.txt"
    export CATNAME="Ludwig van Beethoven"
    $CATEGORIZE
    rm LudwigVanBeethoven.txt
    unset BEETHOVEN
  fi

  if [ "$COPLAND" != "" ];
  then
    printf "%s" "$COPLAND" > AaronCopland.txt
    export CATFILE="AaronCopland.txt"
    export CATNAME="Aaron Copland"
    $CATEGORIZE
    rm AaronCopland.txt
    unset COPLAND
  fi

  if [ "$STRAVINSKY" != "" ];
  then
    printf "%s" "$STRAVINSKY" > IgorStravinsky.txt
    export CATFILE="IgorStravinsky.txt"
    export CATNAME="Igor Stravinsky"
    $CATEGORIZE
    rm IgorStravinsky.txt
    unset STRAVINSKY
  fi

  debug_end "Composers"

fi
