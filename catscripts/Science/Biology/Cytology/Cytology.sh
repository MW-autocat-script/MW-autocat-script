#!/bin/bash

KEYWORDS_CYTOLOGY="cytology|cell(| )(biology|membrane|nucleus)|mitochondria\b|ribosome|Nucleolus|golgi(| )(body|apparatus)|mitochondrion|cytoskelteon|vacuole|cytosol|lysosome|centrosome|mitosis|(ana|telo)phase"

if [ "$1" == "" ];
then

  debug_start "Cytology"

  CYTOLOGY=$(egrep -i "$KEYWORDS_CYTOLOGY" "$NEWPAGES")

  categorize "CYTOLOGY" "Cytology"

  debug_end "Cytology"

fi