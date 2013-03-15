#!/bin/bash
egrep -i 'Wailmer' newpages.txt >> Wailmer.txt
egrep -i 'Wailord' newpages.txt >> Wailord.txt
egrep -i 'Walrein' newpages.txt >> Walrein.txt
egrep -i 'Wartortle' newpages.txt >> Wartortle.txt
egrep -i 'Watchog' newpages.txt >> Watchog.txt
egrep -i 'Weavile' newpages.txt >> Weavile.txt
egrep -i 'Weedle' newpages.txt >> Weedle.txt
egrep -i 'Weepinbell' newpages.txt >> Weepinbell.txt
egrep -i 'Weezing' newpages.txt >> Weezing.txt
egrep -i 'Whimsicott' newpages.txt >> Whimsicott.txt
egrep -i 'Whirlipede' newpages.txt >> Whirlipede.txt
egrep -i 'Whiscash' newpages.txt >> Whiscash.txt
egrep -i 'Whismur' newpages.txt >> Whismur.txt
egrep -i 'Wigglytuff' newpages.txt >> Wigglytuff.txt
egrep -i 'Wingull' newpages.txt >> Wingull.txt
egrep -i 'Wobbuffet' newpages.txt >> Wobbuffet.txt
egrep -i 'Woobat' newpages.txt >> Woobat.txt
egrep -i 'Wooper' newpages.txt >> Wooper.txt
egrep -i 'Wormadam' newpages.txt >> Wormadam.txt
egrep -i 'Wurmple' newpages.txt >> Wurmple.txt
egrep -i 'Wynaut' newpages.txt >> Wynaut.txt

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
  $CATEGORIZE
fi

if [ $Wailord -ne 0 ];
then
  export CATFILE="Wailord.txt"
  export CATNAME="Wailord"
  $CATEGORIZE
fi

if [ $Walrein -ne 0 ];
then
  export CATFILE="Walrein.txt"
  export CATNAME="Walrein"
  $CATEGORIZE
fi

if [ $Wartortle -ne 0 ];
then
  export CATFILE="Wartortle.txt"
  export CATNAME="Wartortle"
  $CATEGORIZE
fi

if [ $Watchog -ne 0 ];
then
  export CATFILE="Watchog.txt"
  export CATNAME="Watchog"
  $CATEGORIZE
fi

if [ $Weavile -ne 0 ];
then
  export CATFILE="Weavile.txt"
  export CATNAME="Weavile"
  $CATEGORIZE
fi

if [ $Weedle -ne 0 ];
then
  export CATFILE="Weedle.txt"
  export CATNAME="Weedle"
  $CATEGORIZE
fi

if [ $Weepinbell -ne 0 ];
then
  export CATFILE="Weepinbell.txt"
  export CATNAME="Weepinbell"
  $CATEGORIZE
fi

if [ $Weezing -ne 0 ];
then
  export CATFILE="Weezing.txt"
  export CATNAME="Weezing"
  $CATEGORIZE
fi

if [ $Whimsicott -ne 0 ];
then
  export CATFILE="Whimsicott.txt"
  export CATNAME="Whimsicott"
  $CATEGORIZE
fi

if [ $Whirlipede -ne 0 ];
then
  export CATFILE="Whirlipede.txt"
  export CATNAME="Whirlipede"
  $CATEGORIZE
fi

if [ $Whiscash -ne 0 ];
then
  export CATFILE="Whiscash.txt"
  export CATNAME="Whiscash"
  $CATEGORIZE
fi

if [ $Whismur -ne 0 ];
then
  export CATFILE="Whismur.txt"
  export CATNAME="Whismur"
  $CATEGORIZE
fi

if [ $Wigglytuff -ne 0 ];
then
  export CATFILE="Wigglytuff.txt"
  export CATNAME="Wigglytuff"
  $CATEGORIZE
fi

if [ $Wingull -ne 0 ];
then
  export CATFILE="Wingull.txt"
  export CATNAME="Wingull"
  $CATEGORIZE
fi

if [ $Wobbuffet -ne 0 ];
then
  export CATFILE="Wobbuffet.txt"
  export CATNAME="Wobbuffet"
  $CATEGORIZE
fi

if [ $Woobat -ne 0 ];
then
  export CATFILE="Woobat.txt"
  export CATNAME="Woobat"
  $CATEGORIZE
fi

if [ $Wooper -ne 0 ];
then
  export CATFILE="Wooper.txt"
  export CATNAME="Wooper"
  $CATEGORIZE
fi

if [ $Wormadam -ne 0 ];
then
  export CATFILE="Wormadam.txt"
  export CATNAME="Wormadam"
  $CATEGORIZE
fi

if [ $Wurmple -ne 0 ];
then
  export CATFILE="Wurmple.txt"
  export CATNAME="Wurmple"
  $CATEGORIZE
fi

if [ $Wynaut -ne 0 ];
then
  export CATFILE="Wynaut.txt"
  export CATNAME="Wynaut"
  $CATEGORIZE
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