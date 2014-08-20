#!/bin/bash

#ATVs keywords

KEYWORDS_HONDA_SPORTRAX="Sportrax|\b[234]00ex\b"

#Cars keywords

KEYWORDS_HONDA_ACCORD="Honda(| )Accord|[0-9]{1,}(| )Accord"
KEYWORDS_HONDA_CIVIC="Honda(| )Civic|[0-9]{1,}(| )Civic"
KEYWORDS_HONDA_ELEMENT="Honda(| )Element|[0-9]{1,}(| )Element\b"
KEYWORDS_HONDA_INTEGRA="(Acura|Honda)(| )(RSX|Integra)|[0-9]{1,}(| )(RSX|Integra)"
KEYWORDS_HONDA_PASSPORT="Honda(| )Passport|[0-9]{1,}(| )Passport"
KEYWORDS_HONDA_PRELUDE="Honda(| )Prelude|[0-9]{1,}(| )Prelude"
KEYWORDS_ACURA_CL="Acura(| )CL"
KEYWORDS_ACURA_CSX="\bCSX\b"
KEYWORDS_ACURA_EL="Acura(| )EL\b"
KEYWORDS_ACURA_ILX="Acura(| )ILX|[0-9]{1,}(| )ILX"
KEYWORDS_ACURA_NLX="\bNLX\b"
KEYWORDS_ACURA_RL="Acura(| )RL\b"
KEYWORDS_ACURA_RLX="\bRLX\b"
KEYWORDS_ACURA_TL="Acura(| )TL|[0-9]{1,}(| )TL\b"
KEYWORDS_ACURA_TSX="\bTSX\b"
KEYWORDS_ACURA_VIGOR="Acura(| )Vigor|[0-9]{1,}(| )Vigor"

KEYWORDS_HONDA_CARS="$KEYWORDS_ACURA_CL|$KEYWORDS_ACURA_CSX|$KEYWORDS_ACURA_EL|$KEYWORDS_ACURA_ILX|$KEYWORDS_ACURA_NLX|$KEYWORDS_ACURA_RL|$KEYWORDS_ACURA_RLX|$KEYWORDS_ACURA_TL|$KEYWORDS_ACURA_TSX|$KEYWORDS_ACURA_VIGOR|$KEYWORDS_HONDA_ACCORD|$KEYWORDS_HONDA_CIVIC|$KEYWORDS_HONDA_ELEMENT|$KEYWORDS_HONDA_INTEGRA|$KEYWORDS_HONDA_PASSPORT|$KEYWORDS_HONDA_PRELUDE"
#SUV keywords

KEYWORDS_HONDA_CRV="Honda(| )CR(|-)V|[0-9]{1,}(| )CR(|-)V"
KEYWORDS_HONDA_PILOT="Honda(| )Pilot|[0-9]{1,}(| )Pilot"
KEYWORDS_ACURA_MDX="\bMDX\b"
KEYWORDS_ACURA_RDX="\bRDX\b"
KEYWORDS_ACURA_SLX="\bSLX\b"
KEYWORDS_ACURA_ZDX="\bZDX\b"

KEYWORDS_HONDA_SUV="$KEYWORDS_HONDA_CRV|$KEYWORDS_HONDA_PILOT|$KEYWORDS_ACURA_MDX|$KEYWORDS_ACURA_MDX|$KEYWORDS_ACURA_SLX|$KEYWORDS_ACURA_ZDX"
#Vans keywords

KEYWORDS_HONDA_ODYSSEY="Honda(| )Odyssey|[0-9]{1,}(| )Odyssey"

#Brand names keywords

KEYWORDS_ACURA="Acura\b|$KEYWORDS_ACURA_CSX|$KEYWORDS_ACURA_EL|$KEYWORDS_ACURA_ILX|$KEYWORDS_ACURA_MDX|$KEYWORDS_ACURA_NLX|$KEYWORDS_ACURA_RDX|$KEYWORDS_ACURA_RL|$KEYWORDS_ACURA_RLX|$KEYWORDS_ACURA_SLX|$KEYWORDS_ACURA_TSX|$KEYWORDS_ACURA_VIGOR|$KEYWORDS_ACURA_ZDX"

KEYWORDS_HONDA="\bHonda"
KEYWORDS_HONDA_EXCLUDE="$KEYWORDS_HONDA_CARS|$KEYWORDS_HONDA_SUV|$KEYWORDS_HONDA_ODYSSEY|$KEYWORDS_HONDA_SPORTRAX"
KEYWORDS_ACURA="Acura|$KEYWORDS_ACURA_CL|$KEYWORDS_ACURA_CSX|$KEYWORDS_ACURA_EL|$KEYWORDS_ACURA_ILX|$KEYWORDS_ACURA_MDX|$KEYWORDS_ACURA_NLX|$KEYWORDS_ACURA_RDX|$KEYWORDS_ACURA_RL|$KEYWORDS_ACURA_RLX|$KEYWORDS_ACURA_SLX|$KEYWORDS_ACURA_TSX|$KEYWORDS_ACURA_VIGOR|$KEYWORDS_ACURA_ZDX"
KEYWORDS_ACURA_EXCLUDE="$KEYWORDS_ACURA_TL|$KEYWORDS_HONDA_INTEGRA"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Honda"

  #Search brands

  HONDA=$(egrep -i "$KEYWORDS_HONDA" "$NEWPAGES" | egrep -iv "$KEYWORDS_HONDA_EXCLUDE")
  ACURA=$(egrep -i "$KEYWORDS_ACURA" "$NEWPAGES" | egrep -iv "$KEYWORDS_ACURA_EXCLUDE")

  #Search ATVs

  SPORTRAX=$(egrep -i "$KEYWORDS_HONDA_SPORTRAX" "$NEWPAGES")

  #Search cars

  ACCORD=$(egrep -i "$KEYWORDS_HONDA_ACCORD" "$NEWPAGES")
  CIVIC=$(egrep -i "$KEYWORDS_HONDA_CIVIC" "$NEWPAGES")
  ELEMENT=$(egrep -i "$KEYWORDS_HONDA_ELEMENT" "$NEWPAGES")
  INTEGRA=$(egrep -i "$KEYWORDS_HONDA_INTEGRA" "$NEWPAGES")
  PASSPORT=$(egrep -i "$KEYWORDS_HONDA_PASSPORT" "$NEWPAGES")
  PRELUDE=$(egrep -i "$KEYWORDS_HONDA_PRELUDE" "$NEWPAGES")
  ACURATL=$(egrep -i "$KEYWORDS_ACURA_TL" "$NEWPAGES")

  #Search SUVs

  PILOT=$(egrep -i "$KEYWORDS_HONDA_PILOT" "$NEWPAGES")
  CRV=$(egrep -i "$KEYWORDS_HONDA_CRV" "$NEWPAGES")

  #Search vans

  ODYSSEY=$(egrep -i "$KEYWORDS_HONDA_ODYSSEY" "$NEWPAGES")

  #Categorize brands

  if [ "$HONDA" != "" ];
  then
    printf "%s" "$HONDA" > Honda.txt
    export CATFILE="Honda.txt"
    export CATNAME="Honda"
    $CATEGORIZE
    rm Honda.txt
    unset HONDA
  fi

  if [ "$ACURA" != "" ];
  then
    printf "%s" "$ACURA" > Acura.txt
    export CATFILE="Acura.txt"
    export CATNAME="Acura"
    $CATEGORIZE
    rm Acura.txt
    unset ACURA
  fi

  #Categorize ATVs

  if [ "$SPORTRAX" != "" ];
  then
    printf "%s" "$SPORTRAX" > HondaSportrax.txt
    export CATFILE="HondaSportrax.txt"
    export CATNAME="Honda Sportrax"
    $CATEGORIZE
    rm HondaSportrax.txt
    unset SPORTRAX
  fi

  #Categorize cars

  if [ "$ACCORD" != "" ];
  then
    printf "%s" "$ACCORD" > HondaAccord.txt
    export CATFILE="HondaAccord.txt"
    export CATNAME="Honda Accord"
    $CATEGORIZE
    rm HondaAccord.txt
    unset ACCORD
  fi

  if [ "$CIVIC" != "" ];
  then
    printf "%s" "$CIVIC" > HondaCivic.txt
    export CATFILE="HondaCivic.txt"
    export CATNAME="Honda Civic"
    $CATEGORIZE
    rm HondaCivic.txt
    unset CIVIC
  fi

  if [ "$ELEMENT" != "" ];
  then
    printf "%s" "$ELEMENT" > HondaElement.txt
    export CATFILE="HondaElement.txt"
    export CATNAME="Honda Element"
    $CATEGORIZE
    rm HondaElement.txt
    unset ELEMENT
  fi

  if [ "$INTEGRA" != "" ];
  then
    printf "%s" "$INTEGRA" > HondaIntegra.txt
    export CATFILE="HondaIntegra.txt"
    export CATNAME="Honda Integra"
    $CATEGORIZE
    rm HondaIntegra.txt
    unset INTEGRA
  fi

  if [ "$PASSPORT" != "" ];
  then
    printf "%s" "$PASSPORT" > HondaPassport.txt
    export CATFILE="HondaPassport.txt"
    export CATNAME="Honda Passport"
    $CATEGORIZE
    rm HondaPassport.txt
    unset PASSPORT
  fi

  if [ "$PRELUDE" != "" ];
  then
    printf "%s" "$PRELUDE" > HondaPrelude.txt
    export CATFILE="HondaPrelude.txt"
    export CATNAME="Honda Prelude"
    $CATEGORIZE
    rm HondaPrelude.txt
    unset PRELUDE
  fi

  if [ "$ACURATL" != "" ];
  then
    printf "%s" "$ACURATL" > AcuraTL.txt
    export CATFILE="AcuraTL.txt"
    export CATNAME="Acura TL"
    $CATEGORIZE
    rm AcuraTL.txt
    unset ACURATL
  fi

  #Categorize SUVs

  if [ "$CRV" != "" ];
  then
    printf "%s" "$CRV" > HondaCRV.txt
    export CATFILE="HondaCRV.txt"
    export CATNAME="Honda CR-V"
    $CATEGORIZE
    rm HondaCRV.txt
    unset CRV
  fi

  if [ "$PILOT" != "" ];
  then
    printf "%s" "$PILOT" > HondaPilot.txt
    export CATFILE="HondaPilot.txt"
    export CATNAME="Honda Pilot"
    $CATEGORIZE
    rm HondaPilot.txt
    unset PILOT
  fi

  #Categorize vans

  if [ "$ODYSSEY" != "" ];
  then
    printf "%s" "$ODYSSEY" > HondaOdyssey.txt
    export CATFILE="HondaOdyssey.txt"
    export CATNAME="Honda Odyssey"
    $CATEGORIZE
    rm HondaOdyssey.txt
    unset ODYSSEY
  fi

  debug_end "Honda"

fi