#!/bin/bash

KEYWORDS_HAPPINY="Happiny"
KEYWORDS_HARIYAMA="Hariyama"
KEYWORDS_HAUNTER="Haunter"
KEYWORDS_HAXORUS="Haxorus"
KEYWORDS_HEATMOR="Heatmor"
KEYWORDS_HEATRAN="Heatran"
KEYWORDS_HERACROSS="Heracross"
KEYWORDS_HERDIER="Herdier"
KEYWORDS_HIPPOPOTAS="Hippopotas"
KEYWORDS_HIPPOWDON="Hippowdon"
KEYWORDS_HITMONCHAN="Hitmonchan"
KEYWORDS_HITMONLEE="Hitmonlee"
KEYWORDS_HITMONTOP="Hitmontop"
KEYWORDS_HOOH="Ho-Oh"
KEYWORDS_HONCHKROW="Honchkrow"
KEYWORDS_HOOTHOOT="Hoothoot"
KEYWORDS_HOPPIP="Hoppip"
KEYWORDS_HORSEA="Horsea"
KEYWORDS_HOUNDOOM="Houndoom"
KEYWORDS_HOUNDOUR="Houndour"
KEYWORDS_HUNTAIL="Huntail"
KEYWORDS_HYDREIGON="Hydreigon"
KEYWORDS_HYPNO="Hypno\b"

if [ "$1" == "" ];
then

  debug_start "Pokemon H species"

  HAPPINY=$(egrep -i "$KEYWORDS_HAPPINY" "$NEWPAGES")
  HARIYAMA=$(egrep -i "$KEYWORDS_HARIYAMA" "$NEWPAGES")
  HAUNTER=$(egrep -i "$KEYWORDS_HAUNTER" "$NEWPAGES")
  HAXORUS=$(egrep -i "$KEYWORDS_HAXORUS" "$NEWPAGES")
  HEATMOR=$(egrep -i "$KEYWORDS_HEATMOR" "$NEWPAGES")
  HEATRAN=$(egrep -i "$KEYWORDS_HEATRAN" "$NEWPAGES")
  HERACROSS=$(egrep -i "$KEYWORDS_HERACROSS" "$NEWPAGES")
  HERDIER=$(egrep -i "$KEYWORDS_HERDIER" "$NEWPAGES")
  HIPPOPOTAS=$(egrep -i "$KEYWORDS_HIPPOPOTAS" "$NEWPAGES")
  HIPPOWDON=$(egrep -i "$KEYWORDS_HIPPOWDON" "$NEWPAGES")
  HITMONCHAN=$(egrep -i "$KEYWORDS_HITMONCHAN" "$NEWPAGES")
  HITMONLEE=$(egrep -i "$KEYWORDS_HITMONLEE" "$NEWPAGES")
  HITMONTOP=$(egrep -i "$KEYWORDS_HITMONTOP" "$NEWPAGES")
  HOOH=$(egrep -i "$KEYWORDS_HOOH" "$NEWPAGES")
  HONCHKROW=$(egrep -i "$KEYWORDS_HONCHKROW" "$NEWPAGES")
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
  categorize "HAXORUS" "Haxorus"
  categorize "HEATMOR" "Heatmor"
  categorize "HEATRAN" "Heatran"
  categorize "HERACROSS" "Heracross"
  categorize "HERDIER" "Herdier"
  categorize "HIPPOPOTAS" "Hippopotas"
  categorize "HIPPOWDON" "Hippowdon"
  categorize "HITMONCHAN" "Hitmonchan"
  categorize "HITMONLEE" "Hitmonlee"
  categorize "HITMONTOP" "Hitmontop"
  categorize "HOOH" "Ho-Oh"
  categorize "HONCHKROW" "Honchkrow"
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