#!/bin/bash

KEYWORDS_KABUTO="Kabuto\b"
KEYWORDS_KABUTOPS="Kabutops"
KEYWORDS_KADABRA="Kadabra"
KEYWORDS_KAKUNA="Kakuna"
KEYWORDS_KANGASKHAN="Kangaskhan"
KEYWORDS_KARRABLAST="Karrablast"
KEYWORDS_KECLEON="Kecleon"
KEYWORDS_KELDEO="Keldeo"
KEYWORDS_KINGDRA="Kingdra"
KEYWORDS_KINGLER="Kingler"
KEYWORDS_KIRLIA="Kirlia"
KEYWORDS_KLANG="Klang"
KEYWORDS_KLINK="Klink"
KEYWORDS_KLINKLANG="Klinklang"
KEYWORDS_KOFFING="Koffing"
KEYWORDS_KRABBY="Krabby"
KEYWORDS_KRABBY_EXCLUDE="Krabby(| )patt(y|ies)"
KEYWORDS_KRICKETOT="Kricketot"
KEYWORDS_KRICKETUNE="Kricketune"
KEYWORDS_KROOKODILE="Krookodile"
KEYWORDS_KROKOROK="Krokorok"
KEYWORDS_KYOGRE="Kyogre"
KEYWORDS_KYUREM="Kyurem"

if [ "$1" == "" ];
then

  debug_start "Pokemon K species"

  KABUTO=$(egrep -i "$KEYWORDS_KABUTO" "$NEWPAGES")
  KABUTOPS=$(egrep -i "$KEYWORDS_KABUTOPS" "$NEWPAGES")
  KADABRA=$(egrep -i "$KEYWORDS_KADABRA" "$NEWPAGES")
  KAKUNA=$(egrep -i "$KEYWORDS_KAKUNA" "$NEWPAGES")
  KANGASKHAN=$(egrep -i "$KEYWORDS_KANGASKHAN" "$NEWPAGES")
  KARRABLAST=$(egrep -i "$KEYWORDS_KARRABLAST" "$NEWPAGES")
  KECLEON=$(egrep -i "$KEYWORDS_KECLEON" "$NEWPAGES")
  KELDEO=$(egrep -i "$KEYWORDS_KELDEO" "$NEWPAGES")
  KINGDRA=$(egrep -i "$KEYWORDS_KINGDRA" "$NEWPAGES")
  KINGLER=$(egrep -i "$KEYWORDS_KINGLER" "$NEWPAGES")
  KIRLIA=$(egrep -i "$KEYWORDS_KIRLIA" "$NEWPAGES")
  KLANG=$(egrep -i "$KEYWORDS_KLANG" "$NEWPAGES")
  KLINK=$(egrep -i "$KEYWORDS_KLINK" "$NEWPAGES")
  KLINKLANG=$(egrep -i "$KEYWORDS_KLINKLANG" "$NEWPAGES")
  KOFFING=$(egrep -i "$KEYWORDS_KOFFING" "$NEWPAGES")
  KRABBY=$(egrep -i "$KEYWORDS_KRABBY" "$NEWPAGES" | egrep -iv "$KEYWORDS_KRABBY_EXCLUDE")
  KRICKETOT=$(egrep -i "$KEYWORDS_KRICKETOT" "$NEWPAGES")
  KRICKETUNE=$(egrep -i "$KEYWORDS_KRICKETUNE" "$NEWPAGES")
  KROOKODILE=$(egrep -i "$KEYWORDS_KROOKODILE" "$NEWPAGES")
  KROKOROK=$(egrep -i "$KEYWORDS_KROKOROK" "$NEWPAGES")
  KYOGRE=$(egrep -i "$KEYWORDS_KYOGRE" "$NEWPAGES")
  KYUREM=$(egrep -i "$KEYWORDS_KYUREM" "$NEWPAGES")

  categorize "KABUTO" "Kabuto"
  categorize "KABUTOPS" "Kabutops"
  categorize "KADABRA" "Kadabra"
  categorize "KAKUNA" "Kakuna"
  categorize "KANGASKHAN" "Kangaskhan"
  categorize "KARRABLAST" "Karrablast"
  categorize "KECLEON" "Kecleon"
  categorize "KELDEO" "Keldeo"
  categorize "KINGDRA" "Kingdra"
  categorize "KINGLER" "Kingler"
  categorize "KIRLIA" "Kirlia"
  categorize "KLANG" "Klang"
  categorize "KLINK" "Klink"
  categorize "KLINKLANG" "Klinklang"
  categorize "KOFFING" "Koffing"
  categorize "KRABBY" "Krabby"
  categorize "KRICKETOT" "Kricketot"
  categorize "KRICKETUNE" "Kricketune"
  categorize "KROOKODILE" "Krookodile"
  categorize "KROKOROK" "Krokorok"
  categorize "KYOGRE" "Kyogre"
  categorize "KYUREM" "Kyurem"

  debug_end "Pokemon K scripts"

fi
