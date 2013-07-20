#!/bin/bash

KEYWORDS_MICHIGAN="Michigan"
KEYWORDS_DETROIT="Detroit"
KEYWORDS_MICHIGAN_EXCLUDE="$KEYWORDS_DETROIT|Lake(| )Michigan"
KEYWORDS_DETROIT_EXCLUDE="Detroit(| )Lions"

egrep -i "$KEYWORDS_MICHIGAN" newpages.txt | egrep -i "$KEYWORDS_MiCHIGAN_EXCLUDE" >> Michigan.txt
egrep -i "$KEYWORDS_DETROIT" newpages.txt | egrep -iv "$KEYWORDS_DETROIT_EXCLUDE" >> Detroit.txt

MICHIGAN=`stat --print=%s Michigan.txt`
DETROIT=`stat --print=%s Detroit.txt`

if [ $MICHIGAN -ne 0 ];
then
  export CATFILE="Michigan.txt"
  export CATNAME="Michigan"
  $CATEGORIZE
fi

if [ $DETROIT -ne 0 ];
then
  export CATFILE="Detroit.txt"
  export CATNAME="Detroit"
  $CATEGORIZE
fi

rm Michigan.txt
rm Detroit.txt