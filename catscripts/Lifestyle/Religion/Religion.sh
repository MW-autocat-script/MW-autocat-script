#!/bin/bash


RELIGIONDIR="./catscripts/Lifestyle/Religion"
KEYWORDS_RELIGION="religion|religious"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Religion"

  . $RELIGIONDIR/Buddhism/Buddhism.sh #KEYWORDS_BUDDHISM_ALL
  . $RELIGIONDIR/Christianity/Christianity.sh #KEYWORDS_CHRISTIANITY_ALL
  . $RELIGIONDIR/Hinduism/Hinduism.sh #KEYWORDS_HINDUISM_ALL
  . $RELIGIONDIR/Islam/Islam.sh #KEYWORDS_ISLAM_ALL
  . $RELIGIONDIR/Jainism/Jainism.sh #KEYWORDS_JAINISM_ALL
  . $RELIGIONDIR/Judaism/Judaism.sh #KEYWORDS_JUDAISM_ALL
  . $RELIGIONDIR/Scientology/Scientology.sh #KEYWORDS_SCIENTOLOGY_ALL
  . $RELIGIONDIR/Sikhism/Sikhism.sh #KEYWORDS_SIKHISM_ALL
  . $RELIGIONDIR/The_Bible/TheBible.sh #KEYWORDS_BIBLE_ALL
  . $RELIGIONDIR/Wicca/Wicca.sh #KEYWORDS_WICCA

  KEYWORDS_RELIGION_EXCLUDE="$KEYWORDS_BUDDHISM_ALL|$KEYWORDS_CHRISTIANITY_ALL|$KEYWORDS_HINDUISM_ALL|$KEYWORDS_ISLAM_ALL|$KEYWORDS_JAINISM_ALL|$KEYWORDS_JUDAISM_ALL|god|$KEYWORDS_SCIENTOLOGY_ALL|$KEYWORDS_SIKHISM_ALL|$KEYWORDS_BIBLE_ALL|$KEYWORDS_WICCA"

  RELIGION=$(egrep -i "$KEYWORDS_RELIGION" "$NEWPAGES" | egrep -iv "$KEYWORDS_RELIGION_EXCLUDE")

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
