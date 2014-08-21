#!/bin/bash

#This script finds all questions that do not start with a pre-determined "question" word

KEYWORDS_INTSTART="^(Who\b|What|When|Where|Why|How\b|Do\b|Does|Would|Were\b|Are\b|Is\b|Was\b|Can\b|Did\b|Which|Could|Should\b|Has\b|Have\b|Will\b)"

if [ "$1" == "" ];
then

  debug_start "Page titles not starting with an interrogative word"

  INTSTART=$(egrep -iv "$KEYWORDS_INTSTART" "$NEWPAGES")

  categorize "INTSTART" "Page titles not starting with an interrogative word"

  debug_end "Page titles not starting with an interrogative word"

fi