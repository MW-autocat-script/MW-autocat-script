#!/bin/bash

KEYWORDS_CUSTOMARY="inch|foot|feet|yard|mile|acre|fathom|ounce|quart|gallon|pound|ton|\bft\b|\byds\b|\bin\b"
KEYWORDS_METRIC="gram|lit(re|er)|met(er|re)|\bml\b|nl\b"
KEYWORDS_SIPREFIX="deci|centi|milli|micro|nano|femto|atto|zepto|yocto|deca|hecto|kilo|mega|giga|tera|peta|exa|zetta|yotta"
KEYWORDS_MEASUREMENTCONVERSION="($KEYWORDS_SIPREFIX|cubic|)(| )($KEYWORDS_METRIC|$KEYWORDS_CUSTOMARY)(es|s|)(| )is(| )how(| )(many|much)(| )($KEYWORDS_SIPREFIX|cubic|)(| )($KEYWORDS_METRIC|$KEYWORDS_CUSTOMARY)|equals(| )how(| )many(| )($KEYWORDS_SIPREFIX|cubic|)(| )($KEYWORDS_METRIC|$KEYWORDS_CUSTOMARY)"

if [ "$1" == "" ];
then

  debug_start "Measurements"

  CONVERSIONS=$(egrep -i "$KEYWORDS_MEASUREMENTCONVERSION" "$NEWPAGES")

  if [ "$CONVERSIONS" != "" ];
  then
    printf "%s" "$CONVERSIONS" > MeasurementConversions.txt
    export CATFILE="MeasurementConversions.txt"
    export CATNAME="Measurement conversions"
    $CATEGORIZE
    rm MeasurementConversions.txt
    unset CONVERSIONS
  fi

  debug_end "Measurements"

fi