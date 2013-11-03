#!/bin/bash

KEYWORDS_DVDAUTHORING="ISO (image|file)|(CD|DVD|Blu(-|| )Ray)(| )authoring|burn a (CD|DVD|Blu(|-| )Ray)|Burn(| )(CD|DVD)(|s)"
KEYWORDS_DVDAUTHORING_OTHER="Nero(| )(Linux|Burning(| )ROM)|K3B|Burn(| )Baby(| )Burn|ISO(| )Master|ImgBurn|DVD(| )Decrypter|CDBurner(| )XP|Infra(| )Recorder" #Names of apps that don't currently have their own category

if [ "$1" == "" ]; #Normal operation
then

  egrep -i "$KEYWORDS_DVDAUTHORING" newpages.txt >> Authoring.txt
  egrep -i "$KEYWORDS_DVDAUTHORING_OTHER" newpages.txt >> Authoring.txt

  AUTHORING=`stat --print=%s Authoring.txt`

  if [ $AUTHORING -ne 0 ];
  then
    export CATFILE="Authoring.txt"
    export CATNAME="CD and DVD authoring"
    $CATEGORIZE
  fi

  rm Authoring.txt

fi
