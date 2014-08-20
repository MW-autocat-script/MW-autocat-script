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

  if [ "$VANILLISH" != "" ];
  then
    printf "%s" "$VANILLISH" > Vanillish.txt
    export CATFILE="Vanillish.txt"
    export CATNAME="Vanillish"
    $CATEGORIZE
    rm Vanillish.txt
    unset VANILLISH
  fi

  if [ "$VANILLUXE" != "" ];
  then
    printf "%s" "$VANILLUXE" > Vanilluxe.txt
    export CATFILE="Vanilluxe.txt"
    export CATNAME="Vanilluxe"
    $CATEGORIZE
    rm Vanilluxe.txt
    unset VANILLUXE
  fi

  if [ "$VANILLITE" != "" ];
  then
    printf "%s" "$VANILLITE" > Vanillite.txt
    export CATFILE="Vanillite.txt"
    export CATNAME="Vanillite"
    $CATEGORIZE
    rm Vanillite.txt
    unset VANILLITE
  fi

  if [ "$VAPOREON" != "" ];
  then
    printf "%s" "$VAPOREON" > Vaporeon.txt
    export CATFILE="Vaporeon.txt"
    export CATNAME="Vaporeon"
    $CATEGORIZE
    rm Vaporeon.txt
    unset VAPOREON
  fi

  if [ "$VENIPEDE" != "" ];
  then
    printf "%s" "$VENIPEDE" > Venipede.txt
    export CATFILE="Venipede.txt"
    export CATNAME="Venipede"
    $CATEGORIZE
    rm Venipede.txt
    unset VENIPEDE
  fi

  if [ "$VENOMOTH" != "" ];
  then
    printf "%s" "$VENOMOTH" > Venomoth.txt
    export CATFILE="Venomoth.txt"
    export CATNAME="Venomoth"
    $CATEGORIZE
    rm Venomoth.txt
    unset VENOMOTH
  fi

  if [ "$VENONAT" != "" ];
  then
    printf "%s" "$VENONAT" > Venonat.txt
    export CATFILE="Venonat.txt"
    export CATNAME="Venonat"
    $CATEGORIZE
    rm Venonat.txt
    unset VENONAT
  fi

  if [ "$VENUSAUR" != "" ];
  then
    printf "%s" "$VENUSAUR" > Venusaur.txt
    export CATFILE="Venusaur.txt"
    export CATNAME="Venusaur"
    $CATEGORIZE
    rm Venusaur.txt
    unset VENUSAUR
  fi

  if [ "$VESPIQUEN" != "" ];
  then
    printf "%s" "$VESPIQUEN" > Vespiquen.txt
    export CATFILE="Vespiquen.txt"
    export CATNAME="Vespiquen"
    $CATEGORIZE
    rm Vespiquen.txt
    unset VESPIQUEN
  fi

  if [ "$VIBRAVA" != "" ];
  then
    printf "%s" "$VIBRAVA" > Vibrava.txt
    export CATFILE="Vibrava.txt"
    export CATNAME="Vibrava"
    $CATEGORIZE
    rm Vibrava.txt
    unset VIBRAVA
  fi

  if [ "$VICTINI" != "" ];
  then
    printf "%s" "$VICTINI" > Victini.txt
    export CATFILE="Victini.txt"
    export CATNAME="Victini"
    $CATEGORIZE
    rm Victini.txt
    unset VICTINI
  fi

  if [ "$VICTREEBEL" != "" ];
  then
    printf "%s" "$VICTREEBEL" > Victreebel.txt
    export CATFILE="Victreebel.txt"
    export CATNAME="Victreebel"
    $CATEGORIZE
    rm Victreebel.txt
    unset VICTREEBEL
  fi

  if [ "$VIGOROTH" != "" ];
  then
    printf "%s" "$VIGOROTH" > Vigoroth.txt
    export CATFILE="Vigoroth.txt"
    export CATNAME="Vigoroth"
    $CATEGORIZE
    rm Vigoroth.txt
    unset VIGOROTH
  fi

  if [ "$VILEPLUME" != "" ];
  then
    printf "%s" "$VILEPLUME" > Vileplume.txt
    export CATFILE="Vileplume.txt"
    export CATNAME="Vileplume"
    $CATEGORIZE
    rm Vileplume.txt
    unset VILEPLUME
  fi

  if [ "$VIRIZION" != "" ];
  then
    printf "%s" "$VIRIZION" > Virizion.txt
    export CATFILE="Virizion.txt"
    export CATNAME="Virizion"
    $CATEGORIZE
    rm Virizion.txt
    unset VIRIZION
  fi

  if [ "$VOLBEAT" != "" ];
  then
    printf "%s" "$VOLBEAT" > Volbeat.txt
    export CATFILE="Volbeat.txt"
    export CATNAME="Volbeat"
    $CATEGORIZE
    rm Volbeat.txt
    unset VOLBEAT
  fi

  if [ "$VOLCARONA" != "" ];
  then
    printf "%s" "$VOLCARONA" > Volcarona.txt
    export CATFILE="Volcarona.txt"
    export CATNAME="Volcarona"
    $CATEGORIZE
    rm Volcarona.txt
    unset VOLCARONA
  fi

  if [ "$VOLTORB" != "" ];
  then
    printf "%s" "$VOLTORB" > Voltorb.txt
    export CATFILE="Voltorb.txt"
    export CATNAME="Voltorb"
    $CATEGORIZE
    rm Voltorb.txt
    unset VOLTORB
  fi

  if [ "$VULLABY" != "" ];
  then
    printf "%s" "$VULLABY" > Vullaby.txt
    export CATFILE="Vullaby.txt"
    export CATNAME="Vullaby"
    $CATEGORIZE
    rm Vullaby.txt
    unset VULLABY
  fi

  if [ "$VULPIX" != "" ];
  then
    printf "%s" "$VULPIX" > Vulpix.txt
    export CATFILE="Vulpix.txt"
    export CATNAME="Vulpix"
    $CATEGORIZE
    rm Vulpix.txt
    unset VULPIX
  fi

  debug_end "Pokemon V species"

fi