#!/bin/bash

debug_start "Music"

MUSICDIR="./catscripts/Entertainment/Music"

$MUSICDIR/Bands/Bands.sh
$MUSICDIR/Composers/Composers.sh
. $MUSICDIR/Lyrics/Lyrics.sh #KEYWORDS_LYRICS_ALL
$MUSICDIR/Musical\ instruments/MusicalInstruments.sh
$MUSICDIR/Singers/Singers.sh

debug_end "Music"

