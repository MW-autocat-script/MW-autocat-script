#!/bin/bash

KEYWORDS_LAIRON="Lairon"
KEYWORDS_LAMPENT="Lampent"
KEYWORDS_LANDORUS="Landorus"
KEYWORDS_LANTURN="Lanturn"
KEYWORDS_LAPRAS="Lapras"
KEYWORDS_LARVESTA="Larvesta"
KEYWORDS_LARVITAR="Larvitar"
KEYWORDS_LATIAS="Latias"
KEYWORDS_LATIOS="Latios"
KEYWORDS_LEAFEON="Leafeon"
KEYWORDS_LEAVANNY="Leavanny"
KEYWORDS_LEDIAN="Ledian"
KEYWORDS_LEDYBA="Ledyba"
KEYWORDS_LICKILICKY="Lickilicky"
KEYWORDS_LICKITUNG="Lickitung"
KEYWORDS_LIEPARD="Liepard"
KEYWORDS_LILEEP="Lileep"
KEYWORDS_LILLIGANT="Lilligant"
KEYWORDS_LILLIPUP="Lillipup"
KEYWORDS_LINOONE="Linoone"
KEYWORDS_LITWICK="Litwick"
KEYWORDS_LOMBRE="Lombre"
KEYWORDS_LOPUNNY="Lopunny"
KEYWORDS_LOTAD="Lotad"
KEYWORDS_LOUDRED="Loudred"
KEYWORDS_LUCARIO="Lucario"
KEYWORDS_LUDICOLO="Ludicolo"
KEYWORDS_LUGIA="Lugia"
KEYWORDS_LUMINEON="Lumineon"
KEYWORDS_LUNATONE="Lunatone"
KEYWORDS_LUVDISC="Luvdisc"
KEYWORDS_LUXIO="Luxio"
KEYWORDS_LUXRAY="Luxray"

if [ "$1" == "" ];
then

  debug_start "Pokemon 'L' scripts"

  LAIRON="$(egrep -i "$KEYWORDS_LAIRON" "$NEWPAGES")"
  LAMPENT="$(egrep -i "$KEYWORDS_LAMPENT" "$NEWPAGES")"
  LANDORUS="$(egrep -i "$KEYWORDS_LANDORUS" "$NEWPAGES")"
  LANTURN="$(egrep -i "$KEYWORDS_LANTURN" "$NEWPAGES")"
  LAPRAS="$(egrep -i "$KEYWORDS_LAPRAS" "$NEWPAGES")"
  LARVESTA="$(egrep -i "$KEYWORDS_LARVESTA" "$NEWPAGES")"
  LARVITAR="$(egrep -i "$KEYWORDS_LARVITAR" "$NEWPAGES")"
  LATIAS="$(egrep -i "$KEYWORDS_LATIAS" "$NEWPAGES")"
  LATIOS="$(egrep -i "$KEYWORDS_LATIOS" "$NEWPAGES")"
  LEAFEON="$(egrep -i "$KEYWORDS_LEAFEON" "$NEWPAGES")"
  LEAVANNY="$(egrep -i "$KEYWORDS_LEAVANNY" "$NEWPAGES")"
  LEDIAN="$(egrep -i "$KEYWORDS_LEDIAN" "$NEWPAGES")"
  LEDYBA="$(egrep -i "$KEYWORDS_LEDYBA" "$NEWPAGES")"
  LICKILICKY="$(egrep -i "$KEYWORDS_LICKILICKY" "$NEWPAGES")"
  LICKITUNG="$(egrep -i "$KEYWORDS_LICKITUNG" "$NEWPAGES")"
  LIEPARD="$(egrep -i "$KEYWORDS_LIEPARD" "$NEWPAGES")"
  LILEEP="$(egrep -i "$KEYWORDS_LILEEP" "$NEWPAGES")"
  LILLIGANT="$(egrep -i "$KEYWORDS_LILLIGANT" "$NEWPAGES")"
  LILLIPUP="$(egrep -i "$KEYWORDS_LILLIPUP" "$NEWPAGES")"
  LINOONE="$(egrep -i "$KEYWORDS_LINOONE" "$NEWPAGES")"
  LITWICK="$(egrep -i "$KEYWORDS_LITWICK" "$NEWPAGES")"
  LOMBRE="$(egrep -i "$KEYWORDS_LOMBRE" "$NEWPAGES")"
  LOPUNNY="$(egrep -i "$KEYWORDS_LOPUNNY" "$NEWPAGES")"
  LOTAD="$(egrep -i "$KEYWORDS_LOTAD" "$NEWPAGES")"
  LOUDRED="$(egrep -i "$KEYWORDS_LOUDRED" "$NEWPAGES")"
  LUCARIO="$(egrep -i "$KEYWORDS_LUCARIO" "$NEWPAGES")"
  LUDICOLO="$(egrep -i "$KEYWORDS_LUDICOLO" "$NEWPAGES")"
  LUGIA="$(egrep -i "$KEYWORDS_LUGIA" "$NEWPAGES")"
  LUMINEON="$(egrep -i "$KEYWORDS_LUMINEON" "$NEWPAGES")"
  LUNATONE="$(egrep -i "$KEYWORDS_LUNATONE" "$NEWPAGES")"
  LUVDISC="$(egrep -i "$KEYWORDS_LUVDISC" "$NEWPAGES")"
  LUXIO="$(egrep -i "$KEYWORDS_LUXIO" "$NEWPAGES")"
  LUXRAY="$(egrep -i "$KEYWORDS_LUXRAY" "$NEWPAGES")"

  if [ "$LAIRON" != "" ];
  then
    printf "%s" "$LAIRON" > Lairon.txt
    export CATFILE="Lairon.txt"
    export CATNAME="Lairon"
    $CATEGORIZE
    rm Lairon.txt
    unset LAIRON
  fi

  if [ "$LAMPENT" != "" ];
  then
    printf "%s" "$LAMPENT" > Lampent.txt
    export CATFILE="Lampent.txt"
    export CATNAME="Lampent"
    $CATEGORIZE
    rm Lampent.txt
    unset LAMPENT
  fi

  if [ "$LANDORUS" != "" ];
  then
    printf "%s" "$LANDORUS" > Landorus.txt
    export CATFILE="Landorus.txt"
    export CATNAME="Landorus"
    $CATEGORIZE
    rm Landorus.txt
    unset LANDORUS
  fi

  if [ "$LANTURN" != "" ];
  then
    printf "%s" "$LANTURN" > Lanturn.txt
    export CATFILE="Lanturn.txt"
    export CATNAME="Lanturn"
    $CATEGORIZE
    rm Lanturn.txt
    unset LANTURN
  fi

  if [ "$LAPRAS" != "" ];
  then
    printf "%s" "$LAPRAS" > Lapras.txt
    export CATFILE="Lapras.txt"
    export CATNAME="Lapras"
    $CATEGORIZE
    rm Lapras.txt
    unset LAPRAS
  fi

  if [ "$LARVESTA" != "" ];
  then
    printf "%s" "$LARVESTA" > Larvesta.txt
    export CATFILE="Larvesta.txt"
    export CATNAME="Larvesta"
    $CATEGORIZE
    rm Larvesta.txt
    unset LARVESTA
  fi

  if [ "$LARVITAR" != "" ];
  then
    printf "%s" "$LARVITAR" > Larvitar.txt
    export CATFILE="Larvitar.txt"
    export CATNAME="Larvitar"
    $CATEGORIZE
    rm Larvitar.txt
    unset LARVITAR
  fi

  if [ "$LATIAS" != "" ];
  then
    printf "%s" "$LATIAS" > Latias.txt
    export CATFILE="Latias.txt"
    export CATNAME="Latias"
    $CATEGORIZE
    rm Latias.txt
    unset LATIAS
  fi

  if [ "$LATIOS" != "" ];
  then
    printf "%s" "$LATIOS" > Latios.txt
    export CATFILE="Latios.txt"
    export CATNAME="Latios"
    $CATEGORIZE
    rm Latios.txt
    unset LATIOS
  fi

  if [ "$LEAFEON" != "" ];
  then
    printf "%s" "$LEAFEON" > Leafeon.txt
    export CATFILE="Leafeon.txt"
    export CATNAME="Leafeon"
    $CATEGORIZE
    rm Leafeon.txt
    unset LEAFEON
  fi

  if [ "$LEAVANNY" != "" ];
  then
    printf "%s" "$LEAVANNY" > Leavanny.txt
    export CATFILE="Leavanny.txt"
    export CATNAME="Leavanny"
    $CATEGORIZE
    rm Leavanny.txt
    unset LEAVANNY
  fi

  if [ "$LEDIAN" != "" ];
  then
    printf "%s" "$LEDIAN" > Ledian.txt
    export CATFILE="Ledian.txt"
    export CATNAME="Ledian"
    $CATEGORIZE
    rm Ledian.txt
    unset LEDIAN
  fi

  if [ "$LEDYBA" != "" ];
  then
    printf "%s" "$LEDYBA" > Ledyba.txt
    export CATFILE="Ledyba.txt"
    export CATNAME="Ledyba"
    $CATEGORIZE
    rm Ledyba.txt
    unset LEDYBA
  fi

  if [ "$LICKILICKY" != "" ];
  then
    printf "%s" "$LICKILICKY" > Lickilicky.txt
    export CATFILE="Lickilicky.txt"
    export CATNAME="Lickilicky"
    $CATEGORIZE
    rm Lickilicky.txt
    unset LICKILICKY
  fi

  if [ "$LICKITUNG" != "" ];
  then
    printf "%s" "$LICKITUNG" > Lickitung.txt
    export CATFILE="Lickitung.txt"
    export CATNAME="Lickitung"
    $CATEGORIZE
    rm Lickitung.txt
    unset LICKITUNG
  fi

  if [ "$LIEPARD" != "" ];
  then
    printf "%s" "$LIEPARD" > Liepard.txt
    export CATFILE="Liepard.txt"
    export CATNAME="Liepard"
    $CATEGORIZE
    rm Liepard.txt
    unset LIEPARD
  fi

  if [ "$LILEEP" != "" ];
  then
    printf "%s" "$LILEEP" > Lileep.txt
    export CATFILE="Lileep.txt"
    export CATNAME="Lileep"
    $CATEGORIZE
    rm Lileep.txt
    unset LILEEP
  fi

  if [ "$LILLIGANT" != "" ];
  then
    printf "%s" "$LILLIGANT" > Lilligant.txt
    export CATFILE="Lilligant.txt"
    export CATNAME="Lilligant"
    $CATEGORIZE
    rm Lilligant.txt
    unset LILLIGANT
  fi

  if [ "$LILLIPUP" != "" ];
  then
    printf "%s" "$LILLIPUP" > Lillipup.txt
    export CATFILE="Lillipup.txt"
    export CATNAME="Lillipup"
    $CATEGORIZE
    rm Lillipup.txt
    unset LILLIPUP
  fi

  if [ "$LINOONE" != "" ];
  then
    peintf "%s" "$LINOONE" > Linoone.txt
    export CATFILE="Linoone.txt"
    export CATNAME="Linoone"
    $CATEGORIZE
    rm Linoone.txt
    unset LINOONE
  fi

  if [ "$LITWICK" != "" ];
  then
    printf "%s" "$LITWICK" > Litwick.txt
    export CATFILE="Litwick.txt"
    export CATNAME="Litwick"
    $CATEGORIZE
    rm Litwick.txt
    unset LITWICK
  fi

  if [ "$LOMBRE" != "" ];
  then
    printf "%s" "$LOMBRE" > Lombre.txt
    export CATFILE="Lombre.txt"
    export CATNAME="Lombre"
    $CATEGORIZE
    rm Lombre.txt
    unset LOMBRE
  fi

  if [ "$LOPUNNY" != "" ];
  then
    printf "%s" "$LOPUNNY" > Lopunny.txt
    export CATFILE="Lopunny.txt"
    export CATNAME="Lopunny"
    $CATEGORIZE
    rm Lopunny.txt
    unset LOPUNNY
  fi

  if [ "$LOTAD" != "" ];
  then
    printf "%s" "$LOTAD" > Lotad.txt
    export CATFILE="Lotad.txt"
    export CATNAME="Lotad"
    $CATEGORIZE
    rm Lotad.txt
    unset LOTAD
  fi

  if [ "$LOUDRED" != "" ];
  then
    printf "%s" "$LOUDRED" > Loudred.txt
    export CATFILE="Loudred.txt"
    export CATNAME="Loudred"
    $CATEGORIZE
    rm Loudred.txt
    unset LOUDRED
  fi

  if [ "$LUCARIO" != "" ];
  then
    printf "%s" "$LUCARIO" > Lucario.txt
    export CATFILE="Lucario.txt"
    export CATNAME="Lucario"
    $CATEGORIZE
    rm Lucario.txt
    unset LUCARIO
  fi

  if [ "$LUDICOLO" != "" ];
  then
    printf "%s" "$LUDICOLO" > Ludicolo.txt
    export CATFILE="Ludicolo.txt"
    export CATNAME="Ludicolo"
    $CATEGORIZE
    rm Ludicolo.txt
    unset LUDICOLO
  fi

  if [ "$LUGIA" != "" ];
  then
    printf "%s" "$LUGIA" > Lugia.txt
    export CATFILE="Lugia.txt"
    export CATNAME="Lugia"
    $CATEGORIZE
    rm Lugia.txt
    unset LUGIA
  fi

  if [ "$LUMINEON" != "" ];
  then
    printf "%s" "$LUMINEON" > Lumineon.txt
    export CATFILE="Lumineon.txt"
    export CATNAME="Lumineon"
    $CATEGORIZE
    rm Lumineon.txt
    unset LUMINEON
  fi

  if [ "$LUNATONE" != "" ];
  then
    printf "%s" "$LUNATONE" > Lunatone.txt
    export CATFILE="Lunatone.txt"
    export CATNAME="Lunatone"
    $CATEGORIZE
    rm Lunatone.txt
    unset LUNATONE
  fi

  if [ "$LUVDISC" != "" ];
  then
    printf "%s" "$LUVDISC" > Luvdisc.txt
    export CATFILE="Luvdisc.txt"
    export CATNAME="Luvdisc"
    $CATEGORIZE
    rm Luvdisc.txt
    unset LUVDISC
  fi

  if [ "$LUXIO" != "" ];
  then
    printf "%s" "$LUXIO" > Luxio.txt
    export CATFILE="Luxio.txt"
    export CATNAME="Luxio"
    $CATEGORIZE
    rm Luxio.txt
    unset LUXIO
  fi

  if [ "$LUXRAY" != "" ];
  then
    printf "%s" "$LUXIO" > Luxio.txt
    export CATFILE="Luxray.txt"
    export CATNAME="Luxray"
    $CATEGORIZE
    rm Luxray.txt
    unset LUXRAY
  fi

  debug_end "Pokemon 'L' scripts"

fi