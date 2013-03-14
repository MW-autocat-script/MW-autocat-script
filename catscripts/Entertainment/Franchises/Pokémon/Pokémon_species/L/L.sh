#!/bin/bash
egrep -i 'Lairon' newpages.txt >> Lairon.txt
egrep -i 'Lampent' newpages.txt >> Lampent.txt
egrep -i 'Landorus' newpages.txt >> Landorus.txt
egrep -i 'Lanturn' newpages.txt >> Lanturn.txt
egrep -i 'Lapras' newpages.txt >> Lapras.txt
egrep -i 'Larvesta' newpages.txt >> Larvesta.txt
egrep -i 'Larvitar' newpages.txt >> Larvitar.txt
egrep -i 'Latias' newpages.txt >> Latias.txt
egrep -i 'Latios' newpages.txt >> Latios.txt
egrep -i 'Leafeon' newpages.txt >> Leafeon.txt
egrep -i 'Leavanny' newpages.txt >> Leavanny.txt
egrep -i 'Ledian' newpages.txt >> Ledian.txt
egrep -i 'Ledyba' newpages.txt >> Ledyba.txt
egrep -i 'Lickilicky' newpages.txt >> Lickilicky.txt
egrep -i 'Lickitung' newpages.txt >> Lickitung.txt
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
   ./catscripts/Categorize.sh
fi

if [ $Lampent -ne 0 ];
then
   export CATFILE="Lampent.txt"
   export CATNAME="Lampent"
   ./catscripts/Categorize.sh
fi

if [ $Landorus -ne 0 ];
then
   export CATFILE="Landorus.txt"
   export CATNAME="Landorus"
   ./catscripts/Categorize.sh
fi

if [ $Lanturn -ne 0 ];
then
   export CATFILE="Lanturn.txt"
   export CATNAME="Lanturn"
   ./catscripts/Categorize.sh
fi

if [ $Lapras -ne 0 ];
then
   export CATFILE="Lapras.txt"
   export CATNAME="Lapras"
   ./catscripts/Categorize.sh
fi

if [ $Larvesta -ne 0 ];
then
   export CATFILE="Larvesta.txt"
   export CATNAME="Larvesta"
   ./catscripts/Categorize.sh
fi

if [ $Larvitar -ne 0 ];
then
   export CATFILE="Larvitar.txt"
   export CATNAME="Larvitar"
   ./catscripts/Categorize.sh
fi

if [ $Latias -ne 0 ];
then
   export CATFILE="Latias.txt"
   export CATNAME="Latias"
   ./catscripts/Categorize.sh
fi

if [ $Latios -ne 0 ];
then
   export CATFILE="Latios.txt"
   export CATNAME="Latios"
   ./catscripts/Categorize.sh
fi

if [ $Leafeon -ne 0 ];
then
   export CATFILE="Leafeon.txt"
   export CATNAME="Leafeon"
   ./catscripts/Categorize.sh
fi

if [ $Leavanny -ne 0 ];
then
   export CATFILE="Leavanny.txt"
   export CATNAME="Leavanny"
   ./catscripts/Categorize.sh
fi

if [ $Ledian -ne 0 ];
then
   export CATFILE="Ledian.txt"
   export CATNAME="Ledian"
   ./catscripts/Categorize.sh
fi

if [ $Ledyba -ne 0 ];
then
   export CATFILE="Ledyba.txt"
   export CATNAME="Ledyba"
   ./catscripts/Categorize.sh
fi

if [ $Lickilicky -ne 0 ];
then
   export CATFILE="Lickilicky.txt"
   export CATNAME="Lickilicky"
   ./catscripts/Categorize.sh
fi

if [ $Lickitung -ne 0 ];
then
   export CATFILE="Lickitung.txt"
   export CATNAME="Lickitung"
   ./catscripts/Categorize.sh
fi

if [ $Liepard -ne 0 ];
then
   export CATFILE="Liepard.txt"
   export CATNAME="Liepard"
   ./catscripts/Categorize.sh
fi

if [ $Lileep -ne 0 ];
then
   export CATFILE="Lileep.txt"
   export CATNAME="Lileep"
   ./catscripts/Categorize.sh
fi

if [ $Lilligant -ne 0 ];
then
   export CATFILE="Lilligant.txt"
   export CATNAME="Lilligant"
   ./catscripts/Categorize.sh
fi

if [ $Lillipup -ne 0 ];
then
   export CATFILE="Lillipup.txt"
   export CATNAME="Lillipup"
   ./catscripts/Categorize.sh
fi

if [ $Linoone -ne 0 ];
then
   export CATFILE="Linoone.txt"
   export CATNAME="Linoone"
   ./catscripts/Categorize.sh
fi

if [ $Litwick -ne 0 ];
then
   export CATFILE="Litwick.txt"
   export CATNAME="Litwick"
   ./catscripts/Categorize.sh
fi

if [ $Lombre -ne 0 ];
then
   export CATFILE="Lombre.txt"
   export CATNAME="Lombre"
   ./catscripts/Categorize.sh
fi

if [ $Lopunny -ne 0 ];
then
   export CATFILE="Lopunny.txt"
   export CATNAME="Lopunny"
   ./catscripts/Categorize.sh
fi

if [ $Lotad -ne 0 ];
then
   export CATFILE="Lotad.txt"
   export CATNAME="Lotad"
   ./catscripts/Categorize.sh
fi

if [ $Loudred -ne 0 ];
then
   export CATFILE="Loudred.txt"
   export CATNAME="Loudred"
   ./catscripts/Categorize.sh
fi

if [ $Lucario -ne 0 ];
then
   export CATFILE="Lucario.txt"
   export CATNAME="Lucario"
   ./catscripts/Categorize.sh
fi

if [ $Ludicolo -ne 0 ];
then
   export CATFILE="Ludicolo.txt"
   export CATNAME="Ludicolo"
   ./catscripts/Categorize.sh
fi

if [ $Lugia -ne 0 ];
then
   export CATFILE="Lugia.txt"
   export CATNAME="Lugia"
   ./catscripts/Categorize.sh
fi

if [ $Lumineon -ne 0 ];
then
   export CATFILE="Lumineon.txt"
   export CATNAME="Lumineon"
   ./catscripts/Categorize.sh
fi

if [ $Lunatone -ne 0 ];
then
   export CATFILE="Lunatone.txt"
   export CATNAME="Lunatone"
   ./catscripts/Categorize.sh
fi

if [ $Luvdisc -ne 0 ];
then
   export CATFILE="Luvdisc.txt"
   export CATNAME="Luvdisc"
   ./catscripts/Categorize.sh
fi

if [ $Luxio -ne 0 ];
then
   export CATFILE="Luxio.txt"
   export CATNAME="Luxio"
   ./catscripts/Categorize.sh
fi

if [ $Luxray -ne 0 ];
then
   export CATFILE="Luxray.txt"
   export CATNAME="Luxray"
   ./catscripts/Categorize.sh
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