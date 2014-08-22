#!/bin/bash

KEYWORDS_ZANGOOSE="Zangoose"
KEYWORDS_ZAPDOS="Zapdos"
KEYWORDS_ZEBSTRIKA="Zebstrika"
KEYWORDS_ZEKROM="Zekrom"
KEYWORDS_ZIGZAGOON="Zigzagoon"
KEYWORDS_ZOROARK="Zoroark"
KEYWORDS_ZORUA="Zorua"
KEYWORDS_ZWEILOUS="Zweilous"
KEYWORDS_ZUBAT="Zubat"
KEYWORDS_POKEMONSPECIES_Z="$KEYWORDS_ZANGOOSE|$KEYWORDS_ZAPDOS|$KEYWORDS_ZEBSTRIKA|$KEYWORDS_ZEKROM|$KEYWORDS_ZIGZAGOON|$KEYWORDS_ZOROARK|$KEYWORDS_ZORUA|$KEYWORDS_ZUBAT|$KEYWORDS_ZWEILOUS"

if [ "$1" == "" ];
then

  debug_start "Pokemon Z script"

  ZANGOOSE=$(egrep -i "$KEYWORDS_ZANGOOSE" "$NEWPAGES")
  ZAPDOS=$(egrep -i "$KEYWORDS_ZAPDOS" "$NEWPAGES")
  ZEBSTRIKA=$(egrep -i "$KEYWORDS_ZEBSTRIKA" "$NEWPAGES")
  ZEKROM=$(egrep -i "$KEYWORDS_ZEKROM" "$NEWPAGES")
  ZIGZAGOON=$(egrep -i "$KEYWORDS_ZIGZAGOON" "$NEWPAGES")
  ZOROARK=$(egrep -i "$KEYWORDS_ZOROARK" "$NEWPAGES")
  ZORUA=$(egrep -i "$KEYWORDS_ZORUA" "$NEWPAGES")
  ZWEILOUS=$(egrep -i "$KEYWORDS_ZWEILOUS" "$NEWPAGES")
  ZUBAT=$(egrep -i "$KEYWORDS_ZUBAT" "$NEWPAGES")

  categorize "ZANGOOSE" "Zangoose"
  categorize "ZAPDOS" "Zapdos"
  categorize "ZEBSTRIKA" "Zebstrika"
  categorize "ZEKROM" "Zekrom"
  categorize "ZIGZAGOON" "Zigzagoon"
  categorize "ZOROARK" "Zoroark"
  categorize "ZORUA" "Zorua"
  categorize "ZWEILOUS" "Zweilous"
  categorize "ZUBAT" "Zubat"

  debug_end "Pokemon Z script"

fi