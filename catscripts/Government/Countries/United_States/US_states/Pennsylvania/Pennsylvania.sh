#!/bin/bash

KEYWORDS_PENNSYLVANIA="Pe(|n)nsylva(|n)nia|Pennslyvania"
KEYWORDS_PITTSBURGH="Pittsburgh"
KEYWORDS_PITTSBURGH_EXCLUDE="Steelers|Penguins|Pirates"
KEYWORDS_PHILADELPHIA="Philadelphia"
KEYWORDS_PHILADELPHIA_EXCLUDE="Eagles"
KEYWORDS_PENNSYLVANIA_EXCLUDE="$KEYWORDS_PHILADELPHIA|$KEYWORDS_PITTSBURGH"
KEYWORDS_PENNSYLVANIA_ALL="$KEYWORDS_PENNSYLVANIA|$KEYWORDS_PHILADELPHIA|$KEYWORDS_PITTSBURGH"

if [ "$1" == "" ];
then

  debug_start "Pennsylvania"

  PENNSYLVANIA=$(egrep -i "$KEYWORDS_PENNSYLVANIA" "$NEWPAGES" | egrep -iv "$KEYWORDS_PENNSYLVANIA_EXCLUDE")
  PITTSBURGH=$(egrep -i "$KEYWORDS_PITTSBURGH" "$NEWPAGES" | egrep -iv "$KEYWORDS_PITTSBURGH_EXCLUDE")
  PHILADELPHIA=$(egrep -i "$KEYWORDS_PHILADELPHIA" "$NEWPAGES" | egrep -iv "$KEYWORDS_PHILADELPHIA_EXCLUDE")

  if [ "$PENNSYLVANIA" != "" ];
  then
    printf "%s" "$PENNSYLVANIA" > Pennsylvania.txt
    export CATFILE="Pennsylvania.txt"
    export CATNAME="Pennsylvania"
    $CATEGORIZE
    rm Pennsylvania.txt
    unset PENNSYLVANIA
  fi

  if [ "$PITTSBURGH" != "" ];
  then
    printf "%s" "$PITTSBURGH" > Pittsburgh.txt
    export CATFILE="Pittsburgh.txt"
    export CATNAME="Pittsburgh"
    $CATEGORIZE
    rm Pittsburgh.txt
    unset PITTSBURGH
  fi

  if [ "$PHILADELPHIA" != "" ];
  then
    printf "%s" "$PHILADELPHIA" > Philadelphia.txt
    export CATFILE="Philadelphia.txt"
    export CATNAME="Philadelphia"
    $CATEGORIZE
    rm Philadelphia.txt
    unset PHILADELPHIA
  fi

  debug_end "Pennsylvania"

fi