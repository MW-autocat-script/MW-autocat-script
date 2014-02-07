#!/bin/bash

KEYWORDS_STUDYLADDER="Stud(|d)(|d)y(| )lad(|d)(|d)(|d)er"

if [ "$1" == "" ];
then

  debug_start "Studyladder"

  STUDYLADDER="$(egrep -i "$KEYWORDS_STUDYLADDER" newpages.txt)"

  if [ "$STUDYLADDER" != "" ];
  then
    printf "%s" "$STUDYLADDER" > Studyladder.txt
    export CATFILE="Studyladder.txt"
    export CATNAME="Studyladder"
    $CATEGORIZE
    rm Studyladder.txt
    unset STUDYLADDER
  fi

  debug_end "Studyladder"

fi