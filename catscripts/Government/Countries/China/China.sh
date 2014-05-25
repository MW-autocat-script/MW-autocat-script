#!/bin/bash

KEYWORDS_CHINA="People(|')s(| )Republic(| )of(| )China"
KEYWORDS_CHINA_SECONDARY="China"
KEYWORDS_HONGKONG="Hong(| )Kong"
KEYWORDS_BEIJING="Beijing"
KEYWORDS_GREATWALL="Great(| )Wall(| )of(| )China"
KEYWORDS_CHINA_SECONDARY_EXCLUDE="Republic(| )of(| )China|fine(| )china|antique(| )china|China(| )town|$KEYWORDS_HONGKONG|$KEYWORDS_BEIJING|$KEYWORDS_GREATWALL"
KEYWORDS_CHINA_ALL="$KEYWORDS_CHINA|$KEYWORDS_CHINA_SECONDARY|$KEYWORDS_HONGKONG|$KEYWORDS_BEIJING|$KEYWORDS_GREATWALL"


if [ "$1" == "" ];
then
  
  debug_start "China"

  CHINA=$(egrep -i "$KEYWORDS_CHINA" newpages.txt)
  CHINASECONDARY=$(egrep -i "$KEYWORDS_CHINA_SECONDARY" newpages.txt | egrep -iv "$KEYWORDS_CHINA_SECONDARY_EXCLUDE")
  WALL=$(egrep -i "$KEYWORDS_GREATWALL" newpages.txt)
  BEIJING=$(egrep -i "$KEYWORDS_BEIJING" newpages.txt)
  HONGKONG=$(egrep -i "$KEYWORDS_HONGKONG" newpages.txt)

  if [ "$CHINA" != "" ];
  then
    printf "%s" "$CHINA" > China.txt
    export CATFILE="China.txt"
    export CATNAME="China"
    $CATEGORIZE
    rm China.txt
    unset CHINA
  fi

  if [ "$CHINASECONDARY" != "" ];
  then
    printf "%s" "$CHINASECONDARY" > China.txt
    export CATFILE="China.txt"
    export CATNAME="China"
    $CATEGORIZE
    rm China.txt
    unset CHINASECONDARY
  fi

  if [ "$WALL" != "" ];
  then
    printf "%s" "$WALL" > GreatWall.txt
    export CATFILE="GreatWall.txt"
    export CATNAME="Great Wall of China"
    $CATEGORIZE
    rm GreatWall.txt
    unset WALL
  fi

  if [ "$BEIJING" != "" ];
  then
    printf "%s" "$BEIJING" > Beijing.txt
    export CATFILE="Beijing.txt"
    export CATNAME="Beijing"
    $CATEGORIZE
    rm Beijing.txt
    unset BEIJING
  fi

  if [ "$HONGKONG" != "" ];
  then
    printf "%s" "$HONGKONG" > HongKong.txt
    export CATFILE="HongKong.txt"
    export CATNAME="Hong Kong"
    $CATEGORIZE
    rm HongKong.txt
    unset HONGKONG
  fi

  debug_end "China"

fi

