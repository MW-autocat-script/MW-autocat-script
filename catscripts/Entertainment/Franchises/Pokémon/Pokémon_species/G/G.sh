#!/bin/bash

KEYWORDS_GABITE="Gabite"
KEYWORDS_GALLADE="Gallade"
KEYWORDS_GALVANTULA="Galvantula"
KEYWORDS_GARBODOR="Garbodor"
KEYWORDS_GARCHOMP="Garchomp"
KEYWORDS_GARDEVOIR="Gardevoir"
KEYWORDS_GASTLY="Gastly"
KEYWORDS_GASTRODON="Gastrodon"
KEYWORDS_GENESECT="Genesect"
KEYWORDS_GENGAR="Gengar"
KEYWORDS_GEODUDE="Geodude"
KEYWORDS_GIBLE="\bGible"
KEYWORDS_GIGALITH="Gigalith"
KEYWORDS_GIRAFARIG="Girafarig"
KEYWORDS_GIRATINA="Giratina"
KEYWORDS_GLACEON="Glaceon"
KEYWORDS_GLALIE="Glalie"
KEYWORDS_GLAMEOW="Glameow"
KEYWORDS_GLIGAR="Gligar"
KEYWORDS_GLISCOR="Gliscor"
KEYWORDS_GLOOM="Gloom\b"
KEYWORDS_GOLBAT="Golbat"
KEYWORDS_GOLDEEN="Goldeen"
KEYWORDS_GOLDUCK="Golduck"
KEYWORDS_GOLEM="Golem"
KEYWORDS_GOLETT="Golett"

if [ "$1" == "" ]; #Normal operation
then

  egrep -i "$KEYWORDS_GARDEVOIR" newpages.txt >> Gardevoir.txt
  egrep -i "$KEYWORDS_GASTLY" newpages.txt >> Gastly.txt
  egrep -i "$KEYWORDS_GASTRODON" newpages.txt >> Gastrodon.txt
  egrep -i "$KEYWORDS_GENESECT" newpages.txt >> Genesect.txt
  egrep -i "$KEYWORDS_GENGAR" newpages.txt >> Gengar.txt
  egrep -i "$KEYWORDS_GEODUDE" newpages.txt >> Geodude.txt
  egrep -i "$KEYWORDS_GIBLE" newpages.txt >> Gible.txt
  egrep -i "$KEYWORDS_GIGALITH" newpages.txt >> Gigalith.txt
  egrep -i "$KEYWORDS_GIRAFARIG" newpages.txt >> Girafarig.txt
  egrep -i "$KEYWORDS_GIRATINA" newpages.txt >> Giratina.txt
  egrep -i "$KEYWORDS_GLACEON" newpages.txt >> Glaceon.txt
  egrep -i "$KEYWORDS_GLALIE" newpages.txt >> Glalie.txt
  egrep -i "$KEYWORDS_GLAMEOW" newpages.txt >> Glameow.txt
  egrep -i "$KEYWORDS_GLIGAR" newpages.txt >> Gligar.txt
  egrep -i "$KEYWORDS_GLISCOR" newpages.txt >> Gliscor.txt
  egrep -i "$KEYWORDS_GLOOM" newpages.txt >> Gloom.txt
  egrep -i "$KEYWORDS_GOLBAT" newpages.txt >> Golbat.txt
  egrep -i "$KEYWORDS_GOLDEEN" newpages.txt >> Goldeen.txt
  egrep -i "$KEYWORDS_GOLDUCK" newpages.txt >> Golduck.txt
  egrep -i "$KEYWORDS_GOLEM" newpages.txt >> Golem.txt
  egrep -i "$KEYWORDS_GOLETT" newpages.txt >> Golett.txt
  egrep -i 'Golurk' newpages.txt >> Golurk.txt
  egrep -i 'Gorebyss' newpages.txt >> Gorebyss.txt
  egrep -i 'Gothita' newpages.txt >> Gothita.txt
  egrep -i 'Gothitelle' newpages.txt >> Gothitelle.txt
  egrep -i 'Gothorita' newpages.txt >> Gothorita.txt
  egrep -i 'Granbull' newpages.txt >> Granbull.txt
  egrep -i 'Graveler' newpages.txt >> Graveler.txt
  egrep -i 'Grimer' newpages.txt >> Grimer.txt
  egrep -i 'Grotle' newpages.txt >> Grotle.txt
  egrep -i 'Groudon' newpages.txt >> Groudon.txt
  egrep -i 'Grovyle' newpages.txt >> Grovyle.txt
  egrep -i 'Growlithe' newpages.txt >> Growlithe.txt
  egrep -i 'Grumpig' newpages.txt >> Grumpig.txt
  egrep -i 'Gulpin' newpages.txt >> Gulpin.txt
  egrep -i 'Gurdurr' newpages.txt >> Gurdurr.txt
  egrep -i 'Gyarados' newpages.txt >> Gyarados.txt

  GABITE=`egrep -i "$KEYWORDS_GABITE" newpages.txt`
  GALLADE=`egrep -i "$KEYWORDS_GALLADE" newpages.txt`
  GARBODOR=`egrep -i "$KEYWORDS_GARBODOR" newpages.txt`
  GARCHOMP=`egrep -i "$KEYWORDS_GARCHOMP" newpages.txt`
  Gardevoir=`stat --print=%s Gardevoir.txt`
  Gastly=`stat --print=%s Gastly.txt`
  Gastrodon=`stat --print=%s Gastrodon.txt`
  GALVANTULA=`egrep -i "$KEYWORDS_GALVANTULA" newpages.txt`
  Genesect=`stat --print=%s Genesect.txt`
  Gengar=`stat --print=%s Gengar.txt`
  Geodude=`stat --print=%s Geodude.txt`
  Gible=`stat --print=%s Gible.txt`
  Gigalith=`stat --print=%s Gigalith.txt`
  Girafarig=`stat --print=%s Girafarig.txt`
  Giratina=`stat --print=%s Giratina.txt`
  Glaceon=`stat --print=%s Glaceon.txt`
  Glalie=`stat --print=%s Glalie.txt`
  Glameow=`stat --print=%s Glameow.txt`
  Gligar=`stat --print=%s Gligar.txt`
  Gliscor=`stat --print=%s Gliscor.txt`
  Gloom=`stat --print=%s Gloom.txt`
  Golbat=`stat --print=%s Golbat.txt`
  Goldeen=`stat --print=%s Goldeen.txt`
  Golduck=`stat --print=%s Golduck.txt`
  Golem=`stat --print=%s Golem.txt`
  Golett=`stat --print=%s Golett.txt`
  Golurk=`stat --print=%s Golurk.txt`
  Gorebyss=`stat --print=%s Gorebyss.txt`
  Gothita=`stat --print=%s Gothita.txt`
  Gothitelle=`stat --print=%s Gothitelle.txt`
  Gothorita=`stat --print=%s Gothorita.txt`
  Granbull=`stat --print=%s Granbull.txt`
  Graveler=`stat --print=%s Graveler.txt`
  Grimer=`stat --print=%s Grimer.txt`
  Grotle=`stat --print=%s Grotle.txt`
  Groudon=`stat --print=%s Groudon.txt`
  Grovyle=`stat --print=%s Grovyle.txt`
  Growlithe=`stat --print=%s Growlithe.txt`
  Grumpig=`stat --print=%s Grumpig.txt`
  Gulpin=`stat --print=%s Gulpin.txt`
  Gurdurr=`stat --print=%s Gurdurr.txt`
  Gyarados=`stat --print=%s Gyarados.txt`


  if [ "$GABITE" != "" ];
  then
    printf "$GABITE" > Gabite.txt
    export CATFILE="Gabite.txt"
    export CATNAME="Gabite"
    $CATEGORIZE
    rm Gabite.txt
    unset GABITE
  fi

  if [ "$GALLADE" != "" ];
  then
    printf "$GALLADE" > Gallade.txt
    export CATFILE="Gallade.txt"
    export CATNAME="Gallade"
    $CATEGORIZE
    rm Gallade.txt
    unset GALLADE
  fi

  if [ "$GARBODOR" != "" ];
  then
    printf "$GARBODOR" > Garbodor.txt
    export CATFILE="Garbodor.txt"
    export CATNAME="Garbodor"
    $CATEGORIZE
    rm Garbodor.txt
    unset GARBODOR
  fi

  if [ "$GARCHOMP" != "" ];
  then
    printf "$GARCHOMP" > Garchomp.txt    
    export CATFILE="Garchomp.txt"
    export CATNAME="Garchomp"
    $CATEGORIZE
    rm Garchomp.txt
    unset GARCHOMP
  fi

  if [ $Gardevoir -ne 0 ];
  then
    export CATFILE="Gardevoir.txt"
    export CATNAME="Gardevoir"
    $CATEGORIZE
  fi

  if [ $Gastly -ne 0 ];
  then
    export CATFILE="Gastly.txt"
    export CATNAME="Gastly"
    $CATEGORIZE
  fi

  if [ $Gastrodon -ne 0 ];
  then
    export CATFILE="Gastrodon.txt"
    export CATNAME="Gastrodon"
    $CATEGORIZE
  fi

  if [ "$GALVANTULA" != "" ];
  then
    printf "$GALVANTULA" > Galvantula.txt
    export CATFILE="Galvantula.txt"
    export CATNAME="Galvantula"
    $CATEGORIZE
    rm Galvantula.txt
    unset GALVANTULA
  fi

  if [ $Genesect -ne 0 ];
  then
    export CATFILE="Genesect.txt"
    export CATNAME="Genesect"
    $CATEGORIZE
  fi

  if [ $Gengar -ne 0 ];
  then
    export CATFILE="Gengar.txt"
    export CATNAME="Gengar"
    $CATEGORIZE
  fi

  if [ $Geodude -ne 0 ];
  then
    export CATFILE="Geodude.txt"
    export CATNAME="Geodude"
    $CATEGORIZE
  fi

  if [ $Gible -ne 0 ];
  then
    export CATFILE="Gible.txt"
    export CATNAME="Gible"
    $CATEGORIZE
  fi

  if [ $Gigalith -ne 0 ];
  then
    export CATFILE="Gigalith.txt"
    export CATNAME="Gigalith"
    $CATEGORIZE
  fi

  if [ $Girafarig -ne 0 ];
  then
    export CATFILE="Girafarig.txt"
    export CATNAME="Girafarig"
    $CATEGORIZE
  fi

  if [ $Giratina -ne 0 ];
  then
    export CATFILE="Giratina.txt"
    export CATNAME="Giratina"
    $CATEGORIZE
  fi

  if [ $Glaceon -ne 0 ];
  then
    export CATFILE="Glaceon.txt"
    export CATNAME="Glaceon"
    $CATEGORIZE
  fi

  if [ $Glalie -ne 0 ];
  then
    export CATFILE="Glalie.txt"
    export CATNAME="Glalie"
    $CATEGORIZE
  fi

  if [ $Glameow -ne 0 ];
  then
    export CATFILE="Glameow.txt"
    export CATNAME="Glameow"
    $CATEGORIZE
  fi

  if [ $Gligar -ne 0 ];
  then
    export CATFILE="Gligar.txt"
    export CATNAME="Gligar"
    $CATEGORIZE
  fi

  if [ $Gliscor -ne 0 ];
  then
    export CATFILE="Gliscor.txt"
    export CATNAME="Gliscor"
    $CATEGORIZE
  fi

  if [ $Gloom -ne 0 ];
  then
    export CATFILE="Gloom.txt"
    export CATNAME="Gloom"
    $CATEGORIZE
  fi

  if [ $Golbat -ne 0 ];
  then
    export CATFILE="Golbat.txt"
    export CATNAME="Golbat"
    $CATEGORIZE
  fi

  if [ $Goldeen -ne 0 ];
  then
    export CATFILE="Goldeen.txt"
    export CATNAME="Goldeen"
    $CATEGORIZE
  fi

  if [ $Golduck -ne 0 ];
  then
    export CATFILE="Golduck.txt"
    export CATNAME="Golduck"
    $CATEGORIZE
  fi

  if [ $Golem -ne 0 ];
  then
    export CATFILE="Golem.txt"
    export CATNAME="Golem"
    $CATEGORIZE
  fi

  if [ $Golett -ne 0 ];
  then
    export CATFILE="Golett.txt"
    export CATNAME="Golett"
    $CATEGORIZE
  fi

  if [ $Golurk -ne 0 ];
  then
    export CATFILE="Golurk.txt"
    export CATNAME="Golurk"
    $CATEGORIZE
  fi

  if [ $Gorebyss -ne 0 ];
  then
    export CATFILE="Gorebyss.txt"
    export CATNAME="Gorebyss"
    $CATEGORIZE
  fi

  if [ $Gothita -ne 0 ];
  then
    export CATFILE="Gothita.txt"
    export CATNAME="Gothita"
    $CATEGORIZE
  fi

  if [ $Gothitelle -ne 0 ];
  then
    export CATFILE="Gothitelle.txt"
    export CATNAME="Gothitelle"
    $CATEGORIZE
  fi

  if [ $Gothorita -ne 0 ];
  then
    export CATFILE="Gothorita.txt"
    export CATNAME="Gothorita"
    $CATEGORIZE
  fi

  if [ $Granbull -ne 0 ];
  then
    export CATFILE="Granbull.txt"
    export CATNAME="Granbull"
    $CATEGORIZE
  fi

  if [ $Graveler -ne 0 ];
  then
    export CATFILE="Graveler.txt"
    export CATNAME="Graveler (Pokémon)"
    $CATEGORIZE
  fi

  if [ $Grimer -ne 0 ];
  then
    export CATFILE="Grimer.txt"
    export CATNAME="Grimer"
    $CATEGORIZE
  fi

  if [ $Grotle -ne 0 ];
  then
    export CATFILE="Grotle.txt"
    export CATNAME="Grotle"
    $CATEGORIZE
  fi

  if [ $Groudon -ne 0 ];
  then
    export CATFILE="Groudon.txt"
    export CATNAME="Groudon"
    $CATEGORIZE
  fi

  if [ $Grovyle -ne 0 ];
  then
    export CATFILE="Grovyle.txt"
    export CATNAME="Grovyle"
    $CATEGORIZE
  fi

  if [ $Growlithe -ne 0 ];
  then
    export CATFILE="Growlithe.txt"
    export CATNAME="Growlithe"
    $CATEGORIZE
  fi

  if [ $Grumpig -ne 0 ];
  then
    export CATFILE="Grumpig.txt"
    export CATNAME="Grumpig"
    $CATEGORIZE
  fi

  if [ $Gulpin -ne 0 ];
  then
    export CATFILE="Gulpin.txt"
    export CATNAME="Gulpin"
    $CATEGORIZE
  fi

  if [ $Gurdurr -ne 0 ];
  then
    export CATFILE="Gurdurr.txt"
    export CATNAME="Gurdurr"
    $CATEGORIZE
  fi

  if [ $Gyarados -ne 0 ];
  then
    export CATFILE="Gyarados.txt"
    export CATNAME="Gyarados"
    $CATEGORIZE
  fi

  rm Gardevoir.txt
  rm Gastly.txt
  rm Gastrodon.txt
  rm Galvantula.txt
  rm Genesect.txt
  rm Gengar.txt
  rm Geodude.txt
  rm Gible.txt
  rm Gigalith.txt
  rm Girafarig.txt
  rm Giratina.txt
  rm Glaceon.txt
  rm Glalie.txt
  rm Glameow.txt
  rm Gligar.txt
  rm Gliscor.txt
  rm Gloom.txt
  rm Golbat.txt
  rm Goldeen.txt
  rm Golduck.txt
  rm Golem.txt
  rm Golett.txt
  rm Golurk.txt
  rm Gorebyss.txt
  rm Gothita.txt
  rm Gothitelle.txt
  rm Gothorita.txt
  rm Granbull.txt
  rm Graveler.txt
  rm Grimer.txt
  rm Grotle.txt
  rm Groudon.txt
  rm Grovyle.txt
  rm Growlithe.txt
  rm Grumpig.txt
  rm Gulpin.txt
  rm Gurdurr.txt
  rm Gyarados.txt

fi