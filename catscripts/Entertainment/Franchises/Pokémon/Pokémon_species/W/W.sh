#!/bin/bash

KEYWORDS_WAILMER="Wailmer"
KEYWORDS_WAILORD="Wailord"
KEYWORDS_WALREIN="Walrein"
KEYWORDS_WARTORTLE="Wartortle"
KEYWORDS_WATCHOG="Watchog"
KEYWORDS_WEAVILE="Weavile"
KEYWORDS_WEEDLE="Weedle"
KEYWORDS_WEEPINBELL="Weepinbell"
KEYWORDS_WEEZING="Weezing"
KEYWORDS_WHIMSICOTT="Whimsicott"
KEYWORDS_WHIRLIPEDE="Whirlipede"
KEYWORDS_WHISCASH="Whiscash"
KEYWORDS_WHISMUR="Whismur"
KEYWORDS_WIGGLYTUFF="Wigglytuff"
KEYWORDS_WINGULL="Wingull"
KEYWORDS_WOBUFFET="Wobuffet"
KEYWORDS_WOOBAT="\bWoobat"
KEYWORDS_WOOPER="Wooper"
KEYWORDS_WORMADAM="Wormadam"
KEYWORDS_WURMPLE="Wurmple"
KEYWORDS_WYNAUT="Wynaut"

if [ "$1" == "" ];
then
  
  debug_start "Pokemon W species"

  WAILMER=$(egrep -i "$KEYWORDS_WAILMER" "$NEWPAGES")
  WAILORD=$(egrep -i "$KEYWORDS_WAILORD" "$NEWPAGES")
  WALREIN=$(egrep -i "$KEYWORDS_WALREIN" "$NEWPAGES")
  WARTORTLE=$(egrep -i "$KEYWORDS_WARTORTLE" "$NEWPAGES")
  WATCHOG=$(egrep -i "$KEYWORDS_WATCHOG" "$NEWPAGES")
  WEAVILE=$(egrep -i "$KEYWORDS_WEAVILE" "$NEWPAGES")
  WEEDLE=$(egrep -i "$KEYWORDS_WEEDLE" "$NEWPAGES")
  WEEPINBELL=$(egrep -i "$KEYWORDS_WEEPINBELL" "$NEWPAGES")
  WEEZING=$(egrep -i "$KEYWORDS_WEEZING" "$NEWPAGES")
  WHIMSICOTT=$(egrep -i "$KEYWORDS_WHIMSICOTT" "$NEWPAGES")
  WHIRLIPEDE=$(egrep -i "$KEYWORDS_WHIRLIPEDE" "$NEWPAGES")
  WHISCASH=$(egrep -i "$KEYWORDS_WHISCASH" "$NEWPAGES")
  WHISMUR=$(egrep -i "$KEYWORDS_WHISMUR" "$NEWPAGES")
  WIGGLYTUFF=$(egrep -i "$KEYWORDS_WIGGLYTUFF" "$NEWPAGES")
  WINGULL=$(egrep -i "$KEYWORDS_WINGULL" "$NEWPAGES")
  WOBUFFET=$(egrep -i "$KEYWORDS_WOBUFFET" "$NEWPAGES")
  WOOBAT=$(egrep -i "$KEYWORDS_WOOBAT" "$NEWPAGES")
  WOOPER=$(egrep -i "$KEYWORDS_WOOPER" "$NEWPAGES")
  WORMADAM=$(egrep -i "$KEYWORDS_WORMADAM" "$NEWPAGES")
  WURMPLE=$(egrep -i "$KEYWORDS_WURMPLE" "$NEWPAGES")
  WYNAUT=$(egrep -i "$KEYWORDS_WYNAUT" "$NEWPAGES")

  if [ "$WAILMER" != "" ];
  then
    printf "%s" "$WAILMER" > Wailmer.txt
    export CATFILE="Wailmer.txt"
    export CATNAME="Wailmer"
    $CATEGORIZE
    rm Wailmer.txt
    unset WAILMER
  fi

  if [ "$WAILORD" != "" ];
  then
    printf "%s" "$WAILORD" > Wailord.txt
    export CATFILE="Wailord.txt"
    export CATNAME="Wailord"
    $CATEGORIZE
    rm Wailord.txt
    unset WAILORD
  fi

  if [ "$WALREIN" != "" ];
  then
    printf "%s" "$WALREIN" > Walrein.txt
    export CATFILE="Walrein.txt"
    export CATNAME="Walrein"
    $CATEGORIZE
    rm Walrein.txt
    unset WALREIN
  fi

  if [ "$WARTORTLE" != "" ];
  then
    printf "%s" "$WARTORTLE" > Wartortle.txt
    export CATFILE="Wartortle.txt"
    export CATNAME="Wartortle"
    $CATEGORIZE
    rm Wartortle.txt
    unset WARTORTLE
  fi

  if [ "$WATCHOG" != "" ];
  then
    printf "%s" "$WATCHOG" > Watchog.txt
    export CATFILE="Watchog.txt"
    export CATNAME="Watchog"
    $CATEGORIZE
    rm Watchog.txt
    unset WATCHOG
  fi

  if [ "$WEAVILE" != "" ];
  then
    printf "%s" "$WEAVILE" > Weavile.txt
    export CATFILE="Weavile.txt"
    export CATNAME="Weavile"
    $CATEGORIZE
    rm Weavile.txt
    unset WEAVILE
  fi

  if [ "$WEEDLE" != "" ];
  then
    printf "%s" "$WEEDLE" > Weedle.txt
    export CATFILE="Weedle.txt"
    export CATNAME="Weedle"
    $CATEGORIZE
    rm Weedle.txt
    unset WEEDLE
  fi

  if [ "$WEEPINBELL" != "" ];
  then
    printf "%s" "$WEEPINBELL" > Weepinbell.txt
    export CATFILE="Weepinbell.txt"
    export CATNAME="Weepinbell"
    $CATEGORIZE
    rm Weepinbell.txt
    unset WEEPINBELL
  fi

  if [ "$WEEZING" != "" ];
  then
    printf "%s" "$WEEZING" > Weezing.txt
    export CATFILE="Weezing.txt"
    export CATNAME="Weezing"
    $CATEGORIZE
    rm Weezing.txt
    unset WEEZING
  fi

  if [ "$WHIMSICOTT" != "" ];
  then
    printf "%s" "$WHIMSICOTT" > Whimsicott.txt
    export CATFILE="Whimsicott.txt"
    export CATNAME="Whimsicott"
    $CATEGORIZE
    rm Whimsicott.txt
    unset WHIMSICOTT
  fi

  if [ "$WHIRLIPEDE" != "" ];
  then
    printf "%s" "$WHIRLIPEDE" > Whirlipede.txt
    export CATFILE="Whirlipede.txt"
    export CATNAME="Whirlipede"
    $CATEGORIZE
    rm Whirlipede.txt
    unset WHIRLIPEDE
  fi

  if [ "$WHISCASH" != "" ];
  then
    printf "%s" "$WHISCASH" > Whiscash.txt
    export CATFILE="Whiscash.txt"
    export CATNAME="Whiscash"
    $CATEGORIZE
    rm Whiscash.txt
    unset WHISCASH
  fi

  if [ "$WHISMUR" != "" ];
  then
    printf "%s" "$WHISMUR" > Whismur.txt
    export CATFILE="Whismur.txt"
    export CATNAME="Whismur"
    $CATEGORIZE
    rm Whismur.txt
    unset WHISMUR
  fi

  if [ "$WIGGLYTUFF" != "" ];
  then
    printf "%s" "$WIGGLYTUFF" > Wigglytuff.txt
    export CATFILE="Wigglytuff.txt"
    export CATNAME="Wigglytuff"
    $CATEGORIZE
    rm Wigglytuff.txt
    unset WIGGLYTUFF
  fi

  if [ "$WINGULL" != "" ];
  then
    printf "%s" "$WINGULL" > Wingull.txt
    export CATFILE="Wingull.txt"
    export CATNAME="Wingull"
    $CATEGORIZE
    rm Wingull.txt
    unset WINGULL
  fi

  if [ "$WOBUFFET" != "" ];
  then
    printf "%s" "$WOBUFFET" > Wobuffet.txt
    export CATFILE="Wobbuffet.txt"
    export CATNAME="Wobbuffet"
    $CATEGORIZE
    rm Wobuffet.txt
    unset WOBBUFFET
  fi

  if [ "$WOOBAT" != "" ];
  then
    printf "%s" "$WOOBAT" > Woobat.txt
    export CATFILE="Woobat.txt"
    export CATNAME="Woobat"
    $CATEGORIZE
    rm Woobat.txt
    unset WOOBAT
  fi

  if [ "$WOOPER" != "" ];
  then
    printf "%s" "$WOOPER" > Wooper.txt
    export CATFILE="Wooper.txt"
    export CATNAME="Wooper"
    $CATEGORIZE
    rm Wooper.txt
    unset WOOPER
  fi

  if [ "$WORMADAM" != "" ];
  then
    printf "%s" "$WORMADAM" > Wormadam.txt
    export CATFILE="Wormadam.txt"
    export CATNAME="Wormadam"
    $CATEGORIZE
    rm Wormadam.txt
    unset WORMADAM
  fi

  if [ "$WURMPLE" != "" ];
  then
    printf "%s" "$WURMPLE" > Wurmple.txt
    export CATFILE="Wurmple.txt"
    export CATNAME="Wurmple"
    $CATEGORIZE
    rm Wurmple.txt
    unset WURMPLE
  fi

  if [ "$WYNAUT" != "" ];
  then
    printf "%s" "$WYNAUT" > Wynaut.txt
    export CATFILE="Wynaut.txt"
    export CATNAME="Wynaut"
    $CATEGORIZE
    rm Wynaut.txt
    unset WYNAUT
  fi

  debug_end "Pokemon W species"

fi
