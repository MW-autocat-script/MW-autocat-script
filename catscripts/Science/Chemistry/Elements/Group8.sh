#!/bin/bash 

KEYWORDS_IRON="\bIron\b|\bIrons\b|ferrous|ferric|ferrite"
KEYWORDS_IRON_EXCLUDE="Iron Age|Iron Man|irony|ironing|iron a\s|curling iron|RuneScape|Rune scape|iron curtain|ironworks|shirt|in irons|Iron Maiden|minecraft|Sacred Seasons|\bHalo\b|mhfu|monster hunter|kiteshield|kite shield|plateshield|square shield|platebody|plate body|steam iron|waffle iron|electric iron|2h sword|iron dragon|for a member|for members|Iron company|Iron island|zombie|yugioh|Yu-Gi-Oh|golem|Magic|flat iron|naruto|golf|club|[0-9]{1,}( |-)iron| I iron|full helm|\ban iron$|Mandalorian|Iron Chef|World of Warcraft|Wizard( |)101|Adventure(Quest| Quest)"
KEYWORDS_RUTHENIUM="Ruthenium"
KEYWORDS_OSMIUM="Osmium"
KEYWORDS_HASSIUM="Hassium"

if [ "$1" == "" ];
then

  debug_start "Group 8 elements"

  IRON=$(egrep -i "$KEYWORDS_IRON" "$NEWPAGES" | egrep -iv "$KEYWORDS_IRON_EXCLUDE")
  RUTHENIUM=$(egrep -i "$KEYWORDS_RUTHENIUM" "$NEWPAGES")
  OSMIUM=$(egrep -i "$KEYWORDS_OSMIUM" "$NEWPAGES")
  HASSIUM=$(egrep -i "$KEYWORDS_HASSIUM" "$NEWPAGES")

  categorize "IRON" "Iron"
  categorize "RUTHENIUM" "Ruthenium"
  categorize "OSMIUM" "Osmium"
  categorize "HASSIUM" "Hassium"

  debug_end "Group 8 elements"

fi