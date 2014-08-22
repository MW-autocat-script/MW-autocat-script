#!/bin/bash

#This script attempts to find questions that span multiple sentences.
#Although there is nothing wrong with this, many test questions follow the same
#pattern, and can't be found/blocked any other way. Therefore, we will try to
#find all examples and place them in a maintenance category. Most of them can
#stand to be reworded, anyway

KEYWORDS_COMPOUNDQUESTION="\.(| )(Who|What|When|Where|Why|How|Do(|es)|Can|Each|There|Where|Were(n|))\b"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Compound questions"

  COMPOUNDQUESTION=$(egrep -i "$KEYWORDS_COMPOUNDQUESTION" "$NEWPAGES")

  categorize "COMPOUNDQUESTION" "Compound questions"

  debug_end "Compound questions"

fi