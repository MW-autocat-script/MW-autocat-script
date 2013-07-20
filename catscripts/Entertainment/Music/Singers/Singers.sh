#!/bin/bash

KEYWORDS_SINGERS_AKON="\bAkon"
KEYWORDS_SINGERS_JUSTINBIEBER="Justin(| )(Beiber|Bieber)"
KEYWORDS_SINGERS_JOHNNYCASH="Johnny(| )Cash"
KEYWORDS_SINGERS_MILEYCYRUS="Miley(| )Cyrus|Destiny(| )Hope(| )Cyrus"
KEYWORDS_SINGERS_VANESSAHUDGENS="Vanessa(| )Hudgens"
KEYWORDS_SINGERS_WHITNEYHOUSTON="Whitney(| )Houston"
KEYWORDS_SINGERS_MICHAELJACKSON="(Michael|Micheal)(| )Jackson"
KEYWORDS_SINGERS_JOEJONAS="Joe(|seph)(| )Jonas"
KEYWORDS_SINGERS_NICKJONAS="Nic(k|holas).+Jonas"
KEYWORDS_SINGERS_BEYONCE="Beyoncé|Beyonce"
KEYWORDS_SINGERS_ELTONJOHN="Elton(| )John"
KEYWORDS_SINGERS_DEMILOVATO="(Demi|Demetria).+Lovato"
KEYWORDS_SINGERS_JOHNLENNON="John(| )Lennon"
KEYWORDS_SINGERS_LADYGAGA="Lady(| )Gaga"
KEYWORDS_SINGERS_MADONNA="Madonna"
KEYWORDS_SINGERS_MADONNA_EXCLUDE="Lady(| )Madonna|Madonna(| )and(| )Child"
KEYWORDS_SINGERS_BOBMARLEY="Bob(| )Marley"
KEYWORDS_SINGERS_ELVISPRESLEY="Elvis(| )Presley"
KEYWORDS_SINGERS_JOSHRAMSAY="Josh(| )Ramsay"
KEYWORDS_SINGERS_RIHANNA="Rihanna"
KEYWORDS_SINGERS_BRITNEYSPEARS="Britney(| )Spears"
KEYWORDS_SINGERS_TAYLORSWIFT="Taylor(| )Swift"
KEYWORDS_SINGERS_TUPACSHAKUR="Tupac|2pac|Shakur"
KEYWORDS_SINGERS_ASHLEYTSIDALE="Ashley(| )Tisdale"
KEYWORDS_SINGERS_LILWAYNE="Lil(| )Wayne"
KEYWORDS_SINGERS_EMINEM="Eminem|Slim(| )Shady|Marshall(|(| )Bruce)(| )Mathers|EMINƎM"
KEYWORDS_SINGERS="Singer"
KEYWORDS_SINGERS_EXCLUDE="sewing(| )machine|$KEYWORDS_SINGERS_AKON|$KEYWORDS_SINGERS_ASHLEYTSIDALE|$KEYWORDS_SINGERS_BEYONCE|$KEYWORDS_SINGERS_BOBMARLEY|$KEYWORDS_SINGERS_BRITNEYSPEARS|$KEYWORDS_SINGERS_DEMILOVATO|$KEYWORDS_SINGERS_ELTONJOHN|$KEYWORDS_SINGERS_ELVISPRESLEY|$KEYWORDS_SINGERS_EMINEM|$KEYWORDS_SINGERS_JOEJONAS|$KEYWORDS_SINGERS_JOHNLENNON|$KEYWORDS_SINGERS_JOHNNYCASH|$KEYWORDS_SINGERS_JOSHRAMSAY|$KEYWORDS_SINGERS_JUSTINBIEBER|$KEYWORDS_SINGERS_LADYGAGA|$KEYWORDS_SINGERS_LILWAYNE|$KEYWORDS_SINGERS_MADONNA|$KEYWORDS_SINGERS_MICHAELJACKSON|$KEYWORDS_SINGERS_MILEYCYRUS|$KEYWORDS_SINGERS_NICKJONAS|$KEYWORDS_SINGERS_RIHANNA|$KEYWORDS_SINGERS_TAYLORSWIFT|$KEYWORDS_SINGERS_TUPACSHAKUR|$KEYWORDS_SINGERS_VANESSAHUDGENS|$KEYWORDS_SINGERS_WHITNEYHOUSTON"

egrep -i "$KEYWORDS_SINGERS_AKON" newpages.txt >> Akon.txt
egrep -i "$KEYWORDS_SINGERS_JUSTINBIEBER" newpages.txt >> JustinBieber.txt
egrep -i "$KEYWORDS_SINGERS_JOHNNYCASH" newpages.txt >> JohnnyCash.txt
egrep -i "$KEYWORDS_SINGERS_MILEYCYRUS" newpages.txt >> MileyCyrus.txt
egrep -i "$KEYWORDS_SINGERS_VANESSAHUDGENS" newpages.txt >> VanessaHudgens.txt
egrep -i "$KEYWORDS_SINGERS_WHITNEYHOUSTON" newpages.txt >> WhitneyHouston.txt
egrep -i "$KEYWORDS_SINGERS_MICHAELJACKSON" newpages.txt >> MichaelJackson.txt
egrep -i "$KEYWORDS_SINGERS_JOEJONAS" newpages.txt >> JoeJonas.txt
egrep -i "$KEYWORDS_SINGERS_NICKJONAS" newpages.txt >> NickJonas.txt
egrep -i "$KEYWORDS_SINGERS_BEYONCE" newpages.txt >> BeyoncéKnowles.txt
egrep -i "$KEYWORDS_SINGERS_DEMILOVATO" newpages.txt >> DemiLovato.txt
egrep -i "$KEYWORDS_SINGERS_JOHNLENNON" newpages.txt >> JohnLennon.txt
egrep -i "$KEYWORDS_SINGERS_LADYGAGA" newpages.txt >> LadyGaga.txt
egrep -i "$KEYWORDS_SINGERS_MADONNA" newpages.txt| egrep -iv "$KEYWORDS_SINGERS_MADONNA_EXCLUDE" >> Madonna.txt
egrep -i "$KEYWORDS_SINGERS_BOBMARLEY" newpages.txt >> BobMarley.txt
egrep -i "$KEYWORDS_SINGERS_ELTONJOHN" newpages.txt >> EltonJohn.txt
egrep -i "$KEYWORDS_SINGERS_ELVISPRESLEY" newpages.txt >> ElvisPresley.txt
egrep -i "$KEYWORDS_SINGERS_JOSHRAMSAY" newpages.txt >> JoshRamsay.txt
egrep -i "$KEYWORDS_SINGERS_RIHANNA" newpages.txt >> Rihanna.txt
egrep -i "$KEYWORDS_SINGERS_BRITNEYSPEARS" newpages.txt >> BritneySpears.txt
egrep -i "$KEYWORDS_SINGERS_TAYLORSWIFT" newpages.txt >> TaylorSwift.txt
egrep -i "$KEYWORDS_SINGERS_TUPACSHAKUR" newpages.txt >> TupacShakur.txt
egrep -i "$KEYWORDS_SINGERS_ASHLEYTSIDALE" newpages.txt >> AshleyTisdale.txt
egrep -i "$KEYWORDS_SINGERS_LILWAYNE" newpages.txt >> LilWayne.txt
egrep -i "$KEYWORDS_SINGERS_EMINEM" newpages.txt >> Eminem.txt
egrep -i "$KEYWORDS_SINGERS" newpages.txt | egrep -iv "$KEYWORDS_SINGERS_EXCLUDE" >> Singers.txt

SINGERS=`stat --print=%s Singers.txt`
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
ELTONJOHN=`stat --print=%s EltonJohn.txt`
ELVIS=`stat --print=%s ElvisPresley.txt`
RAMSAY=`stat --print=%s JoshRamsay.txt`
RIHANNA=`stat --print=%s Rihanna.txt`
BSPEARS=`stat --print=%s BritneySpears.txt`
SWIFT=`stat --print=%s TaylorSwift.txt`
TUPAC=`stat --print=%s TupacShakur.txt`
TISDALE=`stat --print=%s AshleyTisdale.txt`
LILWAYNE=`stat --print=%s LilWayne.txt`
EMINEM=`stat --print=%s Eminem.txt`

if [ $SINGERS -ne 0 ];
then
  export CATFILE="Singers.txt"
  export CATNAME="Singers"
  $CATEGORIZE
fi

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

if [ $ELTONJOHN -ne 0 ];
then
  export CATFILE="EltonJohn.txt"
  export CATNAME="Elton John"
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
  export CATNAME="Tupac Shakur"
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

if [ $EMINEM -ne 0 ];
then
  export CATFILE="Eminem.txt"
  export CATNAME="Eminem"
  $CATEGORIZE
fi

rm Singers.txt
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
rm EltonJohn.txt
rm ElvisPresley.txt
rm JoshRamsay.txt
rm Rihanna.txt
rm BritneySpears.txt
rm TaylorSwift.txt
rm TupacShakur.txt
rm AshleyTisdale.txt
rm LilWayne.txt
rm Eminem.txt