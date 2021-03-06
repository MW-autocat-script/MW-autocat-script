#!/bin/bash

KEYWORDS_DVDAUTHORING="ISO(| )(image|file)|(CD|DVD|Blu(-|| )Ray)(| )authoring|burn(| )a(| )(CD|DVD|Blu(|-| )Ray)|Burn(| )(CD|DVD)(|s)"
KEYWORDS_DVDAUTHORING_OTHER="Nero(| )(Linux|Burning(| )ROM)|K3B|Burn(| )Baby(| )Burn|ISO(| )Master|ImgBurn|DVD(| )Decrypter|CDBurner(| )XP|Infra(| )Recorder" #Names of apps that don't currently have their own category
KEYWORDS_DVDAUTHORING_ALL="$KEYWORDS_DVDAUTHORING|$KEYWORDS_DVDAUTHORING_OTHER"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "DVD authoring"

  AUTHORING=$(egrep -i "$KEYWORDS_DVDAUTHORING_ALL" "$NEWPAGES")

  categorize "AUTHORING" "CD and DVD authoring"

  debug_end "DVD authoring"

fi
