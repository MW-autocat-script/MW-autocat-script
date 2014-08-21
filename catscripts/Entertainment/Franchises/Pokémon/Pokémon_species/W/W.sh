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

  categorize "WAILMER" "Wailmer"
  categorize "WAILORD" "Wailord"
  categorize "WALREIN" "Walrein"
  categorize "WARTORTLE" "Wartortle"
  categorize "WATCHOG" "Watchog"
  categorize "WEAVILE" "Weavile"
  categorize "WEEDLE" "Weedle"
  categorize "WEEPINBELL" "Weepinbell"
  categorize "WEEZING" "Weezing"
  categorize "WHIMSICOTT" "Whimsicott"
  categorize "WHIRLIPEDE" "Whirlipede"
  categorize "WHISCASH" "Whiscash"
  categorize "WHISMUR" "Whismur"
  categorize "WIGGLYTUFF" "Wigglytuff"
  categorize "WINGULL" "Wingull"
  categorize "WOBUFFET" "Wobbuffet"
  categorize "WOOBAT" "Woobat"
  categorize "WOOPER" "Wooper"
  categorize "WORMADAM" "Wormadam"
  categorize "WURMPLE" "Wurmple"
  categorize "WYNAUT" "Wynaut"

  debug_end "Pokemon W species"

fi
