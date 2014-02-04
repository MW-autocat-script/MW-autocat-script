#!/bin/bash

KEYWORDS_FRACTIONS="'as(| )a(| )fraction$|into(| )a(| )fraction$|in(| )simplest(| )form$|in(| )its(| )simplest(| )form$|in(| )lowest(| )terms$|reduced(| )fraction|simplest(| )form(| )of(| )[0-9]{1,}/[0-9]{1,}|[0-9]{1,}(/|\\)[0-9]{1,}(| )of(| )[0-9]{1,}|[0-9]{1,}(/|\\)[0-9]{1,}(| )(plus|minus|times|divided(| )by)(| )[0-9]{1,}(/|\\)[0-9]{1,}|[0-9]{1,}(/|\\)[0-9]{1,}(| )(plus|minus|times|divided(| )by)(| )[0-9]{1.}(| )[0-9]{1,}(/|\\)[0-9]{1,}"

if [ "$1" == "" ];
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Fractions\n"
  fi

  FRACTIONS="$(egrep -i "$KEYWORDS_FRACTIONS" newpages.txt)"

  if [ "$FRACTIONS" != "" ];
  then
    printf "%s" "$FRACTIONS" > Fractions.txt
    export CATFILE="Fractions.txt"
    export CATNAME="Fractions"
    $CATEGORIZE
    rm Fractions.txt
    unset FRACTIONS
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Fractions\n"
  fi

fi