#!/bin/bash

KEYWORDS_COD4="Modern(| )Warfare|\bCOD(| )4|Call(| )of(| )Duty(| )4"
KEYWORDS_COD4_EXCLUDE="Modern(| )Warfare(| )(two|three|[2-9]{1,})"
KEYWORDS_CODWAW="\bCOD(| )5|\bWaW\b|World(| )at(| )War|Call(| )of(| )Duty(| )5"
KEYWORDS_CODMW2="\bCOD(| )6|\bMW2\b|Modern(| )Warfare(| )2|Call(| )of(| )Duty(| )6"
KEYWORDS_CODBO="\bCOD(| )7|Black Ops|Call of Duty 7"
KEYWORDS_CODBO_EXCLUDE="Black(| )Ops(| )([2-9]{1,}|\bII\b|\bIII\b|\bIV\b|\bV\b)"
KEYWORDS_CODMW3="\bCOD(| )8|\bMW3\b|Modern(| )Warfare(| )3|Call(| )of(| )Duty(| )8"
KEYWORDS_CODBO2="\bCOD(| )9|Black Ops (2|II\b)|Call of Duty 9"
KEYWORDS_CODGHOSTS="\bCOD(| )10|Call(| )Of(| )Duty(\:|)(| )Ghost"
KEYWORDS_CALLOFDUTYSERIES="Call(| )of(| )Duty|CoD(| )series"
KEYWORDS_CALLOFDUTYSERIES_EXCLUDE="$KEYWORDS_COD4|$KEYWORDS_CODWAW|$KEYWORDS_CODBO|$KEYWORDS_CODMW3|$KEYWORDS_CODBO2|$KEYWORDS_CODGHOSTS"
KEYWORDS_CALLOFDUTYSERIES_CASESENSITIVE="CoD"
KEYWORDS_CALLOFDUTYSERIES_CASESENSITIVE_EXCLUDE="CoD(| )[0-9]{1,}" 

egrep -i "$KEYWORDS_COD4" newpages.txt | egrep -iv "$KEYWORDS_COD4_EXCLUDE" >> COD4.txt
egrep -i "$KEYWORDS_CODWAW" newpages.txt >> WorldAtWar.txt
egrep -i "$KEYWORDS_CODMW2" newpages.txt >> ModernWarfare2.txt
egrep -i "$KEYWORDS_CODBO" newpages.txt | egrep -iv "$KEYWORDS_CODBO_EXCLUDE" >> BlackOps.txt
egrep -i "$KEYWORDS_CODMW3" newpages.txt >> ModernWarfare3.txt
egrep -i "$KEYWORDS_CODBO2" newpages.txt >> BlackOps2.txt
egrep -i "$KEYWORDS_CODGHOSTS" newpages.txt >> Ghosts.txt
egrep -i "$KEYWORDS_CALLOFDUTYSERIES" newpages.txt | egrep -iv "$KEYWORDS_CALLOFDUTYSERIES_EXCLUDE" >> CallofDuty.txt
egrep "$KEYWORDS_CALLOFDUTYSERIES_CASESENSITIVE" newpages.txt | egrep -v "$KEYWORDS_CALLOFDUTYSERIES_CASESENSITIVE_EXCLUDE" >> CallofDuty.txt

CALLOFDUTY=$(stat --print=%s CallofDuty.txt)
MODERN=$(stat --print=%s COD4.txt)
WORLDATWAR=$(stat --print=%s WorldAtWar.txt)
MW2=$(stat --print=%s ModernWarfare2.txt)
BLACKOPS=$(stat --print=%s BlackOps.txt)
MW3=$(stat --print=%s ModernWarfare3.txt)
BO2=$(stat --print=%s BlackOps2.txt)
GHOSTS=$(stat --print=%s Ghosts.txt)

if [ $CALLOFDUTY -ne 0 ];
then
  export CATFILE="CallofDuty.txt"
  export CATNAME="Call of Duty series"
  $CATEGORIZE
fi

if [ $MODERN -ne 0 ];
then
  export CATFILE="COD4.txt"
  export CATNAME="Call of Duty 4: Modern Warfare"
  $CATEGORIZE
fi

if [ $WORLDATWAR -ne 0 ];
then
  export CATFILE="WorldAtWar.txt"
  export CATNAME="Call of Duty: World at War"
  $CATEGORIZE
fi

if [ $MW2 -ne 0 ];
then
  export CATFILE="ModernWarfare2.txt"
  export CATNAME="Call of Duty: Modern Warfare 2"
  $CATEGORIZE
fi

if [ $BLACKOPS -ne 0 ];
then
  export CATFILE="BlackOps.txt"
  export CATNAME="Call of Duty: Black Ops"
  $CATEGORIZE
fi

if [ $MW3 -ne 0 ];
then
  export CATFILE="ModernWarfare3.txt"
  export CATNAME="Call of Duty: Modern Warfare 3"
  $CATEGORIZE
fi

if [ $BO2 -ne 0 ];
then
  export CATFILE="BlackOps2.txt"
  export CATNAME="Call of Duty: Black Ops II"
  $CATEGORIZE
fi

if [ $GHOSTS -ne 0 ];
then
  export CATFILE="Ghosts.txt"
  export CATNAME="Call of Duty: Ghosts"
  $CATEGORIZE
fi

rm CallofDuty.txt
rm COD4.txt
rm WorldAtWar.txt
rm ModernWarfare2.txt
rm ModernWarfare3.txt
rm BlackOps.txt
rm BlackOps2.txt
rm Ghosts.txt