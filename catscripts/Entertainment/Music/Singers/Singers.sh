#!/bin/bash

KEYWORDS_SINGERS_AKON="\bAkon"
KEYWORDS_SINGERS_JUSTINBIEBER="Justin(| )(Beiber|Bieber)"
KEYWORDS_SINGERS_JOHNNYCASH="Johnny(| )Cash"
KEYWORDS_SINGERS_RAYCHARLES="Ray(| )Charles"
KEYWORDS_SINGERS_CHERYLCOLE="Cheryl(| )Cole"
KEYWORDS_SINGERS_MILEYCYRUS="Miley(| )Cyrus|Destiny(| )Hope(| )Cyrus"
KEYWORDS_SINGERS_BOBDYLAN="Bob(| )Dylan"
KEYWORDS_SINGERS_VANESSAHUDGENS="Vanessa(| )Hudgens"
KEYWORDS_SINGERS_WHITNEYHOUSTON="Whitney(| )Houston"
KEYWORDS_SINGERS_MICHAELJACKSON="(Michael|Micheal)(| )Jackson"
KEYWORDS_SINGERS_JOEJONAS="Joe(|seph)(| )Jonas"
KEYWORDS_SINGERS_NICKJONAS="Nic(k|holas).+Jonas"
KEYWORDS_SINGERS_BEYONCE="Beyoncé|Beyonce"
KEYWORDS_SINGERS_ELTONJOHN="Elton(| )John"
KEYWORDS_SINGERS_DEMILOVATO="(Demi|Demetria).+Lovato"
KEYWORDS_SINGERS_JOHNLENNON="John(| )Lennon"
KEYWORDS_SINGERS_KESHA="Kesha|Ke\$ha"
KEYWORDS_SINGERS_LADYGAGA="Lady(| )Gaga"
KEYWORDS_SINGERS_MADONNA="Madonna"
KEYWORDS_SINGERS_MADONNA_EXCLUDE="Lady(| )Madonna|Madonna(| )and(| )Child"
KEYWORDS_SINGERS_BOBMARLEY="Bob(| )Marley"
KEYWORDS_SINGERS_BRUNOMARS="Bruno(| )Mars|Peter(| )Gene(| )Hernandez"
KEYWORDS_SINGERS_ASTONMERRYGOLD="Aston(| )(|Iain)(| )Merrygold"
KEYWORDS_SINGERS_KATYPERRY="Kat(y|ie)(| )Perry"
KEYWORDS_SINGERS_NICKIMINAJ="Nicki(| )M(a|i)naj|Onika(| )Tanya(| )Maraj"
KEYWORDS_SINGERS_ELVISPRESLEY="Elvis(| )Presley"
KEYWORDS_SINGERS_JOSHRAMSAY="Josh(| )Ramsay"
KEYWORDS_SINGERS_RIHANNA="Rihanna"
KEYWORDS_SINGERS_BRITNEYSPEARS="Britney(| )Spears"
KEYWORDS_SINGERS_TAYLORSWIFT="Taylor(| )Swift"
KEYWORDS_SINGERS_TUPACSHAKUR="Tupac|2pac|Shakur"
KEYWORDS_SINGERS_ASHLEYTSIDALE="Ashley(| )Tisdale"
KEYWORDS_SINGERS_LILWAYNE="Lil(| )Wayne"
KEYWORDS_SINGERS_STEVIEWONDER="Stevie(| )Wonder"
KEYWORDS_SINGERS_EMINEM="Eminem|Slim(| )Shady|Marshall(|(| )Bruce)(| )Mathers|EMINƎM"
KEYWORDS_SINGERS="\bSinger"
KEYWORDS_SINGERS_EXCLUDE="sewing(| )machine|$KEYWORDS_SINGERS_AKON|$KEYWORDS_SINGERS_ASHLEYTSIDALE|$KEYWORDS_SINGERS_BEYONCE|$KEYWORDS_SINGERS_BOBMARLEY|$KEYWORDS_SINGERS_BRITNEYSPEARS|$KEYWORDS_SINGERS_DEMILOVATO|$KEYWORDS_SINGERS_BOBDYLAN|$KEYWORDS_SINGERS_ELTONJOHN|$KEYWORDS_SINGERS_ELVISPRESLEY|$KEYWORDS_SINGERS_NICKIMINAJ|$KEYWORDS_SINGERS_EMINEM|$KEYWORDS_SINGERS_JOEJONAS|$KEYWORDS_SINGERS_JOHNLENNON|$KEYWORDS_SINGERS_JOHNNYCASH|$KEYWORDS_SINGERS_JOSHRAMSAY|$KEYWORDS_SINGERS_JUSTINBIEBER|$KEYWORDS_SINGERS_LADYGAGA|$KEYWORDS_SINGERS_LILWAYNE|$KEYWORDS_SINGERS_MADONNA|$KEYWORDS_SINGERS_BRUNOMARS|$KEYWORDS_SINGERS_ASTONMERRYGOLD|$KEYWORDS_SINGERS_MICHAELJACKSON|$KEYWORDS_SINGERS_MILEYCYRUS|$KEYWORDS_SINGERS_NICKJONAS|$KEYWORDS_SINGERS_RAYCHARLES|$KEYWORDS_SINGERS_RIHANNA|$KEYWORDS_SINGERS_TAYLORSWIFT|$KEYWORDS_SINGERS_TUPACSHAKUR|$KEYWORDS_SINGERS_VANESSAHUDGENS|$KEYWORDS_SINGERS_WHITNEYHOUSTON|$KEYWORDS_SINGERS_STEVIEWONDER|$KEYWORDS_SINGERS_KESHA|$KEYWORDS_SINGERS_CHERYLCOLE|$KEYWORDS_SINGERS_KATYPERRY"


KEYWORDS_SINGERS_ALL="$KEYWORDS_SINGERS|$KEYWORDS_SINGERS_AKON|$KEYWORDS_SINGERS_ASHLEYTSIDALE|$KEYWORDS_SINGERS_BEYONCE|$KEYWORDS_SINGERS_BOBMARLEY|$KEYWORDS_SINGERS_BRITNEYSPEARS|$KEYWORDS_SINGERS_DEMILOVATO|$KEYWORDS_SINGERS_BOBDYLAN|$KEYWORDS_SINGERS_ELTONJOHN|$KEYWORDS_SINGERS_ELVISPRESLEY|$KEYWORDS_SINGERS_NICKIMINAJ|$KEYWORDS_SINGERS_EMINEM|$KEYWORDS_SINGERS_JOEJONAS|$KEYWORDS_SINGERS_JOHNLENNON|$KEYWORDS_SINGERS_JOHNNYCASH|$KEYWORDS_SINGERS_JOSHRAMSAY|$KEYWORDS_SINGERS_JUSTINBIEBER|$KEYWORDS_SINGERS_LADYGAGA|$KEYWORDS_SINGERS_LILWAYNE|$KEYWORDS_SINGERS_MADONNA|$KEYWORDS_SINGERS_BRUNOMARS|$KEYWORDS_SINGERS_ASTONMERRYGOLD|$KEYWORDS_SINGERS_MICHAELJACKSON|$KEYWORDS_SINGERS_MILEYCYRUS|$KEYWORDS_SINGERS_NICKJONAS|$KEYWORDS_SINGERS_RAYCHARLES|$KEYWORDS_SINGERS_RIHANNA|$KEYWORDS_SINGERS_TAYLORSWIFT|$KEYWORDS_SINGERS_TUPACSHAKUR|$KEYWORDS_SINGERS_VANESSAHUDGENS|$KEYWORDS_SINGERS_WHITNEYHOUSTON|$KEYWORDS_SINGERS_STEVIEWONDER|$KEYWORDS_SINGERS_KESHA|$KEYWORDS_SINGERS_CHERYLCOLE|$KEYWORDS_SINGERS_KATYPERRY"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Singers"

  SINGERS=$(egrep -i "$KEYWORDS_SINGERS" newpages.txt | egrep -iv "$KEYWORDS_SINGERS_EXCLUDE")
  AKON=$(egrep -i "$KEYWORDS_SINGERS_AKON" newpages.txt)
  BIEBER=$(egrep -i "$KEYWORDS_SINGERS_JUSTINBIEBER" newpages.txt)
  JCASH=$(egrep -i "$KEYWORDS_SINGERS_JOHNNYCASH" newpages.txt)
  CHARLES=$(egrep -i "$KEYWORDS_SINGERS_RAYCHARLES" newpages.txt)
  MCYRUS=$(egrep -i "$KEYWORDS_SINGERS_MILEYCYRUS" newpages.txt)
  DYLAN=$(egrep -i "$KEYWORDS_SINGERS_BOBDYLAN" newpages.txt)
  HUDGENS=$(egrep -i "$KEYWORDS_SINGERS_VANESSAHUDGENS" newpages.txt)
  WHOUSTON=$(egrep -i "$KEYWORDS_SINGERS_WHITNEYHOUSTON" newpages.txt)
  MJACKSON=$(egrep -i "$KEYWORDS_SINGERS_MICHAELJACKSON" newpages.txt)
  JJONAS=$(egrep -i "$KEYWORDS_SINGERS_JOEJONAS" newpages.txt)
  NJONAS=$(egrep -i "$KEYWORDS_SINGERS_NICKJONAS" newpages.txt)
  KNOWLES=$(egrep -i "$KEYWORDS_SINGERS_BEYONCE" newpages.txt)
  LOVATO=$(egrep -i "$KEYWORDS_SINGERS_DEMILOVATO" newpages.txt)
  LENNON=$(egrep -i "$KEYWORDS_SINGERS_JOHNLENNON" newpages.txt)
  GAGA=$(egrep -i "$KEYWORDS_SINGERS_LADYGAGA" newpages.txt)
  MARLEY=$(egrep -i "$KEYWORDS_SINGERS_BOBMARLEY" newpages.txt)
  BRUNOMARS=$(egrep -i "$KEYWORDS_SINGERS_BRUNOMARS" newpages.txt)
  MADONNA=$(egrep -i "$KEYWORDS_SINGERS_MADONNA" newpages.txt| egrep -iv "$KEYWORDS_SINGERS_MADONNA_EXCLUDE")
  MINAJ=$(egrep -i "$KEYWORDS_SINGERS_NICKIMINAJ" newpages.txt)
  MERRYGOLD=$(egrep -i "$KEYWORDS_SINGERS_ASTONMERRYGOLD" newpages.txt)
  ELTONJOHN=$(egrep -i "$KEYWORDS_SINGERS_ELTONJOHN" newpages.txt)
  ELVIS=$(egrep -i "$KEYWORDS_SINGERS_ELVISPRESLEY" newpages.txt)
  RAMSAY=$(egrep -i "$KEYWORDS_SINGERS_JOSHRAMSAY" newpages.txt)
  RIHANNA=$(egrep -i "$KEYWORDS_SINGERS_RIHANNA" newpages.txt)
  BSPEARS=$(egrep -i "$KEYWORDS_SINGERS_BRITNEYSPEARS" newpages.txt)
  SWIFT=$(egrep -i "$KEYWORDS_SINGERS_TAYLORSWIFT" newpages.txt)
  TUPAC=$(egrep -i "$KEYWORDS_SINGERS_TUPACSHAKUR" newpages.txt)
  TISDALE=$(egrep -i "$KEYWORDS_SINGERS_ASHLEYTSIDALE" newpages.txt)
  LILWAYNE=$(egrep -i "$KEYWORDS_SINGERS_LILWAYNE" newpages.txt)
  EMINEM=$(egrep -i "$KEYWORDS_SINGERS_EMINEM" newpages.txt)
  WONDER=$(egrep -i "$KEYWORDS_SINGERS_STEVIEWONDER" newpages.txt)
  KESHA=$(egrep -i "$KEYWORDS_SINGERS_KESHA" newpages.txt)
  COLE=$(egrep -i "$KEYWORDS_SINGERS_CHERYLCOLE" newpages.txt)
  KATYPERRY=$(egrep -i "$KEYWORDS_SINGERS_KATYPERRY" newpages.txt)

  if [ "$SINGERS" != "" ];
  then
    printf "%s" "$SINGERS" > Singers.txt
    export CATFILE="Singers.txt"
    export CATNAME="Singers"
    $CATEGORIZE
    rm Singers.txt
    unset SINGERS.txt
  fi

  if [ "$AKON" != "" ];
  then
    printf "%s" "$AKON" > Akon.txt
    export CATFILE="Akon.txt"
    export CATNAME="Akon"
    $CATEGORIZE
    rm Akon.txt
    unset AKON
  fi

  if [ "$BIEBER" != "" ];
  then
    printf "%s" "$BIEBER" > JustinBieber.txt
    export CATFILE="JustinBieber.txt"
    export CATNAME="Justin Bieber"
    $CATEGORIZE
    rm JustinBieber.txt
    unset BIEBER
  fi

  if [ "$JCASH" != "" ];
  then
    printf "%s" "$JCASH" > JohnnyCash.txt
    export CATFILE="JohnnyCash.txt"
    export CATNAME="Johnny Cash"
    $CATEGORIZE
    rm JohnnyCash.txt
    unset JCASH
  fi

  if [ "$CHARLES" != "" ];
  then
    printf "%s" "$CHARLES" > RayCharles.txt
    export CATFILE="RayCharles.txt"
    export CATNAME="Ray Charles"
    $CATEGORIZE
    rm RayCharles.txt
    unset CHARLES
  fi

  if [ "$MCYRUS" != "" ];
  then
    printf "%s" "$MCYRUS" > MileyCyrus.txt
    export CATFILE="MileyCyrus.txt"
    export CATNAME="Miley Cyrus"
    $CATEGORIZE
    rm MileyCyrus.txt
    unset MCYRUS
  fi

  if [ "$DYLAN" != "" ];
  then
    printf "%s" "$DYLAN" > BobDylan.txt
    export CATFILE="BobDylan.txt"
    export CATNAME="Bob Dylan"
    $CATEGORIZE
    rm BobDylan.txt
    unset DYLAN
  fi

  if [ "$HUDGENS" != "" ];
  then
    printf "%s" "$HUDGENS" > VanessaHudgens.txt
    export CATFILE="VanessaHudgens.txt"
    export CATNAME="Vanessa Hudgens"
    $CATEGORIZE
    rm VanessaHudgens.txt
    unset HUDGENS
  fi

  if [ "$WHOUSTON" != "" ];
  then
    printf "%s" "$WHOUSTON" > WhitneyHouston.txt
    export CATFILE="WhitneyHouston.txt"
    export CATNAME="Whitney Houston"
    $CATEGORIZE
    rm WhitneyHouston.txt
    unset WHOUSTON
  fi

  if [ "$MJACKSON" != "" ];
  then
    printf "%s" "$MJACKSON" > MichaelJackson.txt
    export CATFILE="MichaelJackson.txt"
    export CATNAME="Michael Jackson"
    $CATEGORIZE
    rm MichaelJackson.txt
    unset MJACKSON
  fi

  if [ "$JJONAS" != "" ];
  then
    printf "%s" "$JJONAS" > JoeJonas.txt
    export CATFILE="JoeJonas.txt"
    export CATNAME="Joe Jonas"
    $CATEGORIZE
    rm JoeJonas.txt
    unset JJONAS
  fi

  if [ "$NJONAS" != "" ];
  then
    printf "%s" "$NJONAS" > NickJonas.txt
    export CATFILE="NickJonas.txt"
    export CATNAME="Nick Jonas"
    $CATEGORIZE
    rm NickJonas.txt
    unset NJONAS
  fi

  if [ "$KNOWLES" != "" ];
  then
    printf "%s" "$KNOWLES" > BeyoncéKnowles.txt
    export CATFILE="BeyoncéKnowles.txt"
    export CATNAME="Beyoncé Knowles"
    $CATEGORIZE
    rm BeyoncéKnowles.txt
    unset KNOWLES
  fi

  if [ "$LOVATO" != "" ];
  then
    printf "%s" "$KNOWLES" > DemiLovato.txt
    export CATFILE="DemiLovato.txt"
    export CATNAME="Demi Lovato"
    $CATEGORIZE
    rm DemiLovato.txt
    unset LOVATO
  fi

  if [ "$LENNON" != "" ];
  then
    printf "%s" "$LENNON" > JohnLennon.txt
    export CATFILE="JohnLennon.txt"
    export CATNAME="John Lennon"
    $CATEGORIZE
    rm JohnLennon.txt
    unset LENNON
  fi

  if [ "$GAGA" != "" ];
  then
    printf "%s" "$GAGA" > LadyGaga.txt
    export CATFILE="LadyGaga.txt"
    export CATNAME="Lady Gaga"
    $CATEGORIZE
    rm LadyGaga.txt
    unset GAGA
  fi

  if [ "$MADONNA" != "" ];
  then
    printf "%s" "$MADONNA" > Madonna.txt
    export CATFILE="Madonna.txt"
    export CATNAME="Madonna"
    $CATEGORIZE
    rm Madonna.txt
    unset MADONNA
  fi

  if [ "$MARLEY" != "" ];
  then
    printf "%s" "$MARLEY" > BobMarley.txt
    export CATFILE="BobMarley.txt"
    export CATNAME="Bob Marley"
    $CATEGORIZE
    rm BobMarley.txt
    unset MARLEY
  fi

  if [ "$BRUNOMARS" != "" ];
  then
    printf "%s" "$BRUNOMARS" > BrunoMars.txt
    export CATFILE="BrunoMars.txt"
    export CATNAME="Bruno Mars"
    $CATEGORIZE
    rm BrunoMars.txt
    unset BRUNOMARS
  fi

  if [ "$MERRYGOLD" != "" ];
  then
    printf "%s" "$MERRYGOLD" > AstonMerrygold.txt
    export CATFILE="AstonMerrygold.txt"
    export CATNAME="Aston Merrygold"
    $CATEGORIZE
    rm AstonMerrygold.txt
    unset MERRYGOLD
  fi

  if [ "$MINAJ" != "" ];
  then
    printf "%s" "$MINAJ" > NickiMinaj.txt
    export CATFILE="NickiMinaj.txt"
    export CATNAME="Nicki Minaj"
    $CATEGORIZE
    rm NickiMinaj.txt
    unset MINAJ
  fi

  if [ "$ELTONJOHN" != "" ];
  then
    printf "%s" "$ELTONJOHN" > EltonJohn.txt
    export CATFILE="EltonJohn.txt"
    export CATNAME="Elton John"
    $CATEGORIZE
    rm EltonJohn.txt
    unset ELTONJOHN
  fi

  if [ "$ELVIS" != "" ];
  then
    printf "%s" "$ELVIS" > ElvisPresley.txt
    export CATFILE="ElvisPresley.txt"
    export CATNAME="Elvis Presley"
    $CATEGORIZE
    rm ElvisPresley.txt
    unset ELVIS
  fi

  if [ "$RAMSAY" != "" ];
  then
    printf "%s" "$RAMSAY" > JoshRamsay.txt
    export CATFILE="JoshRamsay.txt"
    export CATNAME="Josh Ramsay"
    $CATEGORIZE
    rm JoshRamsay.txt
    unset RAMSAY
  fi

  if [ "$RIHANNA" != "" ];
  then
    printf "%s" "$RIHANNA" > Rihanna.txt
    export CATFILE="Rihanna.txt"
    export CATNAME="Rihanna"
    $CATEGORIZE
    rm Rihanna.txt
    unset RIHANNA
  fi

  if [ "$BSPEARS" != "" ];
  then
    printf "%s" "$BSPEARS" > BritneySpears.txt
    export CATFILE="BritneySpears.txt"
    export CATNAME="Britney Spears"
    $CATEGORIZE
    rm BritneySpears.txt
    unset BSPEARS
  fi

  if [ "$SWIFT" != "" ];
  then
    printf "%s" "$SWIFT" > TaylorSwift.txt
    export CATFILE="TaylorSwift.txt"
    export CATNAME="Taylor Swift"
    $CATEGORIZE
    rm TaylorSwift.txt
    unset SWIFT
  fi

  if [ "$TUPAC" != "" ];
  then
    printf "%s" "$TUPAC" > TupacShakur.txt
    export CATFILE="TupacShakur.txt"
    export CATNAME="Tupac Shakur"
    $CATEGORIZE
    rm TupacShakur.txt
    unset TUPAC
  fi

  if [ "$TISDALE" != "" ];
  then
    printf "%s" "$TISDALE" > AshleyTisdale.txt
    export CATFILE="AshleyTisdale.txt"
    export CATNAME="Ashley Tisdale"
    $CATEGORIZE
    rm AshleyTisdale.txt
    unset TISDALE
  fi

  if [ "$LILWAYNE" != "" ];
  then
    printf "%s" "$LILWAYNE" > LilWayne.txt
    export CATFILE="LilWayne.txt"
    export CATNAME="Lil Wayne"
    $CATEGORIZE
    rm LilWayne.txt
    unset LILWAYNE
  fi

  if [ "$EMINEM" != "" ];
  then
    printf "%s" "$EMINEM" > Eminem.txt
    export CATFILE="Eminem.txt"
    export CATNAME="Eminem"
    $CATEGORIZE
    rm Eminem.txt
    unset EMINEM
  fi

  if [ "$WONDER" != "" ];
  then
    printf "%s" "$WONDER" > StevieWonder.txt
    export CATFILE="StevieWonder.txt"
    export CATNAME="Stevie Wonder"
    $CATEGORIZE
    rm StevieWonder.txt
    unset WONDER
  fi

  if [ "$KESHA" != "" ];
  then
    printf "%s" "$KESHA" > Kesha.txt
    export CATFILE="Kesha.txt"
    export CATNAME="Kesha"
    $CATEGORIZE
    rm Kesha.txt
    unset KESHA
  fi

  if [ "$COLE" != "" ];
  then
    printf "%s" "$COLE" > CherylCole.txt
    export CATFILE="CherylCole.txt"
    export CATNAME="Cheryl Cole"
    $CATEGORIZE
    rm CherylCole.txt
    unset COLE
  fi

  if [ "$KATYPERRY" != "" ];
  then
    printf "%s" "$KATYPERRY" > KatyPerry.txt
    export CATFILE="KatyPerry.txt"
    export CATNAME="Katy Perry"
    $CATEGORIZE
    rm KatyPerry.txt
    unset KATYPERRY
  fi

  debug_end "Singers"

fi