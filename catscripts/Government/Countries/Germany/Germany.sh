#!/bin/bash

KEYWORDS_GERMANY="Germany"
KEYWORDS_NAZIGERMANY="Nazi"
KEYWORDS_HITLER="Hitler"
KEYWORDS_NAZIGERMANY_SECONDARY="Hitler(| )youth"
KEYWORDS_HITLER_EXCLUDE="$KEYWORDS_NAZIGERMANY_SECONDARY"
KEYWORDS_BERLIN="Berlin"
KEYWORDS_AUSCHWITZ="Auschwitz|Oświęcim"
KEYWORDS_NAZIGERMANY_EXCLUDE="$KEYWORDS_HITLER|$KEYWORDS_AUSCHWITZ"
KEYWORDS_GERMANY_EXCLUDE="$KEYWORDS_NAZIGERMANY|$KEYWORDS_HITLER|$KEYWORDS_NAZIGERMANY_SECONDARY|$KEYWORDS_AUSCHWITZ|$KEYWORDS_BERLIN"

egrep -i "$KEYWORDS_GERMANY" newpages.txt | egrep -iv "$KEYWORDS_GERMANY_EXCLUDE" >> Germany.txt
egrep -i "$KEYWORDS_NAZIGERMANY" newpages.txt | egrep -iv "$KEYWORDS_NAZIGERMANY_EXCLUDE" >> NaziGermany.txt
egrep -i "$KEYWORDS_NAZIGERMANY_SECONDARY" newpages.txt >> NaziGermany.txt
egrep -i "$KEYWORDS_BERLIN" newpages.txt >> Berlin.txt
egrep -i "$KEYWORDS_HITLER" newpages.txt | egrep -iv "$KEYWORDS_HITLER_EXCLUDE" >> AdolfHitler.txt

GERMANY=`stat --print=%s Germany.txt`
NAZI=`stat --print=%s NaziGermany.txt`
HITLER=`stat --print=%s AdolfHitler.txt`
BERLIN=`stat --print=%s Berlin.txt`

if [ $GERMANY -ne 0 ];
then
  export CATFILE="Germany.txt"
  export CATNAME="Germany"
  $CATEGORIZE
fi

if [ $NAZI -ne 0 ];
then
  export CATFILE="NaziGermany.txt"
  export CATNAME="Nazi Germany"
  $CATEGORIZE
fi

if [ $HITLER -ne 0 ];
then
  export CATFILE="AdolfHitler.txt"
  export CATNAME="Adolf Hitler"
  $CATEGORIZE
fi

if [ $BERLIN -ne 0 ];
then
  export CATFILE="Berlin.txt"
  export CATNAME="Berlin"
  $CATEGORIZE
fi

rm Germany.txt
rm NaziGermany.txt
rm AdolfHitler.txt
rm Berlin.txt