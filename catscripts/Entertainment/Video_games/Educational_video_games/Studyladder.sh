#!/bin/bash

KEYWORDS_STUDYLADDER="Stud(|d)(|d)y(| )lad(|d)(|d)(|d)er"

if [ "$1" == "" ];
then

  debug_start "Studyladder"

  STUDYLADDER=$(egrep -i "$KEYWORDS_STUDYLADDER" "$NEWPAGES")

  categorize "STUDYLADDER" "Studyladder"

  debug_end "Studyladder"

fi