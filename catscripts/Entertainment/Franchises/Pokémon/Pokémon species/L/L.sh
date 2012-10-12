#!/bin/bash
cat newpages.txt | egrep -i 'Lairon' >> Lairon.txt
cat newpages.txt | egrep -i 'Lampent' >> Lampent.txt
cat newpages.txt | egrep -i 'Landorus' >> Landorus.txt
cat newpages.txt | egrep -i 'Lanturn' >> Lanturn.txt
cat newpages.txt | egrep -i 'Lapras' >> Lapras.txt
cat newpages.txt | egrep -i 'Larvesta' >> Larvesta.txt
cat newpages.txt | egrep -i 'Larvitar' >> Larvitar.txt
cat newpages.txt | egrep -i 'Latias' >> Latias.txt
cat newpages.txt | egrep -i 'Latios' >> Latios.txt
cat newpages.txt | egrep -i 'Leafeon' >> Leafeon.txt
cat newpages.txt | egrep -i 'Leavanny' >> Leavanny.txt
cat newpages.txt | egrep -i 'Ledian' >> Ledian.txt
cat newpages.txt | egrep -i 'Ledyba' >> Ledyba.txt
cat newpages.txt | egrep -i 'Lickilicky' >> Lickilicky.txt
cat newpages.txt | egrep -i 'Lickitung' >> Lickitung.txt
cat newpages.txt | egrep -i 'Liepard' >> Liepard.txt
cat newpages.txt | egrep -i 'Lileep' >> Lileep.txt
cat newpages.txt | egrep -i 'Lilligant' >> Lilligant.txt
cat newpages.txt | egrep -i 'Lillipup' >> Lillipup.txt
cat newpages.txt | egrep -i 'Linoone' >> Linoone.txt
cat newpages.txt | egrep -i 'Litwick' >> Litwick.txt
cat newpages.txt | egrep -i 'Lombre' >> Lombre.txt
cat newpages.txt | egrep -i 'Lopunny' >> Lopunny.txt
cat newpages.txt | egrep -i 'Lotad' >> Lotad.txt
cat newpages.txt | egrep -i 'Loudred' >> Loudred.txt
cat newpages.txt | egrep -i 'Lucario' >> Lucario.txt
cat newpages.txt | egrep -i 'Ludicolo' >> Ludicolo.txt
cat newpages.txt | egrep -i 'Lugia' >> Lugia.txt
cat newpages.txt | egrep -i 'Lumineon' >> Lumineon.txt
cat newpages.txt | egrep -i 'Lunatone' >> Lunatone.txt
cat newpages.txt | egrep -i 'Luvdisc' >> Luvdisc.txt
cat newpages.txt | egrep -i 'Luxio' >> Luxio.txt
cat newpages.txt | egrep -i 'Luxray' >> Luxray.txt

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
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLairon.sh
fi

if [ $Lampent -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLampent.sh
fi

if [ $Landorus -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLandorus.sh
fi

if [ $Lanturn -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLanturn.sh
fi

if [ $Lapras -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLapras.sh
fi

if [ $Larvesta -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLarvesta.sh
fi

if [ $Larvitar -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLarvitar.sh
fi

if [ $Latias -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLatias.sh
fi

if [ $Latios -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLatios.sh
fi

if [ $Leafeon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLeafeon.sh
fi

if [ $Leavanny -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLeavanny.sh
fi

if [ $Ledian -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLedian.sh
fi

if [ $Ledyba -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLedyba.sh
fi

if [ $Lickilicky -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLickilicky.sh
fi

if [ $Lickitung -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLickitung.sh
fi

if [ $Liepard -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLiepard.sh
fi

if [ $Lileep -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLileep.sh
fi

if [ $Lilligant -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLilligant.sh
fi

if [ $Lillipup -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLillipup.sh
fi

if [ $Linoone -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLinoone.sh
fi

if [ $Litwick -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLitwick.sh
fi

if [ $Lombre -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLombre.sh
fi

if [ $Lopunny -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLopunny.sh
fi

if [ $Lotad -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLotad.sh
fi

if [ $Loudred -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLoudred.sh
fi

if [ $Lucario -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLucario.sh
fi

if [ $Ludicolo -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLudicolo.sh
fi

if [ $Lugia -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLugia.sh
fi

if [ $Lumineon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLumineon.sh
fi

if [ $Lunatone -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLunatone.sh
fi

if [ $Luvdisc -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLuvdisc.sh
fi

if [ $Luxio -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLuxio.sh
fi

if [ $Luxray -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/L/catLuxray.sh
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
