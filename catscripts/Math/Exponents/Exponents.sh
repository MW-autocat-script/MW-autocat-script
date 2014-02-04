#!/bin/bash

KEYWORDS_EXPONENTS="exponent|[0-9]{1,}(| )to(| )the(| )(-|)[0-9]{1,}(|st|nd|rd|th)(| )power|\^[0-9]{1,}"

if [ "$1" == "" ];
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Exponentns\n"
  fi

  EXPONENTS="$(egrep -i "$KEYWORDS_EXPONENTS" newpages.txt)"

  if [ "$EXPONENTS" != "" ];
  then
    printf "%s" "$EXPONENTS" > Exponents.txt
    export CATFILE="Exponents.txt"
    export CATNAME="Exponents"
    $CATEGORIZE
    rm Exponents.txt
    unset EXPONENTS
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Exponentns\n"
  fi

fi
