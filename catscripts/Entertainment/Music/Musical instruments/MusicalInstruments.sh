#!/bin/bash

KEYWORDS_BASSOONS="Basso(|o)n"
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
KEYWORDS_OBOE="\bOboe"
KEYWORDS_PIANO="Piano"
KEYWORDS_RECORDER="on(| )(a|the)(| )recorder|for recorder$|notes.+recorder|recorder.+notes"
KEYWORDS_SAXOPHONE="Saxophone|(alto|the|tenor|soprillo|soprano|melody|baritone|bass)(| )sax"
KEYWORDS_TRUMPET="trumpet"
KEYWORDS_VIOLA="\bViola(|s)\b|Violist"
KEYWORDS_VIOLIN="Violin"
KEYWORDS_XYLOPHONE="Xylophon(e|ist)"

KEYWORDS_MUSICALINSTRUMENT="Musical(| )instrument"
KEYWORDS_MUSICALINSTRUMENT_EXCLUDE="$KEYWORDS_BASSOONS|$KEYWORDS_CELLO|$KEYWORDS_CLARINET|$KEYWORDS_DRUMS|$KEYWORDS_FLUTE|$KEYWORDS_GUITAR|$KEYWORDS_HARP|$KEYWORDS_OBOE|$KEYWORDS_PIANO|$KEYWORDS_RECORDER|$KEYWORDS_SAXOPHONE|$KEYWORDS_VIOLA|$KEYWORDS_VIOLIN|$KEYWORDS_XYLOPHONE"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Musical instruments"
  
  BASSOONS=$(egrep -i "$KEYWORDS_BASSOONS" "$NEWPAGES")
  CELLO=$(egrep -i "$KEYWORDS_CELLO" "$NEWPAGES")
  CLARINET=$(egrep -i "$KEYWORDS_CLARINET" "$NEWPAGES")
  DRUMS=$(egrep -i "$KEYWORDS_DRUMS" "$NEWPAGES" | egrep -iv "$KEYWORDS_DRUMS_EXCLUDE")
  FLUTE=$(egrep -i "$KEYWORDS_FLUTE" "$NEWPAGES" | egrep -iv "$KEYWORDS_FLUTE_EXCLUDE")
  GUITAR=$(egrep -i "$KEYWORDS_GUITAR" "$NEWPAGES" | egrep -iv "$KEYWORDS_GUITAR_EXCLUDE")
  HARP=$(egrep -i "$KEYWORDS_HARP" "$NEWPAGES" | egrep -iv "$KEYWORDS_HARP_EXCLUDE")
  OBOE=$(egrep -i "$KEYWORDS_OBOE" "$NEWPAGES")
  PIANO=$(egrep -i "$KEYWORDS_PIANO" "$NEWPAGES")
  RECORDER=$(egrep -i "$KEYWORDS_RECORDER" "$NEWPAGES")
  SAXOPHONE=$(egrep -i "$KEYWORDS_SAXOPHONE" "$NEWPAGES")
  TRUMPET=$(egrep -i "$KEYWORDS_TRUMPET" "$NEWPAGES")
  VIOLIN=$(egrep -i "$KEYWORDS_VIOLIN" "$NEWPAGES")
  VIOLA=$(egrep -i "$KEYWORDS_VIOLA" "$NEWPAGES")
  XYLOPHONE=$(egrep -i "$KEYWORDS_XYLOPHONE" "$NEWPAGES")
  INSTRUMENTS=$(egrep -i "$KEYWORDS_MUSICALINSTRUMENT" "$NEWPAGES" | egrep -iv "$KEYWORDS_MUSICALINSTRUMENT_EXCLUDE")

  categorize "BASSOONS" "Bassoon"
  categorize "CELLO" "Cello"
  categorize "CLARINET" "Clarinet"
  categorize "DRUMS" "Drums"
  categorize "FLUTE" "Flute"
  categorize "GUITAR" "Guitar"
  categorize "HARP" "Harp"
  categorize "OBOE" "Oboe"
  categorize "PIANO" "Piano"
  categorize "RECORDER" "Recorder (musical instrument)"
  categorize "SAXOPHONE" "Saxophone"
  categorize "TRUMPET" "Trumpet"
  categorize "VIOLIN" "Violin"
  categorize "VIOLA" "Viola"
  categorize "XYLOPHONE" "Xylophone"
  categorize "INSTRUMENTS" "Musical instruments"

  debug_end "Musical instruments"

fi