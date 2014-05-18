#!/bin/bash

KEYWORDS_FORD="Ford(| )Motor(| )Company"
KEYWORDS_TAURUS="Ford(| )Taurus|[0-9]{2,4}(| )Taurus"
KEYWORDS_ESCORT="Ford(| )Escort|[0-9]{2,4}(| )Escort"
KEYWORDS_FOCUS="Ford(| )Focus|[0-9]{2,4}(| )Focus"
KEYWORDS_MUSTANG="Ford(| )Mustang|[0-9]{2,4}(| )Mustang"
KEYWORDS_CONTOUR="Ford(| )Contour|[0-9]{2,4}(| )Contour"
KEYWORDS_MONDEO="Mondeo"

if [ "$1" == "" ];
then

  debug_start "Ford"

  FORD=$(egrep -i "$KEYWORDS_FORD" newpages.txt)
  TAURUS=$(egrep -i "$KEYWORDS_TAURUS" newpages.txt)
  ESCORT=$(egrep -i "$KEYWORDS_ESCORT" newpages.txt)
  FOCUS=$(egrep -i "$KEYWORDS_FOCUS" newpages.txt)
  MUSTANG=$(egrep -i "$KEYWORDS_MUSTANG" newpages.txt)
  CONTOUR=$(egrep -i "$KEYWORDS_CONTOUR" newpages.txt)
  #MONDEO=$(egrep -i "$KEYWORDS_MONDEO" newpages.txt) #No category exists and currently insufficient number of questions to create

  if [ "$FORD" != "" ];
  then
    printf "%s" "$FORD" > Ford.txt
    export CATFILE="Ford.txt"
    export CATNAME="Ford"
    $CATEGORIZE
    rm Ford.txt
    unset FORD
  fi

  if [ "$TAURUS" != "" ];
  then
    printf "%s" "$TAURUS" > FordTaurus.txt
    export CATFILE="FordTaurus.txt"
    export CATNAME="Ford Taurus"
    $CATEGORIZE
    rm FordTaurus.txt
    unset TAURUS
  fi

  if [ "$ESCORT" != "" ];
  then
    printf "%s" "$ESCORT" > FordEscort.txt
    export CATFILE="FordEscort.txt"
    export CATNAME="Ford Escort"
    $CATEGORIZE
    rm FordEscort.txt
    unset ESCORT
  fi

  if [ "$FOCUS" != "" ];
  then
    printf "%s" "$FOCUS" > FordFocus.txt
    export CATFILE="FordFocus.txt"
    export CATNAME="Ford Focus"
    $CATEGORIZE
    rm FordFocus.txt
    unset FOCUS
  fi

  if [ "$MUSTANG" != "" ];
  then
    printf "%s" "$MUSTANG" > FordMustang.txt
    export CATFILE="FordMustang.txt"
    export CATNAME="Ford Mustang"
    $CATEGORIZE
    rm FordMustang.txt
    unset MUSTANG
  fi

  if [ "$CONTOUR" != "" ];
  then
    printf "%s" "$CONTOUR" > FordContour.txt
    export CATFILE="FordContour.txt"
    export CATNAME="Ford Contour"
    $CATEGORIZE
    rm FordContour.txt
    unset CONTOUR
  fi

  #if [ "$MONDEO" != "" ];
  #then
  #  printf "%s" "$MONDEO" > FordMondeo.txt
  #  export CATFILE="FordMondeo.txt"
  #  export CATNAME="Ford Mondeo"
  #  $CATEGORIZE
  #  rm FordMondeo.txt
  #  unset MONDEO
  #fi

  debug_end "Ford"

fi