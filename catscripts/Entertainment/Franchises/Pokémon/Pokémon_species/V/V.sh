#!/bin/bash

KEYWORDS_VANILLISH="Vanillish"
KEYWORDS_VANILLUXE="Vanilluxe"
KEYWORDS_VANILLITE="Vanillite"
KEYWORDS_VAPOREON="Vaporeon"
KEYWORDS_VENIPEDE="Venipede"
KEYWORDS_VENOMOTH="Venomoth"
KEYWORDS_VENONAT="Venonat"
KEYWORDS_VENUSAUR="Venusaur"
KEYWORDS_VESPIQUEN="Vespiquen"
KEYWORDS_VIBRAVA="Vibrava"
KEYWORDS_VICTINI="Victini"
KEYWORDS_VICTREEBEL="Victreebel"
KEYWORDS_VIGOROTH="Vigoroth"
KEYWORDS_VILEPLUME="Vileplume"
KEYWORDS_VIRIZION="Virizion"
KEYWORDS_VOLBEAT="Volbeat"
KEYWORDS_VOLCARONA="Volcarona"
KEYWORDS_VOLTORB="Voltorb"
KEYWORDS_VULLABY="Vullaby"
KEYWORDS_VULPIX="Vulpix"

if [ "$1" == "" ];
then

  debug_start "Pokemon V species"

  VANILLISH=$(egrep -i "$KEYWORDS_VANILLISH" "$NEWPAGES")
  VANILLUXE=$(egrep -i "$KEYWORDS_VANILLUXE" "$NEWPAGES")
  VANILLITE=$(egrep -i "$KEYWORDS_VANILLITE" "$NEWPAGES")
  VAPOREON=$(egrep -i "$KEYWORDS_VAPOREON" "$NEWPAGES")
  VENIPEDE=$(egrep -i "$KEYWORDS_VENIPEDE" "$NEWPAGES")
  VENOMOTH=$(egrep -i "$KEYWORDS_VENOMOTH" "$NEWPAGES")
  VENONAT=$(egrep -i "$KEYWORDS_VENONAT" "$NEWPAGES")
  VENUSAUR=$(egrep -i "$KEYWORDS_VENUSAUR" "$NEWPAGES")
  VESPIQUEN=$(egrep -i "$KEYWORDS_VESPIQUEN" "$NEWPAGES")
  VIBRAVA=$(egrep -i "$KEYWORDS_VIBRAVA" "$NEWPAGES")
  VICTINI=$(egrep -i "$KEYWORDS_VICTINI" "$NEWPAGES")
  VICTREEBEL=$(egrep -i "$KEYWORDS_VICTREEBEL" "$NEWPAGES")
  VIGOROTH=$(egrep -i "$KEYWORDS_VIGOROTH" "$NEWPAGES")
  VILEPLUME=$(egrep -i "$KEYWORDS_VILEPLUME" "$NEWPAGES")
  VIRIZION=$(egrep -i "$KEYWORDS_VIRIZION" "$NEWPAGES")
  VOLBEAT=$(egrep -i "$KEYWORDS_VOLBEAT" "$NEWPAGES")
  VOLCARONA=$(egrep -i "$KEYWORDS_VOLCARONA" "$NEWPAGES")
  VOLTORB=$(egrep -i "$KEYWORDS_VOLTORB" "$NEWPAGES")
  VULLABY=$(egrep -i "$KEYWORDS_VULLABY" "$NEWPAGES")
  VULPIX=$(egrep -i "$KEYWORDS_VULPIX" "$NEWPAGES")

  categorize "VANILLISH" "Vanillish"
  categorize "VANILLUXE" "Vanilluxe"
  categorize "VANILLITE" "Vanillite"
  categorize "VAPOREON" "Vaporeon"
  categorize "VENIPEDE" "Venipede"
  categorize "VENOMOTH" "Venomoth"
  categorize "VENONAT" "Venonat"
  categorize "VENUSAUR" "Venusaur"
  categorize "VESPIQUEN" "Vespiquen"
  categorize "VIBRAVA" "Vibrava"
  categorize "VICTINI" "Victini"
  categorize "VICTREEBEL" "Victreebel"
  categorize "VIGOROTH" "Vigoroth"
  categorize "VILEPLUME" "Vileplume"
  categorize "VIRIZION" "Virizion"
  categorize "VOLBEAT" "Volbeat"
  categorize "VOLCARONA" "Volcarona"
  categorize "VOLTORB" "Voltorb"
  categorize "VULLABY" "Vullaby"
  categorize "VULPIX" "Vulpix"

  debug_end "Pokemon V species"

fi