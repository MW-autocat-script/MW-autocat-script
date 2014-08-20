#!/bin/bash

KEYWORDS_OHIO="Ohio"
KEYWORDS_CLEVELAND="Cleveland"
KEYWORDS_CLEVELAND_EXCLUDE="Cleveland(| )Brown|Grover(| )Cleveland|President(| )Cleveland|The(| )Cleveland(| )Show|Cleveland(|,)(| )Georgia|Mount(| )Cleveland|Cleveland(| )Hills"
KEYWORDS_CINCINNATI="Cincinnati"
KEYWORDS_CINCINNATI_EXCLUDE="Cincinnati(| )Bengals"
KEYWORDS_OHIO_EXCLUDE="$KEYWORDS_CLEVELAND|$KEYWORDS_CINCINNATI"

if [ "$1" == "" ];
then

  debug_start "Ohio"

  OHIO=$(egrep -i "$KEYWORDS_OHIO" "$NEWPAGES" | egrep -iv "$KEYWORDS_OHIO_EXCLUDE")
  CLEVELAND=$(egrep -i "$KEYWORDS_CLEVELAND" "$NEWPAGES" | egrep -iv "$KEYWORDS_CLEVELAND_EXCLUDE")
  CINCINNATI=$(egrep -i "$KEYWORDS_CINCINNATI" "$NEWPAGES" | egrep -iv "$KEYWORDS_CINCINNATI_EXCLUDE")

  if [ "$OHIO" != "" ];
  then
    printf "%s" "$OHIO" > Ohio.txt
    export CATFILE="Ohio.txt"
    export CATNAME="Ohio"
    $CATEGORIZE
    rm Ohio.txt
    unset OHIO
  fi

  if [ "$CLEVELAND" != "" ];
  then
    printf "%s" "$CLEVELAND" > Cleveland.txt
    export CATFILE="Cleveland.txt"
    export CATNAME="Cleveland"
    $CATEGORIZE
    rm Cleveland.txt
    unset CLEVELAND
  fi

  if [ "$CINCINNATI" != "" ];
  then
    printf "%s" "$CINCINNATI" > Cincinnati.txt
    export CATFILE="Cincinnati.txt"
    export CATNAME="Cincinnati"
    $CATEGORIZE
    rm Cincinnati.txt
    unset CINCINNATI
  fi

  debug_end "Ohio"

fi