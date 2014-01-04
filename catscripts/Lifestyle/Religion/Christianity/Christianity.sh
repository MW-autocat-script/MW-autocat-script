#!/bin/bash

KEYWORDS_CHRISTIANITY="Christianity|Jesus|Greek Orthodox|Russian Orthodox|Jehovah(|')s Witness"
KEYWORDS_ANGLICAN="Anglican|Church(| )of(| )England"
KEYWORDS_CATHOLICISM="Catholic|Vatican|\bpope(|s)\b|papal"
KEYWORDS_CATHOLICISM_EXCLUDE="Alexander Pope"
KEYWORDS_LUTHERANISM="Martin(| )Luther|Lutheran|(95|Ninety-Five)(| )Theses"
KEYWORDS_LUTHERANISM_EXCLUDE="Martin(| )Luther(| )King"
KEYWORDS_MORMONISM="Mormon|Latter(-| )Day(| )(|saint)"
KEYWORDS_AMISH="Amish|Mennonite"
KEYWORDS_CHRISTMAS="Christmas|X-mas|Santa(| )Claus"
KEYWORDS_CHRISTMAS_EXCLUDE="Christmas(| )(Island|Cactus)"
KEYWORDS_CHRISTIANITY_EXCLUDE="$KEYWORDS_AMISH|$KEYWORDS_ANGLICAN|$KEYWORDS_CATHOLICISM|$KEYWORDS_CHRISTMAS|$KEYWORDS_LUTHERANISM|$KEYWORDS_MORMONISM"
KEYWORDS_CHRISTIANITY_ALL="$KEYWORDS_CHRISTIANITY|$KEYWORDS_AMISH|$KEYWORDS_ANGLICAN|$KEYWORDS_CATHOLICISM|$KEYWORDS_CHRISTMAS|$KEYWORDS_LUTHERANISM|$KEYWORDS_MORMONISM"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Christianity\n"
  fi

  CHRISTIANITY=`egrep -i "$KEYWORDS_CHRISTIANITY" newpages.txt | egrep -iv "$KEYWORDS_CHRISTIANITY_EXCLUDE"`
  ANGLICAN=`egrep -i "$KEYWORDS_ANGLICAN" newpages.txt`
  CATHOLICISM=`egrep -i "$KEYWORDS_CATHOLICISM" newpages.txt | egrep -iv "$KEYWORDS_CATHOLICISM_EXCLUDE"`
  LUTHERANISM=`egrep -i "$KEYWORDS_LUTHERANISM" newpages.txt | egrep -iv "$KEYWORDS_LUTHERANISM_EXCLUDE"`
  MORMONISM=`egrep -i "$KEYWORDS_MORMONISM" newpages.txt`
  AMISH=`egrep -i "$KEYWORDS_AMISH" newpages.txt`
  CHRISTMAS=`egrep -i "$KEYWORDS_CHRISTMAS" newpages.txt`


  if [ "$CHRISTIANITY" != "" ];
  then
    printf "$CHRISTIANITY" > Christianity.txt
    export CATFILE="Christianity.txt"
    export CATNAME="Christianity"
    $CATEGORIZE
    rm Christianity.txt
    unset CHRISTIANITY
  fi

  if [ "$ANGLICAN" != "" ];
  then
    printf "$ANGLICAN" > Anglican.txt
    export CATFILE="Anglican.txt"
    export CATNAME="Anglican"
    $CATEGORIZE
    rm Anglican.txt
    unset ANGLICAN
  fi

  if [ "$CATHOLICISM" != "" ];
  then
    printf "$KEYWORDS_CATHOLICISM" > Catholicism.txt
    export CATFILE="Catholicism.txt"
    export CATNAME="Catholicism"
    $CATEGORIZE
    rm Catholicism.txt
    unset CATHOLICISM
  fi

  if [ "$LUTHERANISM" != "" ];
  then
    printf "$LUTHERANISM" > Lutheranism.txt
    export CATFILE="Lutheranism.txt"
    export CATNAME="Lutheranism"
    $CATEGORIZE
    rm Lutheranism.txt
    unset LUTHERANISM
  fi

  if [ "$MORMONISM" != "" ];
  then
    printf "$MORMONISM" > Mormonism.txt
    export CATFILE="Mormonism.txt"
    export CATNAME="Mormonism"
    $CATEGORIZE
    rm Mormonism.txt
    unset MORMONISM
  fi

  if [ "$AMISH" != "" ];
  then
    printf "$AMISH" > Amish.txt
    export CATFILE="Amish.txt"
    export CATNAME="Amish and Mennonites"
    $CATEGORIZE
    rm Amish.txt
    unset AMISH
  fi

  if [ "$CHRISTMAS" != "" ];
  then
    printf "$CHRISTMAS" > Christmas.txt
    export CATFILE="Christmas.txt"
    export CATNAME="Christmas"
    $CATEGORIZE
    rm Christmas.txt
    unset CHRISTMAS
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Christianity\n"
  fi

fi