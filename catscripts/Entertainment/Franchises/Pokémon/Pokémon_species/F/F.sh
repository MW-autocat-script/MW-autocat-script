#!/bin/bash
egrep -i "Farfetch'd|Farfetchd" newpages.txt >> Farfetchd.txt
egrep -i 'Fearow' newpages.txt >> Fearow.txt
egrep -i 'Feebas' newpages.txt >> Feebas.txt
egrep -i 'Feraligatr' newpages.txt >> Feraligatr.txt
egrep -i 'Ferroseed' newpages.txt >> Ferroseed.txt
egrep -i 'Ferrothorn' newpages.txt >> Ferrothorn.txt
egrep -i 'Finneon' newpages.txt >> Finneon.txt
egrep -i 'Flaaffy' newpages.txt >> Flaaffy.txt
egrep -i 'Flareon' newpages.txt >> Flareon.txt
egrep -i 'Floatzel' newpages.txt >> Floatzel.txt
egrep -i 'Flygon' newpages.txt >> Flygon.txt
egrep -i 'Foongus' newpages.txt >> Foongus.txt
egrep -i 'Forretress' newpages.txt >> Forretress.txt
egrep -i 'Fraxure' newpages.txt >> Fraxure.txt
egrep -i 'Frillish' newpages.txt >> Frillish.txt
egrep -i 'Froslass' newpages.txt >> Froslass.txt
egrep -i 'Furret' newpages.txt >> Furret.txt

Farfetchd=`stat --print=%s Farfetchd.txt`
Fearow=`stat --print=%s Fearow.txt`
Feebas=`stat --print=%s Feebas.txt`
Feraligatr=`stat --print=%s Feraligatr.txt`
Ferroseed=`stat --print=%s Ferroseed.txt`
Ferrothorn=`stat --print=%s Ferrothorn.txt`
Finneon=`stat --print=%s Finneon.txt`
Flaaffy=`stat --print=%s Flaaffy.txt`
Flareon=`stat --print=%s Flareon.txt`
Floatzel=`stat --print=%s Floatzel.txt`
Flygon=`stat --print=%s Flygon.txt`
Foongus=`stat --print=%s Foongus.txt`
Forretress=`stat --print=%s Forretress.txt`
Fraxure=`stat --print=%s Fraxure.txt`
Frillish=`stat --print=%s Frillish.txt`
Froslass=`stat --print=%s Froslass.txt`
Furret=`stat --print=%s Furret.txt`

if [ $Farfetchd -ne 0 ];
then
   export CATFILE="Farfetchd.txt"
   export CATNAME="Farfetch'd"
   $CATEGORIZE
fi

if [ $Fearow -ne 0 ];
then
   export CATFILE="Fearow.txt"
   export CATNAME="Fearow"
   $CATEGORIZE
fi

if [ $Feebas -ne 0 ];
then
   export CATFILE="Feebas.txt"
   export CATNAME="Feebas"
   $CATEGORIZE
fi

if [ $Feraligatr -ne 0 ];
then
   export CATFILE="Feraligatr.txt"
   export CATNAME="Feraligatr"
   $CATEGORIZE
fi

if [ $Ferroseed -ne 0 ];
then
   export CATFILE="Ferroseed.txt"
   export CATNAME="Ferroseed"
   $CATEGORIZE
fi

if [ $Ferrothorn -ne 0 ];
then
   export CATFILE="Ferrothorn.txt"
   export CATNAME="Ferrothorn"
   $CATEGORIZE
fi

if [ $Finneon -ne 0 ];
then
   export CATFILE="Finneon.txt"
   export CATNAME="Finneon"
   $CATEGORIZE
fi

if [ $Flaaffy -ne 0 ];
then
   export CATFILE="Flaaffy.txt"
   export CATNAME="Flaffy"
   $CATEGORIZE
fi

if [ $Flareon -ne 0 ];
then
   export CATFILE="Flareon.txt"
   export CATNAME="Flareon"
   $CATEGORIZE
fi

if [ $Floatzel -ne 0 ];
then
   export CATFILE="Floatzel.txt"
   export CATNAME="Floatzel"
   $CATEGORIZE
fi

if [ $Flygon -ne 0 ];
then
   export CATFILE="Flygon.txt"
   export CATNAME="Flygon"
   $CATEGORIZE
fi

if [ $Foongus -ne 0 ];
then
   export CATFILE="Foongus.txt"
   export CATNAME="Foongus"
   $CATEGORIZE
fi

if [ $Forretress -ne 0 ];
then
   export CATFILE="Forretress.txt"
   export CATNAME="Forretress"
   $CATEGORIZE
fi

if [ $Fraxure -ne 0 ];
then
   export CATFILE="Fraxure.txt"
   export CATNAME="Fraxure"
   $CATEGORIZE
fi

if [ $Frillish -ne 0 ];
then
   export CATFILE="Frillish.txt"
   export CATNAME="Frillish"
   $CATEGORIZE
fi

if [ $Froslass -ne 0 ];
then
   export CATFILE="Froslass.txt"
   export CATNAME="Froslass"
   $CATEGORIZE
fi

if [ $Furret -ne 0 ];
then
   export CATFILE="Furret.txt"
   export CATNAME="Furret"
   $CATEGORIZE
fi


rm Farfetchd.txt
rm Fearow.txt
rm Feebas.txt
rm Feraligatr.txt
rm Ferroseed.txt
rm Ferrothorn.txt
rm Finneon.txt
rm Flaaffy.txt
rm Flareon.txt
rm Floatzel.txt
rm Flygon.txt
rm Foongus.txt
rm Forretress.txt
rm Fraxure.txt
rm Frillish.txt
rm Froslass.txt
rm Furret.txt
