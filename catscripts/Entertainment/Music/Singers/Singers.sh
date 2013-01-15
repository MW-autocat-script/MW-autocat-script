#!/bin/bash

cat newpages.txt | egrep -i '\bAkon' >> Akon.txt
cat newpages.txt | egrep -i 'Justin Bieber|Justin Beiber' >> JustinBieber.txt
cat newpages.txt | egrep -i 'Johnny Cash' >> JohnnyCash.txt
cat newpages.txt | egrep -i 'Miley Cyrus|Destiny Hope Cyrus' >> MileyCyrus.txt
cat newpages.txt | egrep -i 'Vanessa Hudgens' >> VanessaHudgens.txt
cat newpages.txt | egrep -i 'Whitney Houston' >> WhitneyHouston.txt
cat newpages.txt | egrep -i '(Michael|Micheal) Jackson' >> MichaelJackson.txt
cat newpages.txt | egrep -i 'Joe(|seph).+Jonas' >> JoeJonas.txt
cat newpages.txt | egrep -i '(Nick|Nicholas).+ Jonas' >> NickJonas.txt
cat newpages.txt | egrep -i 'Beyoncé|Beyonce' >> BeyoncéKnowles.txt
cat newpages.txt | egrep -i '(Demi|Demetria).+Lovato' >> DemiLovato.txt
cat newpages.txt | egrep -i 'John Lennon' >> JohnLennon.txt
cat newpages.txt | egrep -i 'Lady Gaga' >> LadyGaga.txt
cat newpages.txt | egrep -i '\bMadonna' | egrep -iv 'Lady Madonna' >> Madonna.txt
cat newpages.txt | egrep -i 'Bob Marley' >> BobMarley.txt
cat newpages.txt | egrep -i 'Elvis Presley' >> ElvisPresley.txt
cat newpages.txt | egrep -i 'Josh Ramsay' >> JoshRamsay.txt
cat newpages.txt | egrep -i 'Rihanna' >> Rihanna.txt
cat newpages.txt | egrep -i 'Britney Spears' >> BritneySpears.txt
cat newpages.txt | egrep -i 'Taylor Swift' >> TaylorSwift.txt
cat newpages.txt | egrep -i 'Tupac|2pac|Shakur' >> TupacShakur.txt
cat newpages.txt | egrep -i 'Ashley Tisdale' >> AshleyTisdale.txt

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

if [ $AKON -ne 0 ];
then
  export CATFILE="Akon.txt"
  export CATNAME="Akon"
  ./catscripts/Categorize.sh
fi

if [ $BIEBER -ne 0 ];
then
  export CATFILE="JustinBieber.txt"
  export CATNAME="Justin Bieber"
  ./catscripts/Categorize.sh
fi

if [ $JCASH -ne 0 ];
then
  export CATFILE="JohnnyCash.txt"
  export CATNAME="Johnny Cash"
  ./catscripts/Categorize.sh
fi

if [ $MCYRUS -ne 0 ];
then
  export CATFILE="MileyCyrus.txt"
  export CATNAME="Miley Cyrus"
  ./catscripts/Categorize.sh
fi

if [ $HUDGENS -ne 0 ];
then
  export CATFILE="VanessaHudgens.txt"
  export CATNAME="Vanessa Hudgens"
  ./catscripts/Categorize.sh
fi

if [ $WHOUSTON -ne 0 ];
then
  export CATFILE="WhitneyHouston.txt"
  export CATNAME="Whitney Houston"
  ./catscripts/Categorize.sh
fi

if [ $MJACKSON -ne 0 ];
then
  export CATFILE="MichaelJackson.txt"
  export CATNAME="Michael Jackson"
  ./catscripts/Categorize.sh
fi

if [ $JJONAS -ne 0 ];
then
  export CATFILE="JoeJonas.txt"
  export CATNAME="Joe Jonas"
  ./catscripts/Categorize.sh
fi

if [ $NJONAS -ne 0 ];
then
  export CATFILE="NickJonas.txt"
  export CATNAME="Nick Jonas"
  ./catscripts/Categorize.sh
fi

if [ $KNOWLES -ne 0 ];
then
  export CATFILE="BeyoncéKnowles.txt"
  export CATNAME="Beyoncé Knowles"
  ./catscripts/Categorize.sh
fi

if [ $LOVATO -ne 0 ];
then
  export CATFILE="DemiLovato.txt"
  export CATNAME="Demi Lovato"
  ./catscripts/Categorize.sh
fi

if [ $LENNON -ne 0 ];
then
  export CATFILE="JohnLennon.txt"
  export CATNAME="John Lennon"
  ./catscripts/Categorize.sh
fi

if [ $GAGA -ne 0 ];
then
  export CATFILE="LadyGaga.txt"
  export CATNAME="Lady Gaga"
  ./catscripts/Categorize.sh
fi

if [ $MADONNA -ne 0 ];
then
  export CATFILE="Madonna.txt"
  export CATNAME="Madonna"
  ./catscripts/Categorize.sh
fi

if [ $MARLEY -ne 0 ];
then
  export CATFILE="BobMarley.txt"
  export CATNAME="Bob Marley"
  ./catscripts/Categorize.sh
fi

if [ $ELVIS -ne 0 ];
then
  export CATFILE="ElvisPresley.txt"
  export CATNAME="Elvis Presley"
  ./catscripts/Categorize.sh
fi

if [ $RAMSAY -ne 0 ];
then
  export CATFILE="JoshRamsay.txt"
  export CATNAME="Josh Ramsay"
  ./catscripts/Categorize.sh
fi

if [ $RIHANNA -ne 0 ];
then
  export CATFILE="Rihanna.txt"
  export CATNAME="Rihanna"
  ./catscripts/Categorize.sh
fi

if [ $BSPEARS -ne 0 ];
then
  export CATFILE="BritneySpears.txt"
  export CATNAME="Britney Spears"
  ./catscripts/Categorize.sh
fi

if [ $SWIFT -ne 0 ];
then
  export CATFILE="TaylorSwift.txt"
  export CATNAME="Taylor Swift"
  ./catscripts/Categorize.sh
fi

if [ $TUPAC -ne 0 ];
then
  export CATFILE="TupacShakur.txt"
  export CATFILE="Tupac Shakur"
  ./catscripts/Categorize.sh
fi

if [ $TISDALE -ne 0 ];
then
  export CATFILE="AshleyTisdale.txt"
  export CATNAME="Ashley Tisdale"
  ./catscripts/Categorize.sh
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