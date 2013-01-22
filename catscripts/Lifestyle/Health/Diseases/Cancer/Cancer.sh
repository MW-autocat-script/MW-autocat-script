#!/bin/bash

egrep -i 'Cancer' newpages.txt | egrep -iv 'Lung(| )cancer|Breast(| )cancer|Tropic of Cancer|Cancer the Crab|Zodiac|Horoscope' > Cancer.txt

CANCER=`stat --print=%s Cancer.txt`

if [ $CANCER -ne 0 ];
then
  export CATFILE="Cancer.txt"
  export CATNAME="Cancer"
  ./catscripts/Categorize.sh
fi

./catscripts/Lifestyle/Health/Diseases/Cancer/Lung_cancer/Lungcancer.sh
./catscripts/Lifestyle/Health/Diseases/Cancer/Breast_cancer/Breastcancer.sh

rm Cancer.txt