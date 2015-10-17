#!/bin/bash

KEYWORDS_WINDOWSMOVIEMAKER="Windows(|(| )Live)(| )Movie(| )Maker"
KEYWORDS_ADOBEPREMIEREPRO="Adobe(| )Premiere|Premiere(| )Pro"
KEYWORDS_VIDEOEDITING="video(| )edit|edit(| )video|convert.+video|video.+convert"
KEYWORDS_VIDEOEDITING_OTHER="\biMovie|Nero(| )Vision|Corel(| )Video(| )Studio" #Apps which don't have their own category yet
KEYWORDS_VIDEOEDITING_EXCLUDE="$KEYWORDS_WINDOWSMOVIEMAKER|$KEYWORDS_ADOBEPREMIEREPRO|$KEYWORDS_VIDEOEDITING_OTHER"
KEYWORDS_VIDEOEDITING_ALL="$KEYWORDS_VIDEOEDITING|$KEYWORDS_VIDEOEDITING_EXCLUDE|$KEYWORDS_VIDEOEDITING_OTHER"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Video editing"

  WMM=$(egrep -i "$KEYWORDS_WINDOWSMOVIEMAKER" "$NEWPAGES")
  PREMIERE=$(egrep -i "$KEYWORDS_ADOBEPREMIEREPRO" "$NEWPAGES")
  VIDEO=$(egrep -i "$KEYWORDS_VIDEOEDITING_OTHER" "$NEWPAGES"; egrep -i "$KEYWORDS_VIDEOEDITING" "$NEWPAGES" | egrep -iv "$KEYWORDS_VIDEOEDITING_EXCLUDE")

  categorize "VIDEO" "Video editing software"
  categorize "WMM" "Windows Movie Maker"
  categorize "PREMIERE" "Adobe Premiere Pro"

  debug_end "Video editng"

fi

#This is here so ShellCheck doesn't complain about KEYWORDS_VIDEOEDITING_ALL, which is used elsewhere
KEYWORDS_VIDEOEDITING_ALL="$KEYWORDS_VIDEOEDITING_ALL"