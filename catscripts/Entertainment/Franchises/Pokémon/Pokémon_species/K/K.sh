#!/bin/bash
egrep -i 'Kabuto\b' newpages.txt >> Kabuto.txt
egrep -i 'Kabutops' newpages.txt >> Kabutops.txt
egrep -i 'Kadabra' newpages.txt >> Kadabra.txt
egrep -i 'Kakuna' newpages.txt >> Kakuna.txt
egrep -i 'Kangaskhan' newpages.txt >> Kangaskhan.txt
egrep -i 'Karrablast' newpages.txt >> Karrablast.txt
egrep -i 'Kecleon' newpages.txt >> Kecleon.txt
egrep -i 'Keldeo' newpages.txt >> Keldeo.txt
egrep -i 'Kingdra' newpages.txt >> Kingdra.txt
egrep -i 'Kingler' newpages.txt >> Kingler.txt
egrep -i 'Kirlia' newpages.txt >> Kirlia.txt
egrep -i 'Klang' newpages.txt >> Klang.txt
egrep -i 'Klink' newpages.txt >> Klink.txt
egrep -i 'Klinklang' newpages.txt >> Klinklang.txt
egrep -i 'Koffing' newpages.txt >> Koffing.txt
egrep -i 'Krabby' newpages.txt  | egrep -iv 'Krabby patt(y|ies)' >> Krabby.txt
egrep -i 'Kricketot' newpages.txt >> Kricketot.txt
egrep -i 'Kricketune' newpages.txt >> Kricketune.txt
egrep -i 'Krookodile' newpages.txt >> Krookodile.txt
egrep -i 'Krokorok' newpages.txt >> Krokorok.txt
egrep -i 'Kyogre' newpages.txt >> Kyogre.txt
egrep -i 'Kyurem' newpages.txt >> Kyurem.txt

Kabuto=`stat --print=%s Kabuto.txt`
Kabutops=`stat --print=%s Kabutops.txt`
Kadabra=`stat --print=%s Kadabra.txt`
Kakuna=`stat --print=%s Kakuna.txt`
Kangaskhan=`stat --print=%s Kangaskhan.txt`
Karrablast=`stat --print=%s Karrablast.txt`
Kecleon=`stat --print=%s Kecleon.txt`
Keldeo=`stat --print=%s Keldeo.txt`
Kingdra=`stat --print=%s Kingdra.txt`
Kingler=`stat --print=%s Kingler.txt`
Kirlia=`stat --print=%s Kirlia.txt`
Klang=`stat --print=%s Klang.txt`
Klink=`stat --print=%s Klink.txt`
Klinklang=`stat --print=%s Klinklang.txt`
Koffing=`stat --print=%s Koffing.txt`
Krabby=`stat --print=%s Krabby.txt`
Kricketot=`stat --print=%s Kricketot.txt`
Kricketune=`stat --print=%s Kricketune.txt`
Krookodile=`stat --print=%s Krookodile.txt`
Krokorok=`stat --print=%s Krokorok.txt`
Kyogre=`stat --print=%s Kyogre.txt`
Kyurem=`stat --print=%s Kyurem.txt`

if [ $Kabuto -ne 0 ];
then
   export CATFILE="Kabuto.txt"
   export CATNAME="Kabuto"
   $CATEGORIZE
fi

if [ $Kabutops -ne 0 ];
then
   export CATFILE="Kabutops.txt"
   export CATNAME="Kabutops"
   $CATEGORIZE
fi

if [ $Kadabra -ne 0 ];
then
   export CATFILE="Kadabra.txt"
   export CATNAME="Kadabra"
   $CATEGORIZE
fi

if [ $Kakuna -ne 0 ];
then
   export CATFILE="Kakuna.txt"
   export CATNAME="Kakuna"
   $CATEGORIZE
fi

if [ $Kangaskhan -ne 0 ];
then
   export CATFILE="Kangaskhan.txt"
   export CATNAME="Kangaskhan"
   $CATEGORIZE
fi

if [ $Karrablast -ne 0 ];
then
   export CATFILE="Karrablast.txt"
   export CATNAME="Karrablast"
   $CATEGORIZE
fi

if [ $Kecleon -ne 0 ];
then
   export CATFILE="Kecleon.txt"
   export CATNAME="Kecleon"
   $CATEGORIZE
fi

if [ $Keldeo -ne 0 ];
then
   export CATFILE="Keldeo.txt"
   export CATNAME="Keldeo"
   $CATEGORIZE
fi

if [ $Kingdra -ne 0 ];
then
   export CATFILE="Kingdra.txt"
   export CATNAME="Kingdra"
   $CATEGORIZE
fi

if [ $Kingler -ne 0 ];
then
   export CATFILE="Kingler.txt"
   export CATNAME="Kingler"
   $CATEGORIZE
fi

if [ $Kirlia -ne 0 ];
then
   export CATFILE="Kirlia.txt"
   export CATNAME="Kirlia"
   $CATEGORIZE
fi

if [ $Klang -ne 0 ];
then
   export CATFILE="Klang.txt"
   export CATNAME="Klang"
   $CATEGORIZE
fi

if [ $Klink -ne 0 ];
then
   export CATFILE="Klink.txt"
   export CATNAME="Klink"
   $CATEGORIZE
fi

if [ $Klinklang -ne 0 ];
then
   export CATFILE="Klinklang.txt"
   export CATNAME="Klinklang"
   $CATEGORIZE
fi

if [ $Koffing -ne 0 ];
then
   export CATFILE="Koffing.txt"
   export CATNAME="Koffing"
   $CATEGORIZE
fi

if [ $Krabby -ne 0 ];
then
   export CATFILE="Krabby.txt"
   export CATNAME="Krabby"
   $CATEGORIZE
fi

if [ $Kricketot -ne 0 ];
then
   export CATFILE="Kricketot.txt"
   export CATNAME="Kricketot"
   $CATEGORIZE
fi

if [ $Kricketune -ne 0 ];
then
   export CATFILE="Kricketune.txt"
   export CATNAME="Kricketune"
   $CATEGORIZE
fi

if [ $Krookodile -ne 0 ];
then
   export CATFILE="Krookodile.txt"
   export CATNAME="Krookodile"
   $CATEGORIZE
fi

if [ $Krokorok -ne 0 ];
then
   export CATFILE="Krokorok.txt"
   export CATNAME="Krokorok"
   $CATEGORIZE
fi

if [ $Kyogre -ne 0 ];
then
   export CATFILE="Kyogre.txt"
   export CATNAME="Kyogre"
   $CATEGORIZE
fi

if [ $Kyurem -ne 0 ];
then
   export CATFILE="Kyurem.txt"
   export CATNAME="Kyurem"
   $CATEGORIZE
fi


rm Kabuto.txt
rm Kabutops.txt
rm Kadabra.txt
rm Kakuna.txt
rm Kangaskhan.txt
rm Karrablast.txt
rm Kecleon.txt
rm Keldeo.txt
rm Kingdra.txt
rm Kingler.txt
rm Kirlia.txt
rm Klang.txt
rm Klink.txt
rm Klinklang.txt
rm Koffing.txt
rm Krabby.txt
rm Kricketot.txt
rm Kricketune.txt
rm Krookodile.txt
rm Krokorok.txt
rm Kyogre.txt
rm Kyurem.txt
