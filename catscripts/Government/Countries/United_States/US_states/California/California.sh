#!/bin/bash

KEYWORDS_CALIFORNIA="California"
KEYWORDS_LOSANGELES="Los(| )Angeles"
KEYWORDS_SACRAMENTO="Sacramento"
KEYWORDS_SANDIEGO="San(| )Diego"
KEYWORDS_SANFRANCISCO="San(| )Francisco"
KEYWORDS_UCLA="\bUCLA|University(| )of(| )California(|,)(| )Los(| )Angeles"
KEYWORDS_LOSANGELES_EXCLUDE="$KEYWORDS_UCLA"
KEYWORDS_CALIFORNIA_EXCLUDE="$KEYWORDS_LOSANGELES|$KEYWORDS_SACRAMENTO|$KEYWORDS_SANDIEGO|$KEYWORDS_SANFRANCISCO|$KEYWORDS_UCLA"

CALIFORNIA=`egrep -i "$KEYWORDS_CALIFORNIA" newpages.txt | egrep -iv "$KEYWORDS_CALIFORNIA_EXCLUDE"`
LOSANGELES=`egrep -i "$KEYWORDS_LOSANGELES" newpages.txt | egrep -iv "$KEYWORDS_LOSANGELES_EXCLUDE"`
SACRAMENTO=`egrep -i "$KEYWORDS_SACRAMENTO" newpages.txt`
SANDIEGO=`egrep -i "$KEYWORDS_SANDIEGO" newpages.txt`
SANFRANCISCO=`egrep -i "$KEYWORDS_SANFRANCISCO" newpages.txt`
UCLA="$(egrep -i "$KEYWORDS_UCLA" newpages.txt)"

if [ "$CALIFORNIA" != "" ];
then
  printf "%s" "$CALIFORNIA" > California.txt
  export CATFILE="California.txt"
  export CATNAME="California"
  $CATEGORIZE
  rm California.txt
  unset CALIFORNIA
fi

if [ "$LOSANGELES" != "" ];
then
  printf "%s" "$LOSANGELES" > LosAngeles.txt
  export CATFILE="LosAngeles.txt"
  export CATNAME="Los Angeles"
  $CATEGORIZE
  rm LosAngeles.txt
  unset LOSANGELES
fi

if [ "$SACRAMENTO" != "" ];
then
  printf "%s" "$SACRAMENTO" > Sacramento.txt
  export CATFILE="Sacramento.txt"
  export CATNAME="Sacramento"
  $CATEGORIZE
  rm Sacramento.txt
  unset SACRAMENTO
fi

if [ "$SANDIEGO" != "" ];
then
  printf "%s" "$SANDIEGO" > SanDiego.txt
  export CATFILE="SanDiego.txt"
  export CATNAME="San Diego"
  $CATEGORIZE
  rm SanDiego.txt
  unset SANDIEGO
fi

if [ "$SANFRANCISCO" != "" ];
then
  printf "%s" "$SANFRANCISCO" > SanFrancisco.txt
  export CATFILE="SanFrancisco.txt"
  export CATNAME="San Francisco"
  $CATEGORIZE
  rm SanFrancisco.txt
  unset SANFRANCISCO
fi

if [ "$UCLA" != "" ];
then
  printf "%s" "$UCLA" > UCLA.txt
  export CATFILE="UCLA.txt"
  export CATNAME="UCLA"
  $CATEGORIZE
  rm UCLA.txt
  unset ICLA
fi
