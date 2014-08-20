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

  if [ "$KABUTO" != "" ];
  then
    printf "%s" "$KABUTO" > Kabuto.txt
    export CATFILE="Kabuto.txt"
    export CATNAME="Kabuto"
    $CATEGORIZE
    rm Kabuto.txt
    unset KABUTO
  fi

  if [ "$KABUTOPS" != "" ];
  then
    printf "%s" "$KABUTOPS" > Kabutops.txt
    export CATFILE="Kabutops.txt"
    export CATNAME="Kabutops"
    $CATEGORIZE
    rm Kabutops.txt
    unset KABUTOPS
  fi

  if [ "$KADABRA" != "" ];
  then
    printf "%s" "$KADABRA" > Kadabra.txt
    export CATFILE="Kadabra.txt"
    export CATNAME="Kadabra"
    $CATEGORIZE
    rm Kadabra.txt
    unset KADABRA
  fi

  if [ "$KAKUNA" != "" ];
  then
    printf "%s" "$KAKUNA" > Kakuna.txt
    export CATFILE="Kakuna.txt"
    export CATNAME="Kakuna"
    $CATEGORIZE
    rm Kakuna.txt
    unset KAKUNA
  fi

  if [ "$KANGASKHAN" != "" ];
  then
    printf "%s" "$KANGASKHAN" > Kangaskhan.txt
    export CATFILE="Kangaskhan.txt"
    export CATNAME="Kangaskhan"
    $CATEGORIZE
    rm Kangaskhan.txt
    unset KANGASKHAN
  fi

  if [ "$KARRABLAST" != "" ];
  then
    printf "%s" "$KARRABLAST" > Karrablast.txt
    export CATFILE="Karrablast.txt"
    export CATNAME="Karrablast"
    $CATEGORIZE
    rm Karrablast.txt
    unset KARRABLAST
  fi

  if [ "$KECLEON" != "" ];
  then
    printf "%s" "$KECLEON" > Kecleon.txt
    export CATFILE="Kecleon.txt"
    export CATNAME="Kecleon"
    $CATEGORIZE
    rm Kecleon.txt
    unset KECLEON
  fi

  if [ "$KELDEO" != "" ];
  then
    printf "%s" "$KELDEO" > Keldeo.txt
    export CATFILE="Keldeo.txt"
    export CATNAME="Keldeo"
    $CATEGORIZE
    rm Keldeo.txt
    unset KELDEO
  fi

  if [ "$KINGDRA" != "" ];
  then
    printf "%s" "$KINGDRA" > Kingdra.txt
    export CATFILE="Kingdra.txt"
    export CATNAME="Kingdra"
    $CATEGORIZE
    rm Kingdra.txt
    unset KINGDRA
  fi

  if [ "$KINGLER" != "" ];
  then
    printf "%s" "$KINGLER" > Kingler.txt
    export CATFILE="Kingler.txt"
    export CATNAME="Kingler"
    $CATEGORIZE
    rm Kingler.txt
    unset KINGLER
  fi

  if [ "$KIRLIA" != "" ];
  then
    printf "%s" "$KIRLIA" > Kirlia.txt
    export CATFILE="Kirlia.txt"
    export CATNAME="Kirlia"
    $CATEGORIZE
    rm Kirlia.txt
    unset KIRLIA
  fi

  if [ "$KLANG" != "" ];
  then
    printf "%s" "$KLANG" > Klang.txt
    export CATFILE="Klang.txt"
    export CATNAME="Klang"
    $CATEGORIZE
    rm Klang.txt
    unset KLANG
  fi

  if [ "$KLINK" != "" ];
  then
    printf "%s" "$KLINK" > Klink.txt
    export CATFILE="Klink.txt"
    export CATNAME="Klink"
    $CATEGORIZE
    rm Klink.txt
    unset KLINK
  fi

  if [ "$KLINKLANG" != "" ];
  then
    printf "%s" "$KLINKLANG" > Klinklang.txt
    export CATFILE="Klinklang.txt"
    export CATNAME="Klinklang"
    $CATEGORIZE
    rm Klinklang.txt
    unset KLINKLANG
  fi

  if [ "$KOFFING" != "" ];
  then
    printf "%s" "$KOFFING" > Koffing.txt
    export CATFILE="Koffing.txt"
    export CATNAME="Koffing"
    $CATEGORIZE
    rm Koffing.txt
    unset KOFFING
  fi

  if [ "$KRABBY" != "" ];
  then
    printf "%s" "$KRABBY" > Krabby.txt
    export CATFILE="Krabby.txt"
    export CATNAME="Krabby"
    $CATEGORIZE
    rm Krabby.txt
    unset KRABBY
  fi

  if [ "$KRICKETOT" != "" ];
  then
    printf "%s" "$KRICKETOT" > Kricketot.txt
    export CATFILE="Kricketot.txt"
    export CATNAME="Kricketot"
    $CATEGORIZE
    rm Kricketot.txt
    unset KRICKETOT
  fi

  if [ "$KRICKETUNE" != "" ];
  then
    printf "%s" "$KRICKETUNE" > Kricketune.txt
    export CATFILE="Kricketune.txt"
    export CATNAME="Kricketune"
    $CATEGORIZE
    rm Kricketune.txt
    unset KRICKETUNE
  fi

  if [ "$KROOKODILE" != "" ];
  then
    printf "%s" "$KROOKODILE" > Krookodile.txt
    export CATFILE="Krookodile.txt"
    export CATNAME="Krookodile"
    $CATEGORIZE
    rm Krookodile.txt
    unset KROOKODILE
  fi

  if [ "$KROKOROK" != "" ];
  then
    printf "%s" "$KROKOROK" > Krokorok.txt
    export CATFILE="Krokorok.txt"
    export CATNAME="Krokorok"
    $CATEGORIZE
    rm Krokorok.txt
    unset KROKOROK
  fi

  if [ "$KYOGRE" != "" ];
  then
    printf "%s" "$KYOGRE" > Kyogre.txt
    export CATFILE="Kyogre.txt"
    export CATNAME="Kyogre"
    $CATEGORIZE
    rm Kyogre.txt
    unset KYOGRE
  fi

  if [ "$KYUREM" != "" ];
  then
    printf "%s" "$KYUREM" > Kyurem.txt
    export CATFILE="Kyurem.txt"
    export CATNAME="Kyurem"
    $CATEGORIZE
    rm Kyurem.txt
    unset KYUREM
  fi

  debug_end "Pokemon K scripts"

fi
