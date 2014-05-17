#!/bin/bash

KEYWORDS_HIMALAYAS="Himalaya"
KEYWORDS_MOUNT_EVEREST="(Mt(|\.)|Mount)(| )Everest"
KEYWORDS_HIMALAYAS_EXCLUDE="$KEYWORDS_MOUNT_EVEREST"

if [ "$1" == "" ];
then

  egrep -i "$KEYWORDS_HIMALAYAS" newpages.txt | egrep -iv "$KEYWORDS_HIMALAYAS_EXCLUDE" >> Himalayas.txt
  egrep -i "$KEYWORDS_MOUNT_EVEREST" newpages.txt >> MountEverest.txt

  HIMALAYAS=$(stat --print=%s Himalayas.txt)
  EVEREST=$(stat --print=%s MountEverest.txt)

  if [ $HIMALAYAS -ne 0 ];
  then
    export CATFILE="Himalayas.txt"
    export CATNAME="Himalayas"
    $CATEGORIZE
  fi

  if [ $EVEREST -ne 0 ];
  then
    export CATFILE="MountEverest.txt"
    export CATNAME="Mount Everest"
    $CATEGORIZE
  fi

  rm Himalayas.txt
  rm MountEverest.txt

fi