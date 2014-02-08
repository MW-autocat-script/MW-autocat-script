#!/bin/bash

KEYWORDS_LAIRON="Lairon"
KEYWORDS_LAMPENT="Lampent"
KEYWORDS_LANDORUS="Landorus"
KEYWORDS_LANTURN="Lanturn"
KEYWORDS_LAPRAS="Lapras"
KEYWORDS_LARVESTA="Larvesta"
KEYWORDS_LARVITAR="Larvitar"
KEYWORDS_LATIAS="Latias"
KEYWORDS_LATIOS="Latios"
KEYWORDS_LEAFEON="Leafeon"
KEYWORDS_LEAVANNY="Leavanny"
KEYWORDS_LEDIAN="Ledian"
KEYWORDS_LEDYBA="Ledyba"
KEYWORDS_LICKILICKY="Lickilicky"
KEYWORDS_LICKITUNG="Lickitung"

egrep -i "$KEYWORDS_LAIRON" newpages.txt >> Lairon.txt
egrep -i "$KEYWORDS_LAMPENT" newpages.txt >> Lampent.txt
egrep -i "$KEYWORDS_LANDORUS" newpages.txt >> Landorus.txt
egrep -i "$KEYWORDS_LANTURN" newpages.txt >> Lanturn.txt
egrep -i "$KEYWORDS_LAPRAS" newpages.txt >> Lapras.txt
egrep -i "$KEYWORDS_LARVESTA" newpages.txt >> Larvesta.txt
egrep -i "$KEYWORDS_LARVITAR" newpages.txt >> Larvitar.txt
egrep -i "$KEYWORDS_LATIAS" newpages.txt >> Latias.txt
egrep -i "$KEYWORDS_LATIOS" newpages.txt >> Latios.txt
egrep -i "$KEYWORDS_LEAFEON" newpages.txt >> Leafeon.txt
egrep -i "$KEYWORDS_LEAVANNY" newpages.txt >> Leavanny.txt
egrep -i "$KEYWORDS_LEDIAN" newpages.txt >> Ledian.txt
egrep -i "$KEYWORDS_LEDYBA" newpages.txt >> Ledyba.txt
egrep -i "$KEYWORDS_LICKILICKY" newpages.txt >> Lickilicky.txt
egrep -i "$KEYWORDS_LICKITUNG" newpages.txt >> Lickitung.txt
egrep -i 'Liepard' newpages.txt >> Liepard.txt
egrep -i 'Lileep' newpages.txt >> Lileep.txt
egrep -i 'Lilligant' newpages.txt >> Lilligant.txt
egrep -i 'Lillipup' newpages.txt >> Lillipup.txt
egrep -i 'Linoone' newpages.txt >> Linoone.txt
egrep -i 'Litwick' newpages.txt >> Litwick.txt
egrep -i 'Lombre' newpages.txt >> Lombre.txt
egrep -i 'Lopunny' newpages.txt >> Lopunny.txt
egrep -i 'Lotad' newpages.txt >> Lotad.txt
egrep -i 'Loudred' newpages.txt >> Loudred.txt
egrep -i 'Lucario' newpages.txt >> Lucario.txt
egrep -i 'Ludicolo' newpages.txt >> Ludicolo.txt
egrep -i 'Lugia' newpages.txt >> Lugia.txt
egrep -i 'Lumineon' newpages.txt >> Lumineon.txt
egrep -i 'Lunatone' newpages.txt >> Lunatone.txt
egrep -i 'Luvdisc' newpages.txt >> Luvdisc.txt
egrep -i 'Luxio' newpages.txt >> Luxio.txt
egrep -i 'Luxray' newpages.txt >> Luxray.txt

Lairon=`stat --print=%s Lairon.txt`
Lampent=`stat --print=%s Lampent.txt`
Landorus=`stat --print=%s Landorus.txt`
Lanturn=`stat --print=%s Lanturn.txt`
Lapras=`stat --print=%s Lapras.txt`
Larvesta=`stat --print=%s Larvesta.txt`
Larvitar=`stat --print=%s Larvitar.txt`
Latias=`stat --print=%s Latias.txt`
Latios=`stat --print=%s Latios.txt`
Leafeon=`stat --print=%s Leafeon.txt`
Leavanny=`stat --print=%s Leavanny.txt`
Ledian=`stat --print=%s Ledian.txt`
Ledyba=`stat --print=%s Ledyba.txt`
Lickilicky=`stat --print=%s Lickilicky.txt`
Lickitung=`stat --print=%s Lickitung.txt`
Liepard=`stat --print=%s Liepard.txt`
Lileep=`stat --print=%s Lileep.txt`
Lilligant=`stat --print=%s Lilligant.txt`
Lillipup=`stat --print=%s Lillipup.txt`
Linoone=`stat --print=%s Linoone.txt`
Litwick=`stat --print=%s Litwick.txt`
Lombre=`stat --print=%s Lombre.txt`
Lopunny=`stat --print=%s Lopunny.txt`
Lotad=`stat --print=%s Lotad.txt`
Loudred=`stat --print=%s Loudred.txt`
Lucario=`stat --print=%s Lucario.txt`
Ludicolo=`stat --print=%s Ludicolo.txt`
Lugia=`stat --print=%s Lugia.txt`
Lumineon=`stat --print=%s Lumineon.txt`
Lunatone=`stat --print=%s Lunatone.txt`
Luvdisc=`stat --print=%s Luvdisc.txt`
Luxio=`stat --print=%s Luxio.txt`
Luxray=`stat --print=%s Luxray.txt`

if [ $Lairon -ne 0 ];
then
   export CATFILE="Lairon.txt"
   export CATNAME="Lairon"
   $CATEGORIZE
fi

if [ $Lampent -ne 0 ];
then
   export CATFILE="Lampent.txt"
   export CATNAME="Lampent"
   $CATEGORIZE
fi

if [ $Landorus -ne 0 ];
then
   export CATFILE="Landorus.txt"
   export CATNAME="Landorus"
   $CATEGORIZE
fi

if [ $Lanturn -ne 0 ];
then
   export CATFILE="Lanturn.txt"
   export CATNAME="Lanturn"
   $CATEGORIZE
fi

if [ $Lapras -ne 0 ];
then
   export CATFILE="Lapras.txt"
   export CATNAME="Lapras"
   $CATEGORIZE
fi

if [ $Larvesta -ne 0 ];
then
   export CATFILE="Larvesta.txt"
   export CATNAME="Larvesta"
   $CATEGORIZE
fi

if [ $Larvitar -ne 0 ];
then
   export CATFILE="Larvitar.txt"
   export CATNAME="Larvitar"
   $CATEGORIZE
fi

if [ $Latias -ne 0 ];
then
   export CATFILE="Latias.txt"
   export CATNAME="Latias"
   $CATEGORIZE
fi

if [ $Latios -ne 0 ];
then
   export CATFILE="Latios.txt"
   export CATNAME="Latios"
   $CATEGORIZE
fi

if [ $Leafeon -ne 0 ];
then
   export CATFILE="Leafeon.txt"
   export CATNAME="Leafeon"
   $CATEGORIZE
fi

if [ $Leavanny -ne 0 ];
then
   export CATFILE="Leavanny.txt"
   export CATNAME="Leavanny"
   $CATEGORIZE
fi

if [ $Ledian -ne 0 ];
then
   export CATFILE="Ledian.txt"
   export CATNAME="Ledian"
   $CATEGORIZE
fi

if [ $Ledyba -ne 0 ];
then
   export CATFILE="Ledyba.txt"
   export CATNAME="Ledyba"
   $CATEGORIZE
fi

if [ $Lickilicky -ne 0 ];
then
   export CATFILE="Lickilicky.txt"
   export CATNAME="Lickilicky"
   $CATEGORIZE
fi

if [ $Lickitung -ne 0 ];
then
   export CATFILE="Lickitung.txt"
   export CATNAME="Lickitung"
   $CATEGORIZE
fi

if [ $Liepard -ne 0 ];
then
   export CATFILE="Liepard.txt"
   export CATNAME="Liepard"
   $CATEGORIZE
fi

if [ $Lileep -ne 0 ];
then
   export CATFILE="Lileep.txt"
   export CATNAME="Lileep"
   $CATEGORIZE
fi

if [ $Lilligant -ne 0 ];
then
   export CATFILE="Lilligant.txt"
   export CATNAME="Lilligant"
   $CATEGORIZE
fi

if [ $Lillipup -ne 0 ];
then
   export CATFILE="Lillipup.txt"
   export CATNAME="Lillipup"
   $CATEGORIZE
fi

if [ $Linoone -ne 0 ];
then
   export CATFILE="Linoone.txt"
   export CATNAME="Linoone"
   $CATEGORIZE
fi

if [ $Litwick -ne 0 ];
then
   export CATFILE="Litwick.txt"
   export CATNAME="Litwick"
   $CATEGORIZE
fi

if [ $Lombre -ne 0 ];
then
   export CATFILE="Lombre.txt"
   export CATNAME="Lombre"
   $CATEGORIZE
fi

if [ $Lopunny -ne 0 ];
then
   export CATFILE="Lopunny.txt"
   export CATNAME="Lopunny"
   $CATEGORIZE
fi

if [ $Lotad -ne 0 ];
then
   export CATFILE="Lotad.txt"
   export CATNAME="Lotad"
   $CATEGORIZE
fi

if [ $Loudred -ne 0 ];
then
   export CATFILE="Loudred.txt"
   export CATNAME="Loudred"
   $CATEGORIZE
fi

if [ $Lucario -ne 0 ];
then
   export CATFILE="Lucario.txt"
   export CATNAME="Lucario"
   $CATEGORIZE
fi

if [ $Ludicolo -ne 0 ];
then
   export CATFILE="Ludicolo.txt"
   export CATNAME="Ludicolo"
   $CATEGORIZE
fi

if [ $Lugia -ne 0 ];
then
   export CATFILE="Lugia.txt"
   export CATNAME="Lugia"
   $CATEGORIZE
fi

if [ $Lumineon -ne 0 ];
then
   export CATFILE="Lumineon.txt"
   export CATNAME="Lumineon"
   $CATEGORIZE
fi

if [ $Lunatone -ne 0 ];
then
   export CATFILE="Lunatone.txt"
   export CATNAME="Lunatone"
   $CATEGORIZE
fi

if [ $Luvdisc -ne 0 ];
then
   export CATFILE="Luvdisc.txt"
   export CATNAME="Luvdisc"
   $CATEGORIZE
fi

if [ $Luxio -ne 0 ];
then
   export CATFILE="Luxio.txt"
   export CATNAME="Luxio"
   $CATEGORIZE
fi

if [ $Luxray -ne 0 ];
then
   export CATFILE="Luxray.txt"
   export CATNAME="Luxray"
   $CATEGORIZE
fi


rm Lairon.txt
rm Lampent.txt
rm Landorus.txt
rm Lanturn.txt
rm Lapras.txt
rm Larvesta.txt
rm Larvitar.txt
rm Latias.txt
rm Latios.txt
rm Leafeon.txt
rm Leavanny.txt
rm Ledian.txt
rm Ledyba.txt
rm Lickilicky.txt
rm Lickitung.txt
rm Liepard.txt
rm Lileep.txt
rm Lilligant.txt
rm Lillipup.txt
rm Linoone.txt
rm Litwick.txt
rm Lombre.txt
rm Lopunny.txt
rm Lotad.txt
rm Loudred.txt
rm Lucario.txt
rm Ludicolo.txt
rm Lugia.txt
rm Lumineon.txt
rm Lunatone.txt
rm Luvdisc.txt
rm Luxio.txt
rm Luxray.txt