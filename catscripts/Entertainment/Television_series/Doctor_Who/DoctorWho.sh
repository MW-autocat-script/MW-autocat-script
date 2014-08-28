#!/bin/bash

KEYWORDS_DOCTORWHO="Doctor(| )Who|Dr(|\.)(| )Who|[0-9]{1,2}(th|st|rd|nd)(| )doctor|ninth(| )doctor|tenth(| )doctor|eleventh(| )doctor|twelth(| )doctor|Donna(| )Noble|doctor.+regenerate|doctor.+regenration|regnerate.+doctor|regeneration.+doctor|Amy(| )Pond|River(| )Song|Weeping(| )Angel|Dalek"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Doctor Who"

  DOCTORWHO=$(egrep -i "$KEYWORDS_DOCTORWHO" "$NEWPAGES")

  categorize "DOCTORWHO" "Doctor Who"

  debug_end "Doctor Who"

fi