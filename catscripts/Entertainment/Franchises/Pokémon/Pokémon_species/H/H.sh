#!/bin/bash

KEYWORDS_HAPPINY="Happiny"
KEYWORDS_HARIYAMA="Hariyama"
KEYWORDS_HAUNTER="Haunter"
KEYWORDS_HAWLUCHA="Hawlucha"
KEYWORDS_HAXORUS="Haxorus"
KEYWORDS_HEATMOR="Heatmor"
KEYWORDS_HEATRAN="Heatran"
KEYWORDS_HELIOLISK="Heliolisk"
KEYWORDS_HELIOPTILE="Helioptile"
KEYWORDS_HERACROSS="Heracross"
KEYWORDS_HERDIER="Herdier"
KEYWORDS_HIPPOPOTAS="Hippopotas"
KEYWORDS_HIPPOWDON="Hippowdon"
KEYWORDS_HITMONCHAN="Hitmonchan"
KEYWORDS_HITMONLEE="Hitmonlee"
KEYWORDS_HITMONTOP="Hitmontop"
KEYWORDS_HONCHKROW="Honchkrow"
KEYWORDS_HONEDGE="Honedge"
KEYWORDS_HOOH="Ho-Oh"
KEYWORDS_HOOTHOOT="Hoothoot"
KEYWORDS_HOPPIP="Hoppip"
KEYWORDS_HORSEA="Horsea"
KEYWORDS_HOUNDOOM="Houndoom"
KEYWORDS_HOUNDOUR="Houndour"
KEYWORDS_HUNTAIL="Huntail"
KEYWORDS_HYDREIGON="Hydreigon"
KEYWORDS_HYPNO="Hypno\b"
KEYWORDS_POKEMONSPECIES_H="$KEYWORDS_HAPPINY|$KEYWORDS_HARIYAMA|$KEYWORDS_HAUNTER|$KEYWORDS_HAWLUCHA|$KEYWORDS_HAXORUS|$KEYWORDS_HEATMOR|$KEYWORDS_HEATRAN|$KEYWORDS_HELIOLISK|$KEYWORDS_HELIOPTILE|$KEYWORDS_HERACROSS|$KEYWORDS_HERDIER|$KEYWORDS_HIPPOPOTAS|$KEYWORDS_HIPPOWDON|$KEYWORDS_HITMONCHAN|$KEYWORDS_HITMONLEE|$KEYWORDS_HITMONTOP|$KEYWORDS_HONCHKROW|$KEYWORDS_HONEDGE|$KEYWORDS_HOOH|$KEYWORDS_HOOTHOOT|$KEYWORDS_HOPPIP|$KEYWORDS_HORSEA|$KEYWORDS_HOUNDOOM|$KEYWORDS_HOUNDOUR|$KEYWORDS_HUNTAIL|$KEYWORDS_HYDREIGON|$KEYWORDS_HYPNO"

if [ "$1" == "" ];
then

  debug_start "Pokemon H species"

  HAPPINY=$(egrep -i "$KEYWORDS_HAPPINY" "$NEWPAGES")
  HARIYAMA=$(egrep -i "$KEYWORDS_HARIYAMA" "$NEWPAGES")
  HAUNTER=$(egrep -i "$KEYWORDS_HAUNTER" "$NEWPAGES")
  HAWLUCHA=$(egrep -i "$KEYWORDS_HAWLUCHA" "$NEWPAGES")
  HAXORUS=$(egrep -i "$KEYWORDS_HAXORUS" "$NEWPAGES")
  HEATMOR=$(egrep -i "$KEYWORDS_HEATMOR" "$NEWPAGES")
  HEATRAN=$(egrep -i "$KEYWORDS_HEATRAN" "$NEWPAGES")
  HELIOLISK=$(egrep -i "$KEYWORDS_HELIOLISK" "$NEWPAGES")
  HELIOPTILE=$(egrep -i "$KEYWORDS_HELIOPTILE" "$NEWPAGES")
  HERACROSS=$(egrep -i "$KEYWORDS_HERACROSS" "$NEWPAGES")
  HERDIER=$(egrep -i "$KEYWORDS_HERDIER" "$NEWPAGES")
  HIPPOPOTAS=$(egrep -i "$KEYWORDS_HIPPOPOTAS" "$NEWPAGES")
  HIPPOWDON=$(egrep -i "$KEYWORDS_HIPPOWDON" "$NEWPAGES")
  HITMONCHAN=$(egrep -i "$KEYWORDS_HITMONCHAN" "$NEWPAGES")
  HITMONLEE=$(egrep -i "$KEYWORDS_HITMONLEE" "$NEWPAGES")
  HITMONTOP=$(egrep -i "$KEYWORDS_HITMONTOP" "$NEWPAGES")
  HOOH=$(egrep -i "$KEYWORDS_HOOH" "$NEWPAGES")
  HONCHKROW=$(egrep -i "$KEYWORDS_HONCHKROW" "$NEWPAGES")
  HONEDGE=$(egrep -i "$KEYWORDS_HONEDGE" "$NEWPAGES")
  HOOTHOOT=$(egrep -i "$KEYWORDS_HOOTHOOT" "$NEWPAGES")
  HOPPIP=$(egrep -i "$KEYWORDS_HOPPIP" "$NEWPAGES")
  HORSEA=$(egrep -i "$KEYWORDS_HORSEA" "$NEWPAGES")
  HOUNDOOM=$(egrep -i "$KEYWORDS_HOUNDOOM" "$NEWPAGES")
  HOUNDOUR=$(egrep -i "$KEYWORDS_HOUNDOUR" "$NEWPAGES")
  HUNTAIL=$(egrep -i "$KEYWORDS_HUNTAIL" "$NEWPAGES")
  HYDREIGON=$(egrep -i "$KEYWORDS_HYDREIGON" "$NEWPAGES")
  HYPNO=$(egrep -i "$KEYWORDS_HYPNO" "$NEWPAGES")

  categorize "HAPPINY" "Happiny"
  categorize "HARIYAMA" "Hariyama"
  categorize "HAUNTER" "Haunter"
  categorize "HAWLUCHA" "Hawlucha"
  categorize "HAXORUS" "Haxorus"
  categorize "HEATMOR" "Heatmor"
  categorize "HEATRAN" "Heatran"
  categorize "HELIOLISK" "Heliolisk"
  categorize "HELIOPTILE" "Helioptile"
  categorize "HERACROSS" "Heracross"
  categorize "HERDIER" "Herdier"
  categorize "HIPPOPOTAS" "Hippopotas"
  categorize "HIPPOWDON" "Hippowdon"
  categorize "HITMONCHAN" "Hitmonchan"
  categorize "HITMONLEE" "Hitmonlee"
  categorize "HITMONTOP" "Hitmontop"
  categorize "HOOH" "Ho-Oh"
  categorize "HONCHKROW" "Honchkrow"
  categorize "HONEDGE" "Honedge"
  categorize "HOOTHOOT" "Hoothoot"
  categorize "HOPPIP" "Hoppip"
  categorize "HORSEA" "Horsea"
  categorize "HOUNDOOM" "Houndoom"
  categorize "HOUNDOUR" "Houndour"
  categorize "HUNTAIL" "Huntail"
  categorize "HYDREIGON" "Hydreigon"
  categorize "HYPNO" "Hypno"

  debug_end "Pokemon H species"

fi