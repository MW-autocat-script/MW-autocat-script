#!/bin/bash

KEYWORDS_CYTOLOGY="cytology|cell(| )(biology|membrane|nucleus)|mitochondria\b|ribosome|Nucleolus|golgi(| )(body|apparatus)|mitochondrion|cytoskelteon|vacuole|cytosol|lysosome|centrosome"

if [ "$1" == "" ];
then

  debug_start "Cytology"

  CYTOLOGY=$(egrep -i "$KEYWORDS_CYTOLOGY" newpages.txt)

  if [ "$CYTOLOGY" != "" ];
  then
    printf "%s" "$CYTOLOGY" > Cytology.txt
    export CATFILE="Cytology.txt"
    export CATNAME="Cytology"
    $CATEGORIZE
    rm Cytology.txt
    unset CYTOLOGY
  fi

  debug_end "Cytology"

fi