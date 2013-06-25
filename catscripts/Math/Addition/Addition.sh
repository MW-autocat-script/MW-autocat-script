#!/bin/bash

KEYWORDS_ADDITION="What is [0-9]{1,}(|(/|\.)[0-9]{1,}) (plus|\+) [0-9]{1,}(|(/|\.)[0-9]{1,})|What is [a-z]{1,}(|-[a-z]{1,}) plus [a-z]{1,}(|[a-z]{1,})"

ADDITION=`stat --print=%s Addition.txt`

if [ $ADDITION -ne 0 ];
then
  export CATFILE="Addition.txt"
  export CATNAME="Addition"
  $CATEGORIZE
fi

rm Addition.txt