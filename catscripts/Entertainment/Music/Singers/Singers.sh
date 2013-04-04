#!/bin/bash

egrep -i '\bAkon' newpages.txt >> Akon.txt
egrep -i 'Justin Bieber|Justin Beiber' newpages.txt >> JustinBieber.txt
egrep -i 'Johnny Cash' newpages.txt >> JohnnyCash.txt
egrep -i 'Miley Cyrus|Destiny Hope Cyrus' newpages.txt >> MileyCyrus.txt
egrep -i 'Vanessa Hudgens' newpages.txt >> VanessaHudgens.txt
egrep -i 'Whitney Houston' newpages.txt >> WhitneyHouston.txt
egrep -i '(Michael|Micheal) Jackson' newpages.txt >> MichaelJackson.txt
egrep -i 'Joe(|seph).+Jonas' newpages.txt >> JoeJonas.txt
egrep -i '(Nick|Nicholas).+ Jonas' newpages.txt >> NickJonas.txt
egrep -i 'Beyoncé|Beyonce' newpages.txt >> BeyoncéKnowles.txt
egrep -i '(Demi|Demetria).+Lovato' newpages.txt >> DemiLovato.txt
egrep -i 'John Lennon' newpages.txt >> JohnLennon.txt
egrep -i 'Lady Gaga' newpages.txt >> LadyGaga.txt
egrep -i '\bMadonna' newpages.txt| egrep -iv 'Lady Madonna' >> Madonna.txt
egrep -i 'Bob Marley' newpages.txt >> BobMarley.txt
egrep -i 'Elvis Presley' newpages.txt >> ElvisPresley.txt
egrep -i 'Josh Ramsay' newpages.txt >> JoshRamsay.txt
egrep -i 'Rihanna' newpages.txt >> Rihanna.txt
egrep -i 'Britney Spears' newpages.txt >> BritneySpears.txt
egrep -i 'Taylor Swift' newpages.txt >> TaylorSwift.txt
egrep -i 'Tupac|2pac|Shakur' newpages.txt >> TupacShakur.txt
egrep -i 'Ashley Tisdale' newpages.txt >> AshleyTisdale.txt
egrep -i 'Lil(| )Wayne' newpages.txt >> LilWayne.txt

AKON=`stat --print=%s Akon.txt`
BIEBER=`stat --print=%s JustinBieber.txt`
JCASH=`stat --print=%s JohnnyCash.txt`
MCYRUS=`stat --print=%s MileyCyrus.txt`
HUDGENS=`stat --print=%s VanessaHudgens.txt`
WHOUSTON=`stat --print=%s WhitneyHouston.txt`
MJACKSON=`stat --print=%s MichaelJackson.txt`
JJONAS=`stat --print=%s JoeJonas.txt`
NJONAS=`stat --print=%s NickJonas.txt`
KNOWLES=`stat --print=%s BeyoncéKnowles.txt`
LOVATO=`stat --print=%s DemiLovato.txt`
LENNON=`stat --print=%s JohnLennon.txt`
GAGA=`stat --print=%s LadyGaga.txt`
MARLEY=`stat --print=%s BobMarley.txt`
MADONNA=`stat --print=%s Madonna.txt`
ELVIS=`stat --print=%s ElvisPresley.txt`
RAMSAY=`stat --print=%s JoshRamsay.txt`
RIHANNA=`stat --print=%s Rihanna.txt`
BSPEARS=`stat --print=%s BritneySpears.txt`
SWIFT=`stat --print=%s TaylorSwift.txt`
TUPAC=`stat --print=%s TupacShakur.txt`
TISDALE=`stat --print=%s AshleyTisdale.txt`
LILWAYNE=`stat --print=%s LilWayne.txt`

if [ $AKON -ne 0 ];
then
  export CATFILE="Akon.txt"
  export CATNAME="Akon"
  $CATEGORIZE
fi

if [ $BIEBER -ne 0 ];
then
  export CATFILE="JustinBieber.txt"
  export CATNAME="Justin Bieber"
  $CATEGORIZE
fi

if [ $JCASH -ne 0 ];
then
  export CATFILE="JohnnyCash.txt"
  export CATNAME="Johnny Cash"
  $CATEGORIZE
fi

if [ $MCYRUS -ne 0 ];
then
  export CATFILE="MileyCyrus.txt"
  export CATNAME="Miley Cyrus"
  $CATEGORIZE
fi

if [ $HUDGENS -ne 0 ];
then
  export CATFILE="VanessaHudgens.txt"
  export CATNAME="Vanessa Hudgens"
  $CATEGORIZE
fi

if [ $WHOUSTON -ne 0 ];
then
  export CATFILE="WhitneyHouston.txt"
  export CATNAME="Whitney Houston"
  $CATEGORIZE
fi

if [ $MJACKSON -ne 0 ];
then
  export CATFILE="MichaelJackson.txt"
  export CATNAME="Michael Jackson"
  $CATEGORIZE
fi

if [ $JJONAS -ne 0 ];
then
  export CATFILE="JoeJonas.txt"
  export CATNAME="Joe Jonas"
  $CATEGORIZE
fi

if [ $NJONAS -ne 0 ];
then
  export CATFILE="NickJonas.txt"
  export CATNAME="Nick Jonas"
  $CATEGORIZE
fi

if [ $KNOWLES -ne 0 ];
then
  export CATFILE="BeyoncéKnowles.txt"
  export CATNAME="Beyoncé Knowles"
  $CATEGORIZE
fi

if [ $LOVATO -ne 0 ];
then
  export CATFILE="DemiLovato.txt"
  export CATNAME="Demi Lovato"
  $CATEGORIZE
fi

if [ $LENNON -ne 0 ];
then
  export CATFILE="JohnLennon.txt"
  export CATNAME="John Lennon"
  $CATEGORIZE
fi

if [ $GAGA -ne 0 ];
then
  export CATFILE="LadyGaga.txt"
  export CATNAME="Lady Gaga"
  $CATEGORIZE
fi

if [ $MADONNA -ne 0 ];
then
  export CATFILE="Madonna.txt"
  export CATNAME="Madonna"
  $CATEGORIZE
fi

if [ $MARLEY -ne 0 ];
then
  export CATFILE="BobMarley.txt"
  export CATNAME="Bob Marley"
  $CATEGORIZE
fi

if [ $ELVIS -ne 0 ];
then
  export CATFILE="ElvisPresley.txt"
  export CATNAME="Elvis Presley"
  $CATEGORIZE
fi

if [ $RAMSAY -ne 0 ];
then
  export CATFILE="JoshRamsay.txt"
  export CATNAME="Josh Ramsay"
  $CATEGORIZE
fi

if [ $RIHANNA -ne 0 ];
then
  export CATFILE="Rihanna.txt"
  export CATNAME="Rihanna"
  $CATEGORIZE
fi

if [ $BSPEARS -ne 0 ];
then
  export CATFILE="BritneySpears.txt"
  export CATNAME="Britney Spears"
  $CATEGORIZE
fi

if [ $SWIFT -ne 0 ];
then
  export CATFILE="TaylorSwift.txt"
  export CATNAME="Taylor Swift"
  $CATEGORIZE
fi

if [ $TUPAC -ne 0 ];
then
  export CATFILE="TupacShakur.txt"
  export CATFILE="Tupac Shakur"
  $CATEGORIZE
fi

if [ $TISDALE -ne 0 ];
then
  export CATFILE="AshleyTisdale.txt"
  export CATNAME="Ashley Tisdale"
  $CATEGORIZE
fi

if [ $LILWAYNE -ne 0 ];
then
  export CATFILE="LilWayne.txt"
  export CATNAME="Lil Wayne"
  $CATEGORIZE
fi

rm Akon.txt
rm JustinBieber.txt
rm JohnnyCash.txt
rm MileyCyrus.txt
rm VanessaHudgens.txt
rm WhitneyHouston.txt
rm MichaelJackson.txt
rm JoeJonas.txt
rm NickJonas.txt
rm BeyoncéKnowles.txt
rm DemiLovato.txt
rm JohnLennon.txt
rm LadyGaga.txt
rm Madonna.txt
rm BobMarley.txt
rm ElvisPresley.txt
rm JoshRamsay.txt
rm Rihanna.txt
rm BritneySpears.txt
rm TaylorSwift.txt
rm TupacShakur.txt
rm AshleyTisdale.txt
rm LilWayne.txt