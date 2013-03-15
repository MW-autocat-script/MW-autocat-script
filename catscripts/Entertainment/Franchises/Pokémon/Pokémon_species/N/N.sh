#!/bin/bash
egrep -i 'Natu\b' newpages.txt >> Natu.txt
egrep -i 'Nidoking' newpages.txt >> Nidoking.txt
egrep -i 'Nidoqueen' newpages.txt >> Nidoqueen.txt
egrep -i 'Nidoran♀|Nidoran ♀|Nidoran (girl|female)|Nidoran \(female\)|(girl|female) Nidoran' newpages.txt >> Nidoran♀.txt
egrep -i 'Nidoran♂|Nidoran ♂|Nidoran (boy|guy|male)|Nidoran \(male\)|(boy|guy|male) Nidoran' newpages.txt >> Nidoran♂.txt
egrep -i 'Nidoran' newpages.txt | egrep -iv '♀|♀|girl|female|male|guy|boy' >> Nidoran♀.txt
egrep -i 'Nidoran' newpages.txt | egrep -iv '♀|♀|girl|female|male|guy|boy' >> Nidoran♂.txt
egrep -i 'Nidorina' newpages.txt >> Nidorina.txt
egrep -i 'Nidorino' newpages.txt >> Nidorino.txt
egrep -i 'Nincada' newpages.txt >> Nincada.txt
egrep -i 'Ninetales' newpages.txt >> Ninetales.txt
egrep -i 'Ninjask' newpages.txt >> Ninjask.txt
egrep -i 'Noctowl' newpages.txt >> Noctowl.txt
egrep -i 'Nosepass' newpages.txt >> Nosepass.txt
egrep -i 'Numel' newpages.txt >> Numel.txt
egrep -i 'Nuzleaf' newpages.txt >> Nuzleaf.txt

Natu=`stat --print=%s Natu.txt`
Nidoking=`stat --print=%s Nidoking.txt`
Nidoqueen=`stat --print=%s Nidoqueen.txt`
NidoranFemale=`stat --print=%s Nidoran♀.txt`
NidoranMale=`stat --print=%s Nidoran♂.txt`
Nidorina=`stat --print=%s Nidorina.txt`
Nidorino=`stat --print=%s Nidorino.txt`
Nincada=`stat --print=%s Nincada.txt`
Ninetales=`stat --print=%s Ninetales.txt`
Ninjask=`stat --print=%s Ninjask.txt`
Noctowl=`stat --print=%s Noctowl.txt`
Nosepass=`stat --print=%s Nosepass.txt`
Numel=`stat --print=%s Numel.txt`
Nuzleaf=`stat --print=%s Nuzleaf.txt`

if [ $Natu -ne 0 ];
then
   export CATFILE="Natu.txt"
   export CATNAME="Natu"
   $CATEGORIZE
fi

if [ $Nidoking -ne 0 ];
then
   export CATFILE="Nidoking.txt"
   export CATNAME="Nidoking"
   $CATEGORIZE
fi

if [ $Nidoqueen -ne 0 ];
then
   export CATFILE="Nidoqueen.txt"
   export CATNAME="Nidoqueen"
   $CATEGORIZE
fi

if [ $NidoranFemale -ne 0 ];
then
   export CATFILE="Nidoran♀.txt"
   export CATNAME="Nidoran (female)"
   $CATEGORIZE
fi

if [ $NidoranMale -ne 0 ];
then
   export CATFILE="Nidoran♂.txt"
   export CATNAME="Nidoran (male)"
   $CATEGORIZE
fi

if [ $Nidorina -ne 0 ];
then
   export CATFILE="Nidorina.txt"
   export CATNAME="Nidorina"
   $CATEGORIZE
fi

if [ $Nidorino -ne 0 ];
then
   export CATFILE="Nidorino.txt"
   export CATNAME="Nidorino"
   $CATEGORIZE
fi

if [ $Nincada -ne 0 ];
then
   export CATFILE="Nincada.txt"
   export CATNAME="Nincada"
   $CATEGORIZE
fi

if [ $Ninetales -ne 0 ];
then
   export CATFILE="Ninetales.txt"
   export CATNAME="Ninetales"
   $CATEGORIZE
fi

if [ $Ninjask -ne 0 ];
then
   export CATFILE="Ninjask.txt"
   export CATNAME="Ninjask"
   $CATEGORIZE
fi

if [ $Noctowl -ne 0 ];
then
   export CATFILE="Noctowl.txt"
   export CATNAME="Noctowl"
   $CATEGORIZE
fi

if [ $Nosepass -ne 0 ];
then
   export CATFILE="Nosepass.txt"
   export CATNAME="Nosepass"
   $CATEGORIZE
fi

if [ $Numel -ne 0 ];
then
   export CATFILE="Numel.txt"
   export CATNAME="Numel"
   $CATEGORIZE
fi

if [ $Nuzleaf -ne 0 ];
then
   export CATFILE="Nuzleaf.txt"
   export CATNAME="Nuzleaf"
   $CATEGORIZE
fi


rm Natu.txt
rm Nidoking.txt
rm Nidoqueen.txt
rm Nidoran♀.txt
rm Nidoran♂.txt
rm Nidorina.txt
rm Nidorino.txt
rm Nincada.txt
rm Ninetales.txt
rm Ninjask.txt
rm Noctowl.txt
rm Nosepass.txt
rm Numel.txt
rm Nuzleaf.txt
