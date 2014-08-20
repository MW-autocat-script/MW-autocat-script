#!/bin/bash

KEYWORDS_MINECRAFT="Mine(| )craft"
KEYWORDS_TEKKIT="Tekkit"
KEYWORDS_SAINTSROW="Saints(| )Row"
KEYWORDS_SAINTSROW2="Saints(| )Row(| )2"
KEYWORDS_SAINTSROW3="Saints(| )Row(| )(|:)(The(| )Third|3)"
KEYWORDS_SAINTSROW4="Saints(| )Row(| )(4|IV)"
KEYWORDS_SAINTSROW_EXCLUDE="$KEYWORDS_SAINTSROW2|$KEYWORDS_SAINTSROW3|$KEYWORDS_SAINTSROW4"

if [ "$1" == "" ];
then

  debug_start "Open-world video games"

  MINECRAFT=$(egrep -i "$KEYWORDS_MINECRAFT" "$NEWPAGES")
  TEKKIT=$(egrep -i "$KEYWORDS_TEKKIT" "$NEWPAGES")
  SAINTSROW=$(egrep -i "$KEYWORDS_SAINTSROW" "$NEWPAGES" | egrep -iv "$KEYWORDS_SAINTSROW_EXCLUDE")
  ROW2=$(egrep -i "$KEYWORDS_SAINTSROW2" "$NEWPAGES")
  THETHIRD=$(egrep -i "$KEYWORDS_SAINTSROW3" "$NEWPAGES" )
  ROW4=$(egrep -i "$KEYWORDS_SAINTSROW4" "$NEWPAGES")

  if [ "$MINECRAFT" != "" ];
  then
    printf "%s" "$MINECRAFT" > Minecraft.txt
    export CATFILE="Minecraft.txt"
    export CATNAME="Minecraft"
    $CATEGORIZE
    rm Minecraft.txt
    unset MINECRAFT
  fi

  if [ "$TEKKIT" != "" ];
  then
    printf "%s" "$TEKKIT" > Tekkit.txt
    export CATFILE="Tekkit.txt"
    export CATNAME="Tekkit"
    $CATEGORIZE
    rm Tekkit.txt
    unset TEKKIT
  fi

  if [ "$SAINTSROW" != "" ];
  then
    printf "%s" "$SAINTSROW" > SaintsRow.txt
    export CATFILE="SaintsRow.txt"
    export CATNAME="Saints Row"
    $CATEGORIZE
    rm SaintsRow.txt
    unset SAINTSROW
  fi

  if [ "$ROW2" != "" ];
  then
    printf "%s" "$ROW2" > SaintsRow2.txt
    export CATFILE="SaintsRow2.txt"
    export CATNAME="Saints Row 2"
    $CATEGORIZE
    rm SaintsRow2.txt
    unset ROW2
  fi

  if [ "$THETHIRD" != "" ];
  then
    printf "%s" "$THETHIRD" > SaintsRow3.txt
    export CATFILE="SaintsRow3.txt"
    export CATNAME="Saints Row: The Third"
    $CATEGORIZE
    rm SaintsRow3.txt
    unset THETHIRD
  fi

  if [ "$ROW4" != "" ];
  then
    printf "%s" "$ROW4" > SaintsRow4.txt
    export CATFILE="SaintsRow4.txt"
    export CATNAME="Saints Row IV"
    $CATEGORIZE
    rm SaintsRow4.txt
    unset ROW4
  fi

  debug_end "Open-world video games"

fi
