#!/bin/bash
cat newpages.txt | egrep -i 'Wailmer' >> Wailmer.txt
cat newpages.txt | egrep -i 'Wailord' >> Wailord.txt
cat newpages.txt | egrep -i 'Walrein' >> Walrein.txt
cat newpages.txt | egrep -i 'Wartortle' >> Wartortle.txt
cat newpages.txt | egrep -i 'Watchog' >> Watchog.txt
cat newpages.txt | egrep -i 'Weavile' >> Weavile.txt
cat newpages.txt | egrep -i 'Weedle' >> Weedle.txt
cat newpages.txt | egrep -i 'Weepinbell' >> Weepinbell.txt
cat newpages.txt | egrep -i 'Weezing' >> Weezing.txt
cat newpages.txt | egrep -i 'Whimsicott' >> Whimsicott.txt
cat newpages.txt | egrep -i 'Whirlipede' >> Whirlipede.txt
cat newpages.txt | egrep -i 'Whiscash' >> Whiscash.txt
cat newpages.txt | egrep -i 'Whismur' >> Whismur.txt
cat newpages.txt | egrep -i 'Wigglytuff' >> Wigglytuff.txt
cat newpages.txt | egrep -i 'Wingull' >> Wingull.txt
cat newpages.txt | egrep -i 'Wobbuffet' >> Wobbuffet.txt
cat newpages.txt | egrep -i 'Woobat' >> Woobat.txt
cat newpages.txt | egrep -i 'Wooper' >> Wooper.txt
cat newpages.txt | egrep -i 'Wormadam' >> Wormadam.txt
cat newpages.txt | egrep -i 'Wurmple' >> Wurmple.txt
cat newpages.txt | egrep -i 'Wynaut' >> Wynaut.txt

Wailmer=`stat --print=%s Wailmer.txt`
Wailord=`stat --print=%s Wailord.txt`
Walrein=`stat --print=%s Walrein.txt`
Wartortle=`stat --print=%s Wartortle.txt`
Watchog=`stat --print=%s Watchog.txt`
Weavile=`stat --print=%s Weavile.txt`
Weedle=`stat --print=%s Weedle.txt`
Weepinbell=`stat --print=%s Weepinbell.txt`
Weezing=`stat --print=%s Weezing.txt`
Whimsicott=`stat --print=%s Whimsicott.txt`
Whirlipede=`stat --print=%s Whirlipede.txt`
Whiscash=`stat --print=%s Whiscash.txt`
Whismur=`stat --print=%s Whismur.txt`
Wigglytuff=`stat --print=%s Wigglytuff.txt`
Wingull=`stat --print=%s Wingull.txt`
Wobbuffet=`stat --print=%s Wobbuffet.txt`
Woobat=`stat --print=%s Woobat.txt`
Wooper=`stat --print=%s Wooper.txt`
Wormadam=`stat --print=%s Wormadam.txt`
Wurmple=`stat --print=%s Wurmple.txt`
Wynaut=`stat --print=%s Wynaut.txt`

if [ $Wailmer -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWailmer.sh
fi

if [ $Wailord -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWailord.sh
fi

if [ $Walrein -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWalrein.sh
fi

if [ $Wartortle -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWartortle.sh
fi

if [ $Watchog -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWatchog.sh
fi

if [ $Weavile -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWeavile.sh
fi

if [ $Weedle -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWeedle.sh
fi

if [ $Weepinbell -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWeepinbell.sh
fi

if [ $Weezing -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWeezing.sh
fi

if [ $Whimsicott -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWhimsicott.sh
fi

if [ $Whirlipede -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWhirlipede.sh
fi

if [ $Whiscash -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWhiscash.sh
fi

if [ $Whismur -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWhismur.sh
fi

if [ $Wigglytuff -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWigglytuff.sh
fi

if [ $Wingull -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWingull.sh
fi

if [ $Wobbuffet -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWobbuffet.sh
fi

if [ $Woobat -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWoobat.sh
fi

if [ $Wooper -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWooper.sh
fi

if [ $Wormadam -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWormadam.sh
fi

if [ $Wurmple -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWurmple.sh
fi

if [ $Wynaut -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/W/catWynaut.sh
fi


rm Wailmer.txt
rm Wailord.txt
rm Walrein.txt
rm Wartortle.txt
rm Watchog.txt
rm Weavile.txt
rm Weedle.txt
rm Weepinbell.txt
rm Weezing.txt
rm Whimsicott.txt
rm Whirlipede.txt
rm Whiscash.txt
rm Whismur.txt
rm Wigglytuff.txt
rm Wingull.txt
rm Wobbuffet.txt
rm Woobat.txt
rm Wooper.txt
rm Wormadam.txt
rm Wurmple.txt
rm Wynaut.txt
