#!/bin/bash
egrep -i 'drug(|s)\b' newpages.txt | egrep -iv 'prescription|medication|illegal|meth|marijuana|weed|cannabis|cannabinol|pot\b|cocaine|crack|heroin|methadone|speed|\bLSD\b' >> Drugs.txt
egrep -i 'medication|prescription' newpages.txt >> Medication.txt
egrep -i 'Ibuprofen|Advil|Tylenol' newpages.txt >> Medication.txt
egrep -i 'NSAID' newpages.txt >> Medication.txt
egrep -i 'Asprin' newpages.txt >> Medication.txt
egrep -i 'oxycontin|oxycodone' newpages.txt >> Medication.txt
egrep -i 'illegal drug' newpages.txt | egrep -iv 'cocaine|marijuana|weed' >> IllegalDrugs.txt
egrep -i '\bmeth\b|methamphetamine' newpages.txt >> IllegalDrugs.txt
egrep -i '\bLSD\b' newpages.txt >> IllegalDrugs.txt
egrep -i 'Cocaine|smoke crack|crack(| )pipe' newpages.txt >> Cocaine.txt
egrep -i 'marijuana|(buy|smoke|inhale).+(weed|pot\b|a joint)|cannabis|cannabinol' newpages.txt >> Marijuana.txt

DRUGS=`stat --print=%s Drugs.txt`
MEDICATION=`stat --print=%s Medication.txt`
ILLEGAL=`stat --print=%s IllegalDrugs.txt`
COCAINE=`stat --print=%s Cocaine.txt`
MARIJUANA=`stat --print=%s Marijuana.txt`

if [ $DRUGS -ne 0 ];
then
  export CATFILE="Drugs.txt"
  export CATNAME="Drugs"
  $CATEGORIZE
fi

if [ $MEDICATION -ne 0 ];
then
  export CATFILE="Medication.txt"
  export CATNAME="Medication"
  $CATEGORIZE
fi

if [ $ILLEGAL -ne 0 ];
then
  export CATFILE="IllegalDrugs.txt"
  export CATNAME="Illegal drugs"
  $CATEGORIZE
fi

if [ $COCAINE -ne 0 ];
then
  export CATFILE="Cocaine.txt"
  export CATNAME="Cocaine"
  $CATEGORIZE
fi

if [ $MARIJUANA -ne 0 ];
then
  export CATFILE="Marijuana.txt"
  export CATNAME="Marijuana"
  $CATEGORIZE
fi

rm Drugs.txt
rm Medication.txt
rm IllegalDrugs.txt
rm Cocaine.txt
rm Marijuana.txt
