#!/bin/bash

KEYWORDS_ADDITION="What(| )is(| )[0-9]{1,}(|(/|\.)[0-9]{1,})(| )(plus|\+)(| )[0-9]{1,}(|(/|\.)[0-9]{1,})|What(| )is(| )[a-z]{1,}(|-[a-z]{1,})(| )plus(| )[a-z]{1,}(|[a-z]{1,})"

if [ "$1" == "" ];
then

  debug_start "Addition"

  ADDITION=$(egrep -i "$KEYWORDS_ADDITION" "$NEWPAGES")

  if [ "$ADDITION" != "" ];
  then
    printf "%s" "$ADDITION" > Addition.txt
    export CATFILE="Addition.txt"
    export CATNAME="Addition"
    $CATEGORIZE
    rm Addition.txt
    unset ADDITION
  fi

  debug_end "Addition"

fi