#!/bin/bash
#IUPAC Group 13 elements.

KEYWORDS_BORON="Boron"
KEYWORDS_BORON_EXCLUDE="Boron \b.+ide|Boron \b.+ate|Boron \b.+ite"
KEYWORDS_ALUMINIUM="Aluminium|Aluminum"
KEYWORDS_ALUMINIUM_EXCLUDE="(Aluminium|Aluminum) \b.+ide|(Aluminium|Aluminum) \b.+ate|(Aluminium|Aluminum) \b.+ite"
KEYWORDS_GALLIUM="Gallium"
KEYWORDS_GALLIUM_EXCLUDE="Gallium \b.+ide|Gallium \b.+ate|Gallium \b.+ite"
KEYWORDS_INDIUM="Indium"
KEYWORDS_INDIUM_EXCLUDE="Indium \b.+ide|Indium \b.+ate|Indium \b.+ite"
KEYWORDS_THALLIUM="Thallium"
KEYWORDS_THALLIUM_EXLCUDE="rubidiun \b.+ide|Thallium \b.+ate|Thallium \b.+ite"
KEYWORDS_UNUNUNTRIUM="Ununtrium"

if [ "$1" == "" ];
then

  debug_start "Group 13 elements"

  BORON=$(egrep -i "$KEYWORDS_BORON" "$NEWPAGES" | egrep -iv "$KEYWORDS_BORON_EXCLUDE")
  ALUMINIUM=$(egrep -i "$KEYWORDS_ALUMINIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_ALUMINIUM_EXCLUDE")
  GALLIUM=$(egrep -i "$KEYWORDS_GALLIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_GALLIUM_EXCLUDE")
  INDIUM=$(egrep -i "$KEYWORDS_INDIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_INDIUM_EXCLUDE")
  THALLIUM=$(egrep -i "$KEYWORDS_THALLIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_THALLIUM_EXLCUDE")
  UNUNTRIUM=$(egrep -i "$KEYWORDS_UNUNUNTRIUM" "$NEWPAGES")

  categorize "BORON" "Boron"
  categorize "ALUMINIUM" "Aluminium"
  categorize "GALLIUM" "Gallium"
  categorize "INDIUM" "Indium"
  categorize "THALLIUM" "Thallium"
  categorize "UNUNTRIUM" "Ununtrium"

  debug_end "Group 13 elements"

fi