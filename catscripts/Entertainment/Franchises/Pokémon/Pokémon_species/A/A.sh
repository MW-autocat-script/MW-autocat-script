#!/bin/bash
#Pokemon species by name, starting with the letter A

KEYWORDS_ABOMASNOW="Abomasnow"
KEYWORDS_ABRA="\bAbra\b"
KEYWORDS_ABSOL="\bAbsol\b"
KEYWORDS_ACCELGOR="\bAccelgor"
KEYWORDS_AERODACTYL="\bAerodactyl"
KEYWORDS_AGGRON="\bAggron"
KEYWORDS_AIPOM="\bAipom"
KEYWORDS_ALAKAZAM="\bAlakazam"
KEYWORDS_ALOMOMOLA="\bAlomomola"
KEYWORDS_ALTARIA="\bAltaria"
KEYWORDS_AMBIPOM="\bAmbipom"
KEYWORDS_AMOONGUSS="\bAmoonguss"
KEYWORDS_AMPHAROS="\bAmpharos"
KEYWORDS_ANORITH="\bAnorith"
KEYWORDS_ARBOK="\bArbok"
KEYWORDS_ARCANINE="\bArcanine"
KEYWORDS_ARCEUS="\bArceus"
KEYWORDS_ARCHEN="\bArchen\b"
KEYWORDS_ARCHEOPS="\bArcheops"
KEYWORDS_ARIADOS="\bAriados"
KEYWORDS_ARMALDO="\bArmaldo"
KEYWORDS_ARON="\bAron\b|\bArons\b"
KEYWORDS_ARTICUNO="\bArticuno"
KEYWORDS_AUDINO="\bAudino"
KEYWORDS_AXEW="\bAxew"
KEYWORDS_AZELF="\bAzelf"
KEYWORDS_AZUMARILL="\bAzumarill"
KEYWORDS_AZURILL="\bAzurill"
KEYWORDS_POKEMONSPECIES_A="$KEYWORDS_ABOMASNOW|$KEYWORDS_ABRA|$KEYWORDS_ABSOL|$KEYWORDS_ACCELGOR|$KEYWORDS_AERODACTYL|$KEYWORDS_AGGRON|$KEYWORDS_AIPOM|$KEYWORDS_ALAKAZAM|$KEYWORDS_ALOMOMOLA|$KEYWORDS_ALTARIA|$KEYWORDS_AMBIPOM|$KEYWORDS_AMOONGUSS|$KEYWORDS_AMPHAROS|$KEYWORDS_ANORITH|$KEYWORDS_ARBOK|$KEYWORDS_ARCANINE|$KEYWORDS_ARCEUS|$KEYWORDS_ARCHEN|$KEYWORDS_ARCHEOPS|$KEYWORDS_ARIADOS|$KEYWORDS_ARMALDO|$KEYWORDS_ARON|$KEYWORDS_ARTICUNO|$KEYWORDS_AUDINO|$KEYWORDS_AUDINO|$KEYWORDS_AXEW|$KEYWORDS_AZELF|$KEYWORDS_AZUMARILL|$KEYWORDS_AZUMARILL|$KEYWORDS_AZURILL"

if [ "$1" == "" ];
then

  egrep -i "$KEYWORDS_ABOMASNOW" newpages.txt >> Abomasnow.txt &
  egrep -i "$KEYWORDS_ABRA" newpages.txt >> Abra.txt &
  egrep -i "$KEYWORDS_ABSOL" newpages.txt >> Absol.txt &
  egrep -i "$KEYWORDS_ACCELGOR" newpages.txt >> Accelgor.txt &
  egrep -i "$KEYWORDS_AERODACTYL" newpages.txt >> Aerodactyl.txt &
  egrep -i "$KEYWORDS_AGGRON" newpages.txt >> Aggron.txt &
  egrep -i "$KEYWORDS_AIPOM" newpages.txt >> Aipom.txt &
  egrep -i "$KEYWORDS_ALAKAZAM" newpages.txt >> Alakazam.txt &
  egrep -i "$KEYWORDS_ALOMOMOLA" newpages.txt >> Alomomola.txt &
  egrep -i "$KEYWORDS_ALTARIA" newpages.txt >> Altaria.txt &
  egrep -i "$KEYWORDS_AMBIPOM" newpages.txt >> Ambipom.txt &
  egrep -i "$KEYWORDS_AMOONGUSS" newpages.txt >> Amoonguss.txt &
  egrep -i "$KEYWORDS_AMPHAROS" newpages.txt >> Ampharos.txt &
  egrep -i "$KEYWORDS_ANORITH" newpages.txt >> Anorith.txt &
  egrep -i "$KEYWORDS_ARBOK" newpages.txt >> Arbok.txt &
  egrep -i "$KEYWORDS_ARCANINE" newpages.txt >> Arcanine.txt &
  egrep -i "$KEYWORDS_ARCEUS" newpages.txt >> Arceus.txt &
  egrep -i "$KEYWORDS_ARCHEN" newpages.txt >> Archen.txt &
  egrep -i "$KEYWORDS_ARCHEOPS" newpages.txt >> Archeops.txt &
  egrep -i "$KEYWORDS_ARIADOS" newpages.txt >> Ariados.txt &
  egrep -i "$KEYWORDS_ARMALDO" newpages.txt >> Armaldo.txt &
  egrep -i "$KEYWORDS_ARON" newpages.txt >> Aron.txt &
  egrep -i "$KEYWORDS_ARTICUNO" newpages.txt >> Articuno.txt &
  egrep -i "$KEYWORDS_AUDINO" newpages.txt >> Audino.txt &
  egrep -i "$KEYWORDS_AXEW" newpages.txt >> Axew.txt &
  egrep -i "$KEYWORDS_AZELF" newpages.txt >> Azelf.txt &
  egrep -i "$KEYWORDS_AZUMARILL" newpages.txt >> Azumarill.txt &
  egrep -i "$KEYWORDS_AZURILL" newpages.txt >> Azurill.txt &

  wait

  ABOMASNOW=`stat --print=%s Abomasnow.txt`
  ABRA=`stat --print=%s Abra.txt` 
  ABSOL=`stat --print=%s Absol.txt` 
  ACCELGOR=`stat --print=%s Accelgor.txt` 
  AERODACTYL=`stat --print=%s Aerodactyl.txt`
  AGGRON=`stat --print=%s Aggron.txt` 
  AIPOM=`stat --print=%s Aipom.txt` 
  ALAKAZAM=`stat --print=%s Alakazam.txt` 
  ALOMOMOLA=`stat --print=%s Alomomola.txt` 
  ALTARIA=`stat --print=%s Altaria.txt` 
  AMBIPOM=`stat --print=%s Ambipom.txt` 
  AMOONGUSS=`stat --print=%s Amoonguss.txt` 
  AMPHAROS=`stat --print=%s Ampharos.txt` 
  ANORITH=`stat --print=%s Anorith.txt` 
  ARBOK=`stat --print=%s Arbok.txt` 
  ARCANINE=`stat --print=%s Arcanine.txt` 
  ARCEUS=`stat --print=%s Arceus.txt` 
  ARCHEN=`stat --print=%s Archen.txt` 
  ARCHEOPS=`stat --print=%s Archeops.txt` 
  ARIADOS=`stat --print=%s Ariados.txt` 
  ARMALDO=`stat --print=%s Armaldo.txt` 
  ARON=`stat --print=%s Aron.txt` 
  ARTICUNO=`stat --print=%s Articuno.txt` 
  AUDINO=`stat --print=%s Audino.txt` 
  AXEW=`stat --print=%s Axew.txt` 
  AZELF=`stat --print=%s Azelf.txt` 
  AZUMARILL=`stat --print=%s Azumarill.txt` 
  AZURILL=`stat --print=%s Azurill.txt`


  if [ $ABOMASNOW -ne 0 ]; 
  then
    export CATFILE="Abomasnow.txt"
    export CATNAME="Abomasnow"
    $CATEGORIZE
  fi

  if [ $ABRA -ne 0 ]; 
  then
    export CATFILE="Abra.txt"
    export CATNAME="Abra"
    $CATEGORIZE
  fi

  if [ $ABSOL -ne 0 ]; 
  then
    export CATFILE="Absol.txt"
    export CATNAME="Absol"
    $CATEGORIZE
  fi

  if [ $ACCELGOR -ne 0 ]; 
  then
    export CATFILE="Accelgor.txt"
    export CATNAME="Accelgor"
    $CATEGORIZE
  fi

  if [ $AERODACTYL -ne 0 ]; 
  then
    export CATFILE="Aerodactyl.txt"
    export CATNAME="Aerodactyl"
    $CATEGORIZE
  fi

  if [ $AGGRON -ne 0 ]; 
  then
    export CATFILE="Aggron.txt"
    export CATNAME="Aggron"
    $CATEGORIZE
  fi

  if [ $AIPOM -ne 0 ]; 
  then
    export CATFILE="Aipom.txt"
    export CATNAME="Aipom"
    $CATEGORIZE
  fi

  if [ $ALAKAZAM -ne 0 ]; 
  then
    export CATFILE="Alakazam.txt"
    export CATNAME="Alakazam"
    $CATEGORIZE
  fi

  if [ $ALOMOMOLA -ne 0 ]; 
  then
    export CATFILE="Alomomola.txt"
    export CATNAME="Alomomola"
    $CATEGORIZE
  fi

  if [ $ALTARIA -ne 0 ]; 
  then
    export CATFILE="Altaria.txt"
    export CATNAME="Altaria"
    $CATEGORIZE
  fi

  if [ $AMBIPOM -ne 0 ]; 
  then
    export CATFILE="Ambipom.txt"
    export CATNAME="Ambipom"
    $CATEGORIZE
  fi

  if [ $AMOONGUSS -ne 0 ]; 
  then
    export CATFILE="Amoonguss.txt"
    export CATNAME="Amoonguss"
    $CATEGORIZE
  fi

  if [ $AMPHAROS -ne 0 ]; 
  then
    export CATFILE="Ampharos.txt"
    export CATNAME="Ampharos"
    $CATEGORIZE
  fi

  if [ $ANORITH -ne 0 ]; 
  then
    export CATFILE="Anorith.txt"
    export CATNAME="Anorith"
    $CATEGORIZE
  fi

  if [ $ARBOK -ne 0 ]; 
  then
    export CATFILE="Arbok.txt"
    export CATNAME="Arbok"
    $CATEGORIZE
  fi

  if [ $ARCANINE -ne 0 ]; 
  then
    export CATFILE="Arcanine.txt"
    export CATNAME="Arcanine"
    $CATEGORIZE
  fi

  if [ $ARCEUS -ne 0 ]; 
  then
    export CATFILE="Arceus.txt"
    export CATNAME="Arceus"
    $CATEGORIZE
  fi

  if [ $ARCHEN -ne 0 ]; 
  then
    export CATFILE="Archen.txt"
    export CATNAME="Archen"
    $CATEGORIZE
  fi

  if [ $ARCHEOPS -ne 0 ]; 
  then
    export CATFILE="Archeops.txt"
    export CATNAME="Archeops"
    $CATEGORIZE
  fi

  if [ $ARIADOS -ne 0 ]; 
  then
    export CATFILE="Ariados.txt"
    export CATNAME="Ariados"
    $CATEGORIZE
  fi

  if [ $ARMALDO -ne 0 ]; 
  then
    export CATFILE="Armaldo.txt"
    export CATNAME="Armaldo"
    $CATEGORIZE
  fi

  if [ $ARON -ne 0 ]; 
  then
    export CATFILE="Aron.txt"
    export CATNAME="Aron"
    $CATEGORIZE
  fi

  if [ $ARTICUNO -ne 0 ]; 
  then
    export CATFILE="Articuno.txt"
    export CATNAME="Articuno"
    $CATEGORIZE
  fi

  if [ $AUDINO -ne 0 ]; 
  then
    export CATFILE="Audino.txt"
    export CATNAME="Audino"
    $CATEGORIZE
  fi

  if [ $AXEW -ne 0 ]; 
  then
    export CATFILE="Axew.txt"
    export CATNAME="Axew"
    $CATEGORIZE
  fi

  if [ $AZELF -ne 0 ]; 
  then
    export CATFILE="Azelf.txt"
    export CATNAME="Azelf"
    $CATEGORIZE
  fi

  if [ $AZUMARILL -ne 0 ]; 
  then
    export CATFILE="Azumarill.txt"
    export CATNAME="Azumarill"
    $CATEGORIZE
  fi

  if [ $AZURILL -ne 0 ]; 
  then
    export CATFILE="Azurill.txt"
    export CATNAME="Azurill"
    $CATEGORIZE
  fi

  rm Abomasnow.txt &
  rm Abra.txt &
  rm Absol.txt &
  rm Accelgor.txt &
  rm Aerodactyl.txt &
  rm Aggron.txt &
  rm Aipom.txt &
  rm Alakazam.txt &
  rm Alomomola.txt &
  rm Altaria.txt &
  rm Ambipom.txt &
  rm Amoonguss.txt &
  rm Ampharos.txt &
  rm Anorith.txt &
  rm Arbok.txt &
  rm Arcanine.txt &
  rm Arceus.txt &
  rm Archen.txt &
  rm Archeops.txt &
  rm Ariados.txt &
  rm Armaldo.txt &
  rm Aron.txt &
  rm Articuno.txt &
  rm Audino.txt &
  rm Axew.txt &
  rm Azelf.txt &
  rm Azumarill.txt &
  rm Azurill.txt &

  wait

fi