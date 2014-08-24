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

  LAIRON=$(egrep -i "$KEYWORDS_LAIRON" "$NEWPAGES")
  LAMPENT=$(egrep -i "$KEYWORDS_LAMPENT" "$NEWPAGES")
  LANDORUS=$(egrep -i "$KEYWORDS_LANDORUS" "$NEWPAGES")
  LANTURN=$(egrep -i "$KEYWORDS_LANTURN" "$NEWPAGES")
  LAPRAS=$(egrep -i "$KEYWORDS_LAPRAS" "$NEWPAGES")
  LARVESTA=$(egrep -i "$KEYWORDS_LARVESTA" "$NEWPAGES")
  LARVITAR=$(egrep -i "$KEYWORDS_LARVITAR" "$NEWPAGES")
  LATIAS=$(egrep -i "$KEYWORDS_LATIAS" "$NEWPAGES")
  LATIOS=$(egrep -i "$KEYWORDS_LATIOS" "$NEWPAGES")
  LEAFEON=$(egrep -i "$KEYWORDS_LEAFEON" "$NEWPAGES")
  LEAVANNY=$(egrep -i "$KEYWORDS_LEAVANNY" "$NEWPAGES")
  LEDIAN=$(egrep -i "$KEYWORDS_LEDIAN" "$NEWPAGES")
  LEDYBA=$(egrep -i "$KEYWORDS_LEDYBA" "$NEWPAGES")
  LICKILICKY=$(egrep -i "$KEYWORDS_LICKILICKY" "$NEWPAGES")
  LICKITUNG=$(egrep -i "$KEYWORDS_LICKITUNG" "$NEWPAGES")
  LIEPARD=$(egrep -i "$KEYWORDS_LIEPARD" "$NEWPAGES")
  LILEEP=$(egrep -i "$KEYWORDS_LILEEP" "$NEWPAGES")
  LILLIGANT=$(egrep -i "$KEYWORDS_LILLIGANT" "$NEWPAGES")
  LILLIPUP=$(egrep -i "$KEYWORDS_LILLIPUP" "$NEWPAGES")
  LINOONE=$(egrep -i "$KEYWORDS_LINOONE" "$NEWPAGES")
  LITWICK=$(egrep -i "$KEYWORDS_LITWICK" "$NEWPAGES")
  LOMBRE=$(egrep -i "$KEYWORDS_LOMBRE" "$NEWPAGES")
  LOPUNNY=$(egrep -i "$KEYWORDS_LOPUNNY" "$NEWPAGES")
  LOTAD=$(egrep -i "$KEYWORDS_LOTAD" "$NEWPAGES")
  LOUDRED=$(egrep -i "$KEYWORDS_LOUDRED" "$NEWPAGES")
  LUCARIO=$(egrep -i "$KEYWORDS_LUCARIO" "$NEWPAGES")
  LUDICOLO=$(egrep -i "$KEYWORDS_LUDICOLO" "$NEWPAGES")
  LUGIA=$(egrep -i "$KEYWORDS_LUGIA" "$NEWPAGES")
  LUMINEON=$(egrep -i "$KEYWORDS_LUMINEON" "$NEWPAGES")
  LUNATONE=$(egrep -i "$KEYWORDS_LUNATONE" "$NEWPAGES")
  LUVDISC=$(egrep -i "$KEYWORDS_LUVDISC" "$NEWPAGES")
  LUXIO=$(egrep -i "$KEYWORDS_LUXIO" "$NEWPAGES")
  LUXRAY=$(egrep -i "$KEYWORDS_LUXRAY" "$NEWPAGES")

  categorize "LAIRON" "Lairon"
  categorize "LAMPENT" "Lampent"
  categorize "LANDORUS" "Landorus"
  categorize "LANTURN" "Lanturn"
  categorize "LAPRAS" "Lapras"
  categorize "LARVESTA" "Larvesta"
  categorize "LARVITAR" "Larvitar"
  categorize "LATIAS" "Latias"
  categorize "LATIOS" "Latios"
  categorize "LEAFEON" "Leafeon"
  categorize "LEAVANNY" "Leavanny"
  categorize "LEDIAN" "Ledian"
  categorize "LEDYBA" "Ledyba"
  categorize "LICKILICKY" "Lickilicky"
  categorize "LICKITUNG" "Lickitung"
  categorize "LIEPARD" "Liepard"
  categorize "LILEEP" "Lileep"
  categorize "LILLIGANT" "Lilligant"
  categorize "LILLIPUP" "Lillipup"
  categorize "LINOONE" "Linoone"
  categorize "LITWICK" "Litwick"
  categorize "LOMBRE" "Lombre"
  categorize "LOPUNNY" "Lopunny"
  categorize "LOTAD" "Lotad"
  categorize "LOUDRED" "Loudred"
  categorize "LUCARIO" "Lucario"
  categorize "LUDICOLO" "Ludicolo"
  categorize "LUGIA" "Lugia"
  categorize "LUMINEON" "Lumineon"
  categorize "LUNATONE" "Lunatone"
  categorize "LUVDISC" "Luvdisc"
  categorize "LUXIO" "Luxio"
  categorize "LUXIO" "Luxray"

  debug_end "Pokemon 'L' scripts"

fi