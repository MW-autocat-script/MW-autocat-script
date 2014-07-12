#!/bin/bash

KEYWORDS_CANCER="Cancer|carcinoma|carcinoid|malignant(| )tumo(|u)r"
KEYWORDS_TERRYFOX="Terry(| )Fox"

if [ "$1" == "" ];
then

  debug_start "Cancer"

  . ./catscripts/Lifestyle/Health/Diseases/Cancer/Lung_cancer/Lungcancer.sh #KEYWORDS_LUNGCANCER
  . ./catscripts/Lifestyle/Health/Diseases/Cancer/Breast_cancer/Breastcancer.sh #KEYWORDS_BREASTCANCER
  . ./catscripts/Lifestyle/Health/Diseases/Cancer/Leukemia/Leukemia.sh #KEYWORDS_LEUKEMIA

  KEYWORDS_CANCER_EXCLUDE="$KEYWORDS_LUNGCANCER|$KEYWORDS_LEUKEMIA|$KEYWORDS_BREASTCANCER|$KEYWORDS_TERRYFOX|Tropic(| )of(| )Cancer|Cancer(| )the(| )Crab|Zodiac|Horoscope"
  KEYWORDS_CANCER_ALL="$KEYWORDS_CANCER|$KEYWORDS_LEUKEMIA|$KEYWORDS_BREASTCANCER|$KEYWORDS_TERRYFOX|$KEYWORDS_LUNGCANCER"

  CANCER=$(egrep -i "$KEYWORDS_CANCER" newpages.txt | egrep -iv "$KEYWORDS_CANCER_EXCLUDE")
  TERRYFOX=$(egrep -i "$KEYWORDS_TERRYFOX" newpages.txt)

  if [ "$CANCER" != "" ];
  then
    printf "%s" "$CANCER" > Cancer.txt
    export CATFILE="Cancer.txt"
    export CATNAME="Cancer"
    $CATEGORIZE
    rm Cancer.txt
    unset CANCER
  fi

  if [ "$TERRYFOX" != "" ];
  then
    printf "%s" "$TERRYFOX" > TerryFox.txt
    export CATFILE="TerryFox.txt"
    export CATNAME="Terry Fox"
    $CATEGORIZE
    rm TerryFox.txt
    unset TERRYFOX
  fi

  debug_end "Cancer"

else

  . ./catscripts/Lifestyle/Health/Diseases/Cancer/Lung_cancer/Lungcancer.sh norun #KEYWORDS_LUNGCANCER
  . ./catscripts/Lifestyle/Health/Diseases/Cancer/Breast_cancer/Breastcancer.sh norun #KEYWORDS_BREASTCANCER
  . ./catscripts/Lifestyle/Health/Diseases/Cancer/Leukemia/Leukemia.sh norun #KEYWORDS_LEUKEMIA

  KEYWORDS_CANCER_ALL="$KEYWORDS_CANCER|$KEYWORDS_LEUKEMIA|$KEYWORDS_BREASTCANCER|$KEYWORDS_TERRYFOX|$KEYWORDS_LUNGCANCER"

fi

#This is here to make ShellCheck ignore KEYWORDS_CANCER_ALL, which is used elsewhere

KEYWORDS_CANCER_ALL="$KEYWORDS_CANCER_ALL"