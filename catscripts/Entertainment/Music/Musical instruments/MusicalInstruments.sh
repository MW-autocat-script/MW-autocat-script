#!/bin/bash

KEYWORDS_CELLO="\bCello(|s)\b"
KEYWORDS_CLARINET="Clarinet"
KEYWORDS_DRUMS="Drum|\bBongo"
KEYWORDS_DRUMS_EXCLUDE="ear(| )drum|brake|chicken|turkey"
KEYWORDS_FLUTE="\bFlute(|s)"
KEYWORDS_FLUTE_EXCLUDE="(azelf|azure)(| )flute|Pok(e|é)(| )flute|Pokémon|Pokemon"
KEYWORDS_GUITAR="Guitar"
KEYWORDS_GUITAR_EXCLUDE="Guitar(| )Hero"
KEYWORDS_HARP="\bharp(|s)\b"
KEYWORDS_HARP_EXCLUDE="harp(| )seal"
KEYWORDS_PIANO="Piano"
KEYWORDS_RECORDER="on(| )(a|the)(| )recorder|for recorder$|notes.+recorder|recorder.+notes"
KEYWORDS_SAXOPHONE="Saxophone"
KEYWORDS_VIOLA="\bViola(|s)\b|Violist"
KEYWORDS_VIOLIN="Violin"
KEYWORDS_XYLOPHONE="Xylophon(e|ist)"

KEYWORDS_MUSICALINSTRUMENT="Musical(| )instrument"
KEYWORDS_MUSICALINSTRUMENT_EXCLUDE="$KEYWORDS_CELLO|$KEYWORDS_CLARINET|$KEYWORDS_DRUMS|$KEYWORDS_FLUTE|$KEYWORDS_GUITAR|$KEYWORDS_HARP|$KEYWORDS_PIANO|$KEYWORDS_RECORDER|$KEYWORDS_SAXOPHONE|$KEYWORDS_VIOLA|$KEYWORDS_VIOLIN|$KEYWORDS_XYLOPHONE"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Musical instruments"

  CELLO=$(egrep -i "$KEYWORDS_CELLO" newpages.txt)
  CLARINET=$(egrep -i "$KEYWORDS_CLARINET" newpages.txt)
  DRUMS=$(egrep -i "$KEYWORDS_DRUMS" newpages.txt | egrep -iv "$KEYWORDS_DRUMS_EXCLUDE")
  FLUTE=$(egrep -i "$KEYWORDS_FLUTE" newpages.txt | egrep -iv "$KEYWORDS_FLUTE_EXCLUDE")
  GUITAR=$(egrep -i "$KEYWORDS_GUITAR" newpages.txt | egrep -iv "$KEYWORDS_GUITAR_EXCLUDE")
  HARP=$(egrep -i "$KEYWORDS_HARP" newpages.txt | egrep -iv "$KEYWORDS_HARP_EXCLUDE")
  PIANO=$(egrep -i "$KEYWORDS_PIANO" newpages.txt)
  RECORDER=$(egrep -i "$KEYWORDS_RECORDER" newpages.txt)
  SAXOPHONE=$(egrep -i "$KEYWORDS_SAXOPHONE" newpages.txt)
  VIOLIN=$(egrep -i "$KEYWORDS_VIOLIN" newpages.txt)
  VIOLA=$(egrep -i "$KEYWORDS_VIOLA" newpages.txt)
  XYLOPHONE=$(egrep -i "$KEYWORDS_XYLOPHONE" newpages.txt)
  INSTRUMENTS=$(egrep -i "$KEYWORDS_MUSICALINSTRUMENT" newpages.txt | egrep -iv "$KEYWORDS_MUSICALINSTRUMENT_EXCLUDE")

  if [ "$CELLO" != "" ];
  then
    printf "%s" "$CELLO" > Cello.txt
    export CATFILE="Cello.txt"
    export CATNAME="Cello"
    $CATEGORIZE
    rm Cello.txt
    unset CELLO
  fi

  if [ "$CLARINET" != "" ];
  then
    printf "%s" "$CLARINET" > Clarinet.txt
    export CATFILE="Clarinet.txt"
    export CATNAME="Clarinet"
    $CATEGORIZE
    rm Clarinet.txt
    unset CLARINET
  fi

  if [ "$DRUMS" != "" ];
  then
    printf "%s" "$DRUMS" > Drums.txt
    export CATFILE="Drums.txt"
    export CATNAME="Drums"
    $CATEGORIZE
    rm Drums.txt
    unset DRUMS
  fi

  if [ "$FLUTE" != "" ];
  then
    printf "%s" "$FLUTE" > Flute.txt
    export CATFILE="Flute.txt"
    export CATNAME="Flute"
    $CATEGORIZE
    rm Flute.txt
    unset FLUTE
  fi

  if [ "$GUITAR" != "" ];
  then
    printf "%s" "$GUITAR" > Guitar.txt
    export CATFILE="Guitar.txt"
    export CATNAME="Guitar"
    $CATEGORIZE
    rm Guitar.txt
    unset GUITAR
  fi

  if [ "$HARP" != "" ];
  then
    printf "%s" "$HARP" > Harp.txt
    export CATFILE="Harp.txt"
    export CATNAME="Harp"
    $CATEGORIZE
    rm Harp.txt
    unset HARP
  fi

  if [ "$PIANO" != "" ];
  then
    printf "%s" "$PIANO" > Piano.txt
    export CATFILE="Piano.txt"
    export CATNAME="Piano"
    $CATEGORIZE
    rm Piano.txt
    unset PIANO
  fi

  if [ "$RECORDER" != "" ];
  then
    printf "%s" "$RECORDER" > Recorder.txt
    export CATFILE="Recorder.txt"
    export CATNAME="Recorder (musical instrument)"
    $CATEGORIZE
    rm Recorder.txt
    unset RECORDER
  fi

  if [ "$SAXOPHONE" != "" ];
  then
    printf "%s" "$SAXOPHONE" > Saxophone.txt
    export CATFILE="Saxophone.txt"
    export CATNAME="Saxophone"
    $CATEGORIZE
    rm Saxophone.txt
    unset SAXOPHONE
  fi

  if [ "$VIOLIN" != "" ];
  then
    printf "%s" "$VIOLIN" > Violin.txt
    export CATFILE="Violin.txt"
    export CATNAME="Violin"
    $CATEGORIZE
    rm Violin.txt
    unset VIOLIN
  fi

  if [ "$VIOLA" != "" ];
  then
    printf "%s" "$VIOLA" > Viola.txt
    export CATFILE="Viola.txt"
    export CATNAME="Viola"
    $CATEGORIZE
    rm Viola.txt
    unset VIOLA
  fi

  if [ "$XYLOPHONE" != "" ];
  then
    printf "%s" "$XYLOPHONE" > Xylophone.txt
    export CATFILE="Xylophone.txt"
    export CATNAME="Xylophone"
    $CATEGORIZE
    rm Xylophone.txt
    unset XYLOPHONE
  fi

  if [ "$INSTRUMENTS" != "" ];
  then
    printf "%s" "$INSTRUMENTS" > Instruments.txt
    export CATFILE="Instruments.txt"
    export CATNAME="Musical instruments"
    $CATEGORIZE
    rm Instruments.txt
    unset INSTRUMENTS
  fi

  debug_end "Musical instruments"

fi