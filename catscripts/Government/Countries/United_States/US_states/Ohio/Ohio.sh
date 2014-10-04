#!/bin/bash

KEYWORDS_OHIO="Ohio"
KEYWORDS_CLEVELAND="Cleveland"
KEYWORDS_CLEVELAND_EXCLUDE="Cleveland(| )Brown|Grover(| )Cleveland|President(| )Cleveland|The(| )Cleveland(| )Show|Cleveland(|,)(| )Georgia|Mount(| )Cleveland|Cleveland(| )Hills"
KEYWORDS_CINCINNATI="Cincinnati"
KEYWORDS_CINCINNATI_EXCLUDE="Cincinnati(| )Bengals"
KEYWORDS_OHIO_EXCLUDE="$KEYWORDS_CLEVELAND|$KEYWORDS_CINCINNATI"
KEYWORDS_OHIO_ALL="$KEYWORDS_OHIO|$KEYWORDS_CINCINNATI|$KEYWORDS_CLEVELAND"

if [ "$1" == "" ];
then

  debug_start "Ohio"

  OHIO=$(egrep -i "$KEYWORDS_OHIO" "$NEWPAGES" | egrep -iv "$KEYWORDS_OHIO_EXCLUDE")
  CLEVELAND=$(egrep -i "$KEYWORDS_CLEVELAND" "$NEWPAGES" | egrep -iv "$KEYWORDS_CLEVELAND_EXCLUDE")
  CINCINNATI=$(egrep -i "$KEYWORDS_CINCINNATI" "$NEWPAGES" | egrep -iv "$KEYWORDS_CINCINNATI_EXCLUDE")

  categorize "OHIO" "Ohio"
  categorize "CLEVELAND" "Cleveland"
  categorize "CINCINNATI" "Cincinnati"

  debug_end "Ohio"

fi