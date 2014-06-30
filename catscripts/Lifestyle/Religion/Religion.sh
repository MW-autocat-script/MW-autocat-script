#!/bin/bash


RELIGIONDIR="./catscripts/Lifestyle/Religion"
KEYWORDS_RELIGION="religion|religious"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Religion"

  . $RELIGIONDIR/Buddhism/Buddhism.sh
  . $RELIGIONDIR/Christianity/Christianity.sh #KEYWORDS_CHRISTIANITY_ALL
  . $RELIGIONDIR/Hinduism/Hinduism.sh
  . $RELIGIONDIR/Islam/Islam.sh
  . $RELIGIONDIR/Jainism/Jainism.sh
  . $RELIGIONDIR/Judaism/Judaism.sh #KEYWORDS_JUDAISM_ALL
  . $RELIGIONDIR/Scientology/Scientology.sh #KEYWORDS_SCIENTOLOGY_ALL
  . $RELIGIONDIR/Sikhism/Sikhism.sh
  . $RELIGIONDIR/The_Bible/TheBible.sh
  . $RELIGIONDIR/Wicca/Wicca.sh #KEYWORDS_WICCA

  KEYWORDS_RELIGION_EXCLUDE="$KEYWORDS_CHRISTIANITY_ALL|$KEYWORDS_JUDAISM_ALL|Shinto|Sikh|god|buddhism|buddhist|hindu|jain(|s|ism)\b|islam|Muslim|Prophet (Muhammed|Muhammad)|$KEYWORDS_SCIENTOLOGY_ALL|$KEYWORDS_WICCA"

  RELIGION=$(egrep -i "$KEYWORDS_RELIGION" newpages.txt | egrep -iv "$KEYWORDS_RELIGION_EXCLUDE")

  if [ "$RELIGION" != "" ];
  then
    printf "%s" "$RELIGION" > Religion.txt
    export CATFILE="Religion.txt"
    export CATNAME="Religion"
    $CATEGORIZE
    rm Religion.txt
    unset RELIGION
  fi

  debug_end "Religion"

fi
