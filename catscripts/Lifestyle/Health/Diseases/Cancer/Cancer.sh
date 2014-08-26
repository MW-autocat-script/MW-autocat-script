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

  CANCER=$(egrep -i "$KEYWORDS_CANCER" "$NEWPAGES" | egrep -iv "$KEYWORDS_CANCER_EXCLUDE")
  TERRYFOX=$(egrep -i "$KEYWORDS_TERRYFOX" "$NEWPAGES")

  categorize "CANCER" "Cancer"
  categorize "TERRYFOX" "Terry Fox"

  debug_end "Cancer"

else

  . ./catscripts/Lifestyle/Health/Diseases/Cancer/Lung_cancer/Lungcancer.sh norun #KEYWORDS_LUNGCANCER
  . ./catscripts/Lifestyle/Health/Diseases/Cancer/Breast_cancer/Breastcancer.sh norun #KEYWORDS_BREASTCANCER
  . ./catscripts/Lifestyle/Health/Diseases/Cancer/Leukemia/Leukemia.sh norun #KEYWORDS_LEUKEMIA

  KEYWORDS_CANCER_ALL="$KEYWORDS_CANCER|$KEYWORDS_LEUKEMIA|$KEYWORDS_BREASTCANCER|$KEYWORDS_TERRYFOX|$KEYWORDS_LUNGCANCER"

fi

#This is here to make ShellCheck ignore KEYWORDS_CANCER_ALL, which is used elsewhere

KEYWORDS_CANCER_ALL="$KEYWORDS_CANCER_ALL"