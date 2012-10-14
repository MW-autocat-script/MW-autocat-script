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
  export CATFILE="Wailmer.txt"
  export CATNAME="Wailmer"
  ./catscripts/Categorize.sh
fi

if [ $Wailord -ne 0 ];
then
  export CATFILE="Wailord.txt"
  export CATNAME="Wailord"
  ./catscripts/Categorize.sh
fi

if [ $Walrein -ne 0 ];
then
  export CATFILE="Walrein.txt"
  export CATNAME="Walrein"
  ./catscripts/Categorize.sh
fi

if [ $Wartortle -ne 0 ];
then
  export CATFILE="Wartortle.txt"
  export CATNAME="Wartortle"
  ./catscripts/Categorize.sh
fi

if [ $Watchog -ne 0 ];
then
  export CATFILE="Watchog.txt"
  export CATNAME="Watchog"
  ./catscripts/Categorize.sh
fi

if [ $Weavile -ne 0 ];
then
  export CATFILE="Weavile.txt"
  export CATNAME="Weavile"
  ./catscripts/Categorize.sh
fi

if [ $Weedle -ne 0 ];
then
  export CATFILE="Weedle.txt"
  export CATNAME="Weedle"
  ./catscripts/Categorize.sh
fi

if [ $Weepinbell -ne 0 ];
then
  export CATFILE="Weepinbell.txt"
  export CATNAME="Weepinbell"
  ./catscripts/Categorize.sh
fi

if [ $Weezing -ne 0 ];
then
  export CATFILE="Weezing.txt"
  export CATNAME="Weezing"
  ./catscripts/Categorize.sh
fi

if [ $Whimsicott -ne 0 ];
then
  export CATFILE="Whimsicott.txt"
  export CATNAME="Whimsicott"
  ./catscripts/Categorize.sh
fi

if [ $Whirlipede -ne 0 ];
then
  export CATFILE="Whirlipede.txt"
  export CATNAME="Whirlipede"
  ./catscripts/Categorize.sh
fi

if [ $Whiscash -ne 0 ];
then
  export CATFILE="Whiscash.txt"
  export CATNAME="Whiscash"
  ./catscripts/Categorize.sh
fi

if [ $Whismur -ne 0 ];
then
  export CATFILE="Whismur.txt"
  export CATNAME="Whismur"
  ./catscripts/Categorize.sh
fi

if [ $Wigglytuff -ne 0 ];
then
  export CATFILE="Wigglytuff.txt"
  export CATNAME="Wigglytuff"
  ./catscripts/Categorize.sh
fi

if [ $Wingull -ne 0 ];
then
  export CATFILE="Wingull.txt"
  export CATNAME="Wingull"
  ./catscripts/Categorize.sh
fi

if [ $Wobbuffet -ne 0 ];
then
  export CATFILE="Wobbuffet.txt"
  export CATNAME="Wobbuffet"
  ./catscripts/Categorize.sh
fi

if [ $Woobat -ne 0 ];
then
  export CATFILE="Woobat.txt"
  export CATNAME="Woobat"
  ./catscripts/Categorize.sh
fi

if [ $Wooper -ne 0 ];
then
  export CATFILE="Wooper.txt"
  export CATNAME="Wooper"
  ./catscripts/Categorize.sh
fi

if [ $Wormadam -ne 0 ];
then
  export CATFILE="Wormadam.txt"
  export CATNAME="Wormadam"
  ./catscripts/Categorize.sh
fi

if [ $Wurmple -ne 0 ];
then
  export CATFILE="Wurmple.txt"
  export CATNAME="Wurmple"
  ./catscripts/Categorize.sh
fi

if [ $Wynaut -ne 0 ];
then
  export CATFILE="Wynaut.txt"
  export CATNAME="Wynaut"
  ./catscripts/Categorize.sh
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