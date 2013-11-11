#!/bin/bash

KEYWORDS_COLORADO="Colorado"
KEYWORDS_DENVER="Denver"
KEYWORDS_COLORADO_EXCLUDE="$KEYWORDS_DENVER"
KEYWORDS_DENVER_EXCLUDE="Denver(| )Broncos|Denver(| )Nuggets|John(| )Denver"

COLORADO=`egrep -i "$KEYWORDS_COLORADO" newpages.txt | egrep -iv "$KEYWORDS_COLORADO_EXCLUDE"`
DENVER=`egrep -i "$KEYWORDS_DENVER" newpages.txt | egrep -iv "$KEYWORDS_DENVER_EXCLUDE"`

if [ "$COLORADO" != "" ];
then
  egrep -i "$KEYWORDS_COLORADO" newpages.txt | egrep -iv "$KEYWORDS_COLORADO_EXCLUDE" > Colorado.txt
  export CATFILE="Colorado.txt"
  export CATNAME="Colorado"
  $CATEGORIZE
  rm Colorado.txt
  unset COLORADO
fi

if [ "$DENVER" != "" ];
then
  egrep -i "$KEYWORDS_DENVER" newpages.txt | egrep -iv "$KEYWORDS_DENVER_EXCLUDE" > Denver.txt
  export CATFILE="Denver.txt"
  export CATNAME="Denver, Colorado"
  $CATEGORIZE
  rm Denver.txt
  unset DENVER
fi