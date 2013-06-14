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

#Search ATVs

egrep -i "$KEYWORDS_HONDA_SPORTRAX" newpages.txt > HondaSportrax.txt

#Search cars

egrep -i "$KEYWORDS_HONDA_ACCORD" newpages.txt > HondaAccord.txt
egrep -i "$KEYWORDS_HONDA_CIVIC" newpages.txt > HondaCivic.txt
egrep -i "$KEYWORDS_HONDA_ELEMENT" newpages.txt > HondaElement.txt
egrep -i "$KEYWORDS_HONDA_INTEGRA" newpages.txt > HondaIntegra.txt
egrep -i "$KEYWORDS_HONDA_PASSPORT" newpages.txt > HondaPassport.txt
egrep -i "$KEYWORDS_HONDA_PRELUDE" newpages.txt > HondaPrelude.txt
egrep -i "$KEYWORDS_ACURA_TL" newpages.txt > AcuraTL.txt

#Search SUVs

egrep -i "$KEYWORDS_HONDA_PILOT" newpages.txt > HondaPilot.txt
egrep -i "$KEYWORDS_HONDA_CRV" newpages.txt > HondaCRV.txt

#Search vans

egrep -i "$KEYWORDS_HONDA_ODYSSEY" newpages.txt > HondaOdyssey.txt

#Search brands

egrep -i "Honda" newpages.txt | egrep -iv "$KEYWORDS_HONDA_CARS|$KEYWORDS_HONDA_SUV|$KEYWORDS_HONDA_ODYSSEY|$KEYWORDS_HONDA_SPORTRAX" > Honda.txt
egrep -i "Acura|$KEYWORDS_ACURA_CL|$KEYWORDS_ACURA_CSX|$KEYWORDS_ACURA_EL|$KEYWORDS_ACURA_ILX|$KEYWORDS_ACURA_MDX|$KEYWORDS_ACURA_NLX|$KEYWORDS_ACURA_RDX|$KEYWORDS_ACURA_RL|$KEYWORDS_ACURA_RLX|$KEYWORDS_ACURA_SLX|$KEYWORDS_ACURA_TSX|$KEYWORDS_ACURA_VIGOR|$KEYWORDS_ACURA_ZDX" newpages.txt | egrep -iv "$KEYWORDS_ACURA_TL|$KEYWORDS_HONDA_INTEGRA" > Acura.txt

#Stat brands

HONDA=`stat --print=%s Honda.txt`
ACURA=`stat --print=%s Acura.txt`

#Stat ATVs

SPORTRAX=`stat --print=%s HondaSportrax.txt`

#Stat cars

ACCORD=`stat --print=%s HondaAccord.txt`
CIVIC=`stat --print=%s HondaCivic.txt`
ELEMENT=`stat --print=%s HondaElement.txt`
INTEGRA=`stat --print=%s HondaIntegra.txt`
PASSPORT=`stat --print=%s HondaPassport.txt`
PRELUDE=`stat --print=%s HondaPrelude.txt`
ACURATL=`stat --print=%s AcuraTL.txt`

#Stat SUVs

PILOT=`stat --print=%s HondaPilot.txt`
CRV=`stat --print=%s HondaCRV.txt`

#Stat vans

ODYSSEY=`stat --print=%s HondaOdyssey.txt`

#Categorize brands

if [ $HONDA -ne 0 ];
then
  export CATFILE="Honda.txt"
  export CATNAME="Honda"
  $CATEGORIZE
fi

if [ $ACURA -ne 0 ];
then
  export CATFILE="Acura.txt"
  export CATNAME="Acura"
  $CATEGORIZE
fi

#Categorize ATVs

if [ $SPORTRAX -ne 0 ];
then
  export CATFILE="HondaSportrax.txt"
  export CATNAME="Honda Sportrax"
  $CATEGORIZE
fi

#Categorize cars

if [ $ACCORD -ne 0 ];
then
  export CATFILE="HondaAccord.txt"
  export CATNAME="Honda Accord"
  $CATEGORIZE
fi

if [ $CIVIC -ne 0 ];
then
  export CATFILE="HondaCivic.txt"
  export CATNAME="Honda Civic"
  $CATEGORIZE
fi

if [ $ELEMENT -ne 0 ];
then
  export CATFILE="HondaElement.txt"
  export CATNAME="Honda Element"
  $CATEGORIZE
fi

if [ $INTEGRA -ne 0 ];
then
  export CATFILE="HondaIntegra.txt"
  export CATNAME="Honda Integra"
  $CATEGORIZE
fi

if [ $PASSPORT -ne 0 ];
then
  export CATFILE="HondaPassport.txt"
  export CATNAME="Honda Passport"
  $CATEGORIZE
fi

if [ $PRELUDE -ne 0 ];
then
  export CATFILE="HondaPrelude.txt"
  export CATNAME="Honda Prelude"
  $CATEGORIZE
fi

if [ $ACURATL -ne 0 ];
then
  export CATFILE="AcuraTL.txt"
  export CATNAME="Acura TL"
  $CATEGORIZE
fi

#Categorize SUVs

if [ $CRV -ne 0 ];
then
  export CATFILE="HondaCRV.txt"
  export CATNAME="Honda CR-V"
  $CATEGORIZE
fi

if [ $PILOT -ne 0 ];
then
  export CATFILE="HondaPilot.txt"
  export CATNAME="Honda Pilot"
  $CATEGORIZE
fi

#Categorize vans

if [ $ODYSSEY -ne 0 ];
then
  export CATFILE="HondaOdyssey.txt"
  export CATNAME="Honda Odyssey"
  $CATEGORIZE
fi

#Cleanup brands

rm Honda.txt
rm Acura.txt

#Cleanup ATVs

rm HondaSportrax.txt

#Cleanup cars 

rm HondaAccord.txt
rm HondaCivic.txt
rm HondaElement.txt
rm HondaIntegra.txt
rm HondaPassport.txt
rm HondaPrelude.txt
rm AcuraTL.txt

#Cleanup SUVs

rm HondaCRV.txt
rm HondaPilot.txt

#Cleanup vans

rm HondaOdyssey.txt