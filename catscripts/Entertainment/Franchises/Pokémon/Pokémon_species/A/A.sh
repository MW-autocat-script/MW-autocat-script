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

  ABOMASNOW=`egrep -i "$KEYWORDS_ABOMASNOW" newpages.txt`
  ABRA=`egrep -i "$KEYWORDS_ABRA" newpages.txt` 
  ABSOL=`egrep -i "$KEYWORDS_ABSOL" newpages.txt` 
  ACCELGOR=`egrep -i "$KEYWORDS_ACCELGOR" newpages.txt` 
  AERODACTYL=`egrep -i "$KEYWORDS_AERODACTYL" newpages.txt`
  AGGRON=`egrep -i "$KEYWORDS_AGGRON" newpages.txt` 
  AIPOM=`egrep -i "$KEYWORDS_AIPOM" newpages.txt` 
  ALAKAZAM=`egrep -i "$KEYWORDS_ALAKAZAM" newpages.txt` 
  ALOMOMOLA=`egrep -i "$KEYWORDS_ALOMOMOLA" newpages.txt` 
  ALTARIA=`egrep -i "$KEYWORDS_ALTARIA" newpages.txt` 
  AMBIPOM=`egrep -i "$KEYWORDS_AMBIPOM" newpages.txt` 
  AMOONGUSS=`egrep -i "$KEYWORDS_AMOONGUSS" newpages.txt` 
  AMPHAROS=`egrep -i "$KEYWORDS_AMPHAROS" newpages.txt` 
  ANORITH=`egrep -i "$KEYWORDS_ANORITH" newpages.txt` 
  ARBOK=`egrep -i "$KEYWORDS_ARBOK" newpages.txt` 
  ARCANINE=`egrep -i "$KEYWORDS_ARCANINE" newpages.txt` 
  ARCEUS=`egrep -i "$KEYWORDS_ARCEUS" newpages.txt` 
  ARCHEN=`egrep -i "$KEYWORDS_ARCHEN" newpages.txt` 
  ARCHEOPS=`egrep -i "$KEYWORDS_ARCHEOPS" newpages.txt` 
  ARIADOS=`egrep -i "$KEYWORDS_ARIADOS" newpages.txt` 
  ARMALDO=`egrep -i "$KEYWORDS_ARMALDO" newpages.txt` 
  ARON=`egrep -i "$KEYWORDS_ARON" newpages.txt` 
  ARTICUNO=`egrep -i "$KEYWORDS_ARTICUNO" newpages.txt` 
  AUDINO=`egrep -i "$KEYWORDS_AUDINO" newpages.txt` 
  AXEW=`egrep -i "$KEYWORDS_AXEW" newpages.txt` 
  AZELF=`egrep -i "$KEYWORDS_AZELF" newpages.txt` 
  AZUMARILL=`egrep -i "$KEYWORDS_AZUMARILL" newpages.txt` 
  AZURILL=`egrep -i "$KEYWORDS_AZURILL" newpages.txt`

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Pokemon 'A' species\n"
  fi


  if [ "$ABOMASNOW" != "" ]; 
  then
    printf "$ABOMASNOW" > Abomasnow.txt
    export CATFILE="Abomasnow.txt"
    export CATNAME="Abomasnow"
    $CATEGORIZE
    rm Abomasnow.txt
    unset ABOMASNOW
  fi

  if [ "$ABRA" != "" ]; 
  then
    printf "$ABRA" > Abra.txt
    export CATFILE="Abra.txt"
    export CATNAME="Abra"
    $CATEGORIZE
    rm Abra.txt
    unset ABRA
  fi

  if [ "$ABSOL" != "" ]; 
  then
    printf "$ABSOL" > Absol.txt
    export CATFILE="Absol.txt"
    export CATNAME="Absol"
    $CATEGORIZE
    rm Absol.txt
    unset ABSOL
  fi

  if [ "$ACCELGOR" != "" ]; 
  then
    printf "$ACCELGOR" > Accelgor.txt
    export CATFILE="Accelgor.txt"
    export CATNAME="Accelgor"
    $CATEGORIZE
    rm Accelgor.txt
    unset ACCELGOR
  fi

  if [ "$AERODACTYL" != "" ]; 
  then
    printf "$AERODACTYL" > Aerodactyl.txt
    export CATFILE="Aerodactyl.txt"
    export CATNAME="Aerodactyl"
    $CATEGORIZE
    rm Aerodactyl.txt
    unset AERODACTYL
  fi

  if [ "$AGGRON" != "" ]; 
  then
    printf "$AGGRON" > Aggron.txt
    export CATFILE="Aggron.txt"
    export CATNAME="Aggron"
    $CATEGORIZE
    rm Aggron.txt
    unset AGGRON
  fi

  if [ "$AIPOM" != "" ]; 
  then
    printf "$AIPOM" > Aipom.txt
    export CATFILE="Aipom.txt"
    export CATNAME="Aipom"
    $CATEGORIZE
    rm Aipom.txt
    unset AIPOM
  fi

  if [ "$ALAKAZAM" != "" ]; 
  then
    printf "$ALAKAZAM" > Alakazam.txt
    export CATFILE="Alakazam.txt"
    export CATNAME="Alakazam"
    $CATEGORIZE
    rm Alakazam.txt
    unset ALAKAZAM
  fi

  if [ "$ALOMOMOLA" != "" ]; 
  then
    printf "$ALOMOMOLA" > Alomomola.txt
    export CATFILE="Alomomola.txt"
    export CATNAME="Alomomola"
    $CATEGORIZE
    rm Alomomola.txt
    unset ALOMOMOLA
  fi

  if [ "$ALTARIA" != "" ]; 
  then
    printf "$ALTARIA" > Altaria.txt
    export CATFILE="Altaria.txt"
    export CATNAME="Altaria"
    $CATEGORIZE
    rm Altaria.txt
    unset ALTARIA
  fi

  if [ "$AMBIPOM" != "" ]; 
  then
    printf "$AMBIPOM" > Ambipom.txt
    export CATFILE="Ambipom.txt"
    export CATNAME="Ambipom"
    $CATEGORIZE
    rm Ambipom.txt
    unset AMBIPOM
  fi

  if [ "$AMOONGUSS" != "" ]; 
  then
    printf "$AMOONGUSS" > Amoonguss.txt
    export CATFILE="Amoonguss.txt"
    export CATNAME="Amoonguss"
    $CATEGORIZE
    rm Amoonguss.txt
    unset AMOONGUSS
  fi

  if [ "$AMPHAROS" != "" ]; 
  then
    printf "$AMPHAROS" > Ampharos.txt
    export CATFILE="Ampharos.txt"
    export CATNAME="Ampharos"
    $CATEGORIZE
    rm Ampharos.txt
    unset AMPHAROS
  fi

  if [ "$ANORITH" != "" ]; 
  then
    printf "$ANORITH" > Anorith.txt
    export CATFILE="Anorith.txt"
    export CATNAME="Anorith"
    $CATEGORIZE
    rm Anorith.txt
    unset ANORITH
  fi

  if [ "$ARBOK" != "" ]; 
  then
    printf "$ARBOK" > Arbok.txt
    export CATFILE="Arbok.txt"
    export CATNAME="Arbok"
    $CATEGORIZE
    rm Arbok.txt
    unset ARBOK
  fi

  if [ "$ARCANINE" != "" ]; 
  then
    printf "$ARCANINE" > Arcanine.txt
    export CATFILE="Arcanine.txt"
    export CATNAME="Arcanine"
    $CATEGORIZE
    rm Arcanine.txt
    unset ARCANINE
  fi

  if [ "$ARCEUS" != "" ]; 
  then
    printf "$ARCEUS" > Arceus.txt
    export CATFILE="Arceus.txt"
    export CATNAME="Arceus"
    $CATEGORIZE
    rm Arceus.txt
    unset ARCEUS
  fi

  if [ "$ARCHEN" != "" ]; 
  then
    printf "$ARCHEN" > Archen.txt
    export CATFILE="Archen.txt"
    export CATNAME="Archen"
    $CATEGORIZE
    rm Archen.txt
    unset ARCHEN
  fi

  if [ "$ARCHEOPS" != "" ]; 
  then
    printf "$ARCHEOPS" > Archeops.txt
    export CATFILE="Archeops.txt"
    export CATNAME="Archeops"
    $CATEGORIZE
    rm Archeops.txt
    unset ARCHEOPS
  fi

  if [ "$ARIADOS" != "" ]; 
  then
    printf "$ARIADOS" > Ariados.txt
    export CATFILE="Ariados.txt"
    export CATNAME="Ariados"
    $CATEGORIZE
    rm Ariados.txt
    unset ARIADOS
  fi

  if [ "$ARMALDO" != "" ]; 
  then
    printf "$ARMALDO" > Armaldo.txt
    export CATFILE="Armaldo.txt"
    export CATNAME="Armaldo"
    $CATEGORIZE
    rm Armaldo.txt
    unset ARMALDO
  fi

  if [ "$ARON" != "" ]; 
  then
    printf "$ARON" > Aron.txt
    export CATFILE="Aron.txt"
    export CATNAME="Aron"
    $CATEGORIZE
    rm Aron.txt
    unset ARON
  fi

  if [ "$ARTICUNO" != "" ]; 
  then
    printf "$ARTICUNO" > Articuno.txt
    export CATFILE="Articuno.txt"
    export CATNAME="Articuno"
    $CATEGORIZE
    rm Articuno.txt
    unset ARTICUNO
  fi

  if [ "$AUDINO" != "" ]; 
  then
    printf "$AUDINO" > Audino.txt
    export CATFILE="Audino.txt"
    export CATNAME="Audino"
    $CATEGORIZE
    rm Audino.txt
    unset AUDINO
  fi

  if [ "$AXEW" != "" ]; 
  then
    printf "$AXEW" > Axew.txt
    export CATFILE="Axew.txt"
    export CATNAME="Axew"
    $CATEGORIZE
    rm Axew.txt
    unset AXEW
  fi

  if [ "$AZELF" != "" ]; 
  then
    printf "$AZELF" > Azelf.txt
    export CATFILE="Azelf.txt"
    export CATNAME="Azelf"
    $CATEGORIZE
    rm Azelf.txt
    unset AZELF
  fi

  if [ "$AZUMARILL" != "" ]; 
  then
    printf "$AZUMARILL" > Azumarill.txt
    export CATFILE="Azumarill.txt"
    export CATNAME="Azumarill"
    $CATEGORIZE
    rm Azumarill.txt
    unset AZUMARILL
  fi

  if [ "$AZURILL" != "" ]; 
  then
    printf "$AZURILL" > Azurill.txt
    export CATFILE="Azurill.txt"
    export CATNAME="Azurill"
    $CATEGORIZE
    rm Azurill.txt
    unset AZURILL
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Pokemon 'A' species\n"
  fi

fi