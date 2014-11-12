#!/bin/bash 

KEYWORDS_NEON="(\bNeon\b|\bNeons\b)"
KEYWORDS_NEON_EXCLUDE="(Dodge|Plymouth) Neon|[0-9]{2,}(| )Neon|Neon(| )Genesis(| )Evangelion"
KEYWORDS_HELIUM="\bHelium"
KEYWORDS_ARGON="\bArgon\b|\bArgons\b"
KEYWORDS_KRYPTON="Krypton"
KEYWORDS_KRYPTON_EXCLUDE="Kryptonite|Superman|planet Krypton|Kryptonian"
KEYWORDS_XENON="\bXenon"
KEYWORDS_XENON_EXCLUDE="LG Xenon"
KEYWORDS_RADON="\bRadon"
KEYWORDS_UNUNOCTIUM="Ununoctium"

if [ "$1" == "" ];
then

  debug_start "Group 18 elements"

  NEON=$(egrep -i "$KEYWORDS_NEON" "$NEWPAGES" | egrep -iv "$KEYWORDS_NEON_EXCLUDE")
  HELIUM=$(egrep -i "$KEYWORDS_HELIUM" "$NEWPAGES")
  ARGON=$(egrep -i "$KEYWORDS_ARGON" "$NEWPAGES")
  KRYPTON=$(egrep -i "$KEYWORDS_KRYPTON" "$NEWPAGES" | egrep -iv "$KEYWORDS_KRYPTON_EXCLUDE")
  XENON=$(egrep -i "$KEYWORDS_XENON" "$NEWPAGES" | egrep -iv "$KEYWORDS_XENON_EXCLUDE")
  RADON=$(egrep -i "$KEYWORDS_RADON" "$NEWPAGES")
  UNUNOCTIUM=$(egrep -i "$KEYWORDS_UNUNOCTIUM" "$NEWPAGES")

  categorize "NEON" "Neon"
  categorize "HELIUM" "Helium"
  categorize "ARGON" "Argon"
  categorize "KRYPTON" "Krypton"
  categorize "XENON" "Xenon"
  categorize "RADON" "Radon"
  categorize "UNUNOCTIUM" "Ununoctium"

  debug_end "Group 18 elements"

fi