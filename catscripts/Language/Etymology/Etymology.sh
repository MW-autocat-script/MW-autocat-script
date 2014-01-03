#!/bin/bash

KEYWORDS_ETYMOLOGY="etymology|etymological|Where(| )(does|did)(| )the(| )(word|phrase|saying).+(originate|come from)|origin(| )of(| )the(| )word(| )[a-z]{1,}"
KEYWORDS_NAMEORIGINS="Where(| )(does|did)(| )the(| )(sur|)name(| )[a-z]{1,}(| )(originate|come(| )from)|What(| )is(| )the(| )origin(| )of(| )the(| )name(| )[a-z]{1,}|(etymology|etymological(| )origin)(| )of(| )the(| )(|sur)name"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "" ];
  then
    printf "Starting Etymology\n"
  fi
    

  ETYMOLOGY=`egrep -i "$KEYWORDS_ETYMOLOGY" newpages.txt | egrep -iv "$KEYWORDS_NAMEORIGINS"`
  ORIGINS=`egrep -i "$KEYWORDS_NAMEORIGINS" newpages.txt`

  if [ "$ETYMOLOGY" != "" ];
  then
    printf "$ETYMOLOGY" > Etymology.txt
    export CATFILE="Etymology.txt"
    export CATNAME="Etymology"
    $CATEGORIZE
    rm Etymology.txt
    unset ETYMOLOGY
  fi

  if [ "$ORIGINS" != "" ];
  then
    printf "$ORIGINS" > NameOrigins.txt
    export CATFILE="NameOrigins.txt"
    export CATNAME="Name origins"
    $CATEGORIZE
    rm NameOrigins.txt
    unset ORIGINS
  fi

  if [ "$DEBUG" == "" ];
  then
    printf "Finishing Etymology\n"
  fi

fi