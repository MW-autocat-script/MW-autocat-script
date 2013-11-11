#!/bin/bash

KEYWORDS_OHIO="Ohio"
KEYWORDS_CLEVELAND="Cleveland"
KEYWORDS_CLEVELAND_EXCLUDE="Cleveland(| )Brown|Grover(| )Cleveland|President(| )Cleveland"
KEYWORDS_CINCINNATI="Cincinnati"
KEYWORDS_OHIO_EXCLUDE="$KEYWORDS_CLEVELAND|$KEYWORDS_CINCINNATI"

OHIO=`egrep -i "$KEYWORDS_OHIO" newpages.txt | egrep -iv "$KEYWORDS_OHIO_EXCLUDE"`
CLEVELAND=`egrep -i "$KEYWORDS_CLEVELAND" newpages.txt | egrep -iv "$KEYWORDS_CLEVELAND_EXCLUDE"`
CINCINNATI=`egrep -i "$KEYWORDS_CINCINNATI" newpages.txt`

if [ "$OHIO" != "" ];
then
  egrep -i "$KEYWORDS_OHIO" newpages.txt | egrep -iv "$KEYWORDS_OHIO_EXCLUDE" > Ohio.txt
  export CATFILE="Ohio.txt"
  export CATNAME="Ohio"
  $CATEGORIZE
  rm Ohio.txt
fi

if [ "$CLEVELAND" != "" ];
then
  egrep -i "$KEYWORDS_CLEVELAND" newpages.txt | egrep -iv "$KEYWORDS_CLEVELAND_EXCLUDE" > Cleveland.txt
  export CATFILE="Cleveland.txt"
  export CATNAME="Cleveland"
  $CATEGORIZE
  rm Cleveland.txt
fi

if [ "$CINCINNATI" != "" ];
then
  egrep -i "$KEYWORDS_CINCINNATI" newpages.txt > Cincinnati.txt
  export CATFILE="Cincinnati.txt"
  export CATNAME="Cincinnati"
  $CATEGORIZE
  rm Cincinnati.txt
fi