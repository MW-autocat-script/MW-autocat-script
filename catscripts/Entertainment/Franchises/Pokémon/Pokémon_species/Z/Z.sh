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

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Pokemon Z script\n"
  fi

  ZANGOOSE="$(egrep -i "$KEYWORDS_ZANGOOSE" newpages.txt)"
  ZAPDOS="$(egrep -i "$KEYWORDS_ZAPDOS" newpages.txt)"
  ZEBSTRIKA="$(egrep -i "$KEYWORDS_ZEBSTRIKA" newpages.txt)"
  ZEKROM="$(egrep -i "$KEYWORDS_ZEKROM" newpages.txt)"
  ZIGZAGOON="$(egrep -i "$KEYWORDS_ZIGZAGOON" newpages.txt)"
  ZOROARK="$(egrep -i "$KEYWORDS_ZOROARK" newpages.txt)"
  ZORUA="$(egrep -i "$KEYWORDS_ZORUA" newpages.txt)"
  ZWEILOUS="$(egrep -i "$KEYWORDS_ZWEILOUS" newpages.txt)"
  ZUBAT="$(egrep -i "$KEYWORDS_ZUBAT" newpages.txt)"

  if [ "$ZANGOOSE" != "" ];
  then
    printf "%s" "$ZANGOOSE" > Zangoose.txt
    export CATFILE="Zangoose.txt"
    export CATNAME="Zangoose"
    $CATEGORIZE
    rm Zangoose.txt
    unset ZANGOOSE
  fi

  if [ "$ZAPDOS" != "" ];
  then
    printf "%s" "$ZAPDOS" > Zapdos.txt
    export CATFILE="Zapdos.txt"
    export CATNAME="Zapdos"
    $CATEGORIZE
    rm Zapdos.txt
    unset ZAPDOS
  fi

  if [ "$ZEBSTRIKA" != "" ];
  then
    printf "%s" "$ZEBSTRIKA" > Zebstrika.txt
    export CATFILE="Zebstrika.txt"
    export CATNAME="Zebstrika"
    $CATEGORIZE
    rm Zebstrika.txt
    unset ZEBSTRIKA
  fi

  if [ "$ZEKROM" != "" ];
  then
    printf "%s" "$ZEKROM" > Zekrom.txt
    export CATFILE="Zekrom.txt"
    export CATNAME="Zekrom"
    $CATEGORIZE
    rm Zekrom.txt
    unset ZEKROM
  fi

  if [ "$ZIGZAGOON" != "" ];
  then
    printf "%s" "$ZIGZAGOON" > Zigzagoon.txt
    export CATFILE="Zigzagoon.txt"
    export CATNAME="Zigzagoon"
    $CATEGORIZE
    rm Zigzagoon.txt
    unset ZIGZAGOON
  fi

  if [ "$ZOROARK" != "" ];
  then
    printf "%s" "$ZOROARK" > Zoroark.txt
    export CATFILE="Zoroark.txt"
    export CATNAME="Zoroark"
    $CATEGORIZE
    rm Zoroark.txt
    unset ZOROARK
  fi

  if [ "$ZORUA" != "" ];
  then
    printf "%s" "$ZORUA" > Zorua.txt
    export CATFILE="Zorua.txt"
    export CATNAME="Zorua"
    $CATEGORIZE
    rm Zorua.txt
    unset ZORUA
  fi

  if [ "$ZWEILOUS" != "" ];
  then
    printf "%s" "$ZWEILOUS" > Zweilous.txt
    export CATFILE="Zweilous.txt"
    export CATNAME="Zweilous"
    $CATEGORIZE
    rm Zweilous.txt
    unset ZWEILOUS
  fi

  if [ "$ZUBAT" != "" ];
  then
    printf "%s" "$ZUBAT" > Zubat.txt
    export CATFILE="Zubat.txt"
    export CATNAME="Zubat"
    $CATEGORIZE
    rm Zubat.txt
    unset ZUBAT
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Pokemon Z script\n"
  fi

fi