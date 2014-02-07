#!/bin/bash

egrep -i '(yard(|s)|feet|foot|cm|centimeters|centimetres|meters|kilometer(|s)|mile(|s)|gram(|s)|cup(|s)|ml(|\.)|mililiter(|s)|inches) is how many (inches|feet|yards|kilometer(|s)|mile(|s)|gram(|s)|meter(|s)|pound(|s)|lbs(|\.)|cup(|s)|mililiter(|s)|ml(|\.))$' newpages.txt >> MeasurementConversions.txt
egrep -i 'equals how many meters$' newpages.txt >> MeasurementConversions.txt

CONVERSIONS=`stat --print=%s MeasurementConversions.txt`

if [ $CONVERSIONS -ne 0 ];
then
  export CATFILE="MeasurementConversions.txt"
  export CATNAME="Measurement conversions"
  $CATEGORIZE
fi

rm MeasurementConversions.txt