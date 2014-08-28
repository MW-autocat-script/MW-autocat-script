#!/bin/bash

KEYWORDS_HIMALAYAS="Himalaya"
KEYWORDS_MOUNT_EVEREST="(Mt(|\.)|Mount)(| )Everest"
KEYWORDS_HIMALAYAS_EXCLUDE="$KEYWORDS_MOUNT_EVEREST"
KEYWORDS_HIMALAYAS_ALL="$KEYWORDS_HIMALAYAS|$KEYWORDS_MOUNT_EVEREST"

if [ "$1" == "" ];
then

  debug_start "Himalayas"

  HIMALAYAS=$(egrep -i "$KEYWORDS_HIMALAYAS" "$NEWPAGES" | egrep -iv "$KEYWORDS_HIMALAYAS_EXCLUDE")
  EVEREST=$(egrep -i "$KEYWORDS_MOUNT_EVEREST" "$NEWPAGES")

  categorize "HIMALAYAS" "Himalayas"
  categorize "EVEREST" "Mount Everest"

  debug_end "Himalayas"

fi

#This is here so ShellCheck doesn't trip on KEYWORDS_HIMALAYAS_ALL, which is used elsewhere
KEYWORDS_HIMALAYAS_ALL="$KEYWORDS_HIMALAYAS_ALL"