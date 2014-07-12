#!/bin/bash

ACTORDIR="./catscripts/Entertainment/Actors_and_actresses"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Actors and actresses"

  . $ACTORDIR/Orlando_Bloom/OrlandoBloom.sh #$KEYWORDS_ACTOR_ORLANDOBLOOM
  . $ACTORDIR/Sandra_Bullock/SandraBullock.sh #$KEYWORDS_ACTRESS_SANDRABULLOCK
  . $ACTORDIR/Jackie_Chan/JackieChan.sh #$KEYWORDS_ACTOR_JACKIECHAN
  . $ACTORDIR/Tom_Cruise/TomCruise.sh #$KEYWORDS_ACTOR_TOMCRUISE
  . $ACTORDIR/Zac_Efron/ZacEfron.sh #$KEYWORDS_ACTOR_ZACEFRON
  . $ACTORDIR/Megan_Fox/MeganFox.sh #$KEYWORDS_ACTRESS_MEGANFOX
  . $ACTORDIR/Selena_Gomez/SelenaGomez.sh #$KEYWORDS_ACTRESS_SELENAGOMEZ
  . $ACTORDIR/Tom_Hanks/TomHanks.sh #KEYWORDS_ACTOR_TOMHANKS
  . $ACTORDIR/Taylor_Lautner/TaylorLautner.sh #$KEYWORDS_ACTOR_TAYLORLAUTNER
  . $ACTORDIR/Bruce_Lee/BruceLee.sh #$KEYWORDS_ACTOR_BRUCELEE
  . $ACTORDIR/Marilyn_Monroe/MarilynMonroe.sh #$KEYWORDS_ACTRESS_MARILYNMONROE
  . $ACTORDIR/Chuck_Norris/ChuckNorris.sh #$KEYWORDS_ACTOR_CHUCKNORRIS
  . $ACTORDIR/Robert_Pattinson/RobertPattinson.sh #$KEYWORDS_ACTOR_ROBERTPATTINSON
  . $ACTORDIR/Daniel_Radcliffe/DanielRadcliffe.sh #$KEYWORDS_ACTOR_DANIELRADCLIFFE
  . $ACTORDIR/Sean_Penn/SeanPenn.sh #$KEYWORDS_ACTOR_SEANPENN
  . $ACTORDIR/Adam_Sandler/AdamSandler.sh #$KEYWORDS_ACTOR_ADAMSANDLER
  . $ACTORDIR/Jaden_Smith/JadenSmith.sh #$KEYWORDS_ACTOR_JADENSMITH
  . $ACTORDIR/Will_Smith/WillSmith.sh #$KEYWORDS_ACTOR_WILLSMITH
  . $ACTORDIR/Sylvester_Stallone/SylvesterStallone.sh #$KEYWORDS_ACTOR_SYLVESTERSTALLONE
  . $ACTORDIR/Patrick_Swayze/PatrickSwayze.sh #$KEYWORDS_ACTOR_PATRICKSWAYZE
  . $ACTORDIR/Bruce_Willis/BruceWillis.sh #$KEYWORDS_ACTOR_BRUCEWILLIS
  . $ACTORDIR/Zendaya/Zendaya.sh #KEYWORDS_ZENDAYA



  #Exclude the keywords for subcategories from being placed into the parent 

  KEYWORDS_ACTOR="$KEYWORDS_ACTOR_ORLANDOBLOOM|$KEYWORDS_ACTOR_JACKIECHAN|$KEYWORDS_ACTOR_TOMCRUISE|$KEYWORDS_ACTOR_ZACEFRON|$KEYWORDS_ACTOR_TOMHANKS|$KEYWORDS_ACTOR_TAYLORLAUTNER|$KEYWORDS_ACTOR_BRUCELEE|$KEYWORDS_ACTOR_CHUCKNORRIS|$KEYWORDS_ACTOR_ROBERTPATTINSON|$KEYWORDS_ACTOR_DANIELRADCLIFFE|$KEYWORDS_ACTOR_SEANPENN|$KEYWORDS_ACTOR_ADAMSANDLER|$KEYWORDS_ACTOR_JADENSMITH|$KEYWORDS_ACTOR_WILLSMITH|$KEYWORDS_ACTOR_SYLVESTERSTALLONE|$KEYWORDS_ACTOR_PATRICKSWAYZE|$KEYWORDS_ACTOR_BRUCEWILLIS"

  KEYWORDS_ACTRESS="$KEYWORDS_ACTRESS_SANDRABULLOCK|$KEYWORDS_ACTRESS_MEGANFOX|$KEYWORDS_ACTRESS_SELENAGOMEZ|$KEYWORDS_ACTRESS_MARILYNMONROE|$KEYWORDS_ZENDAYA"

  #People whose category script is run elsewhere, but should still be exempt:

  KEYWORDS_ACTRESS_EXEMPT="Demi(| )Lovato|Vanessa(| )Hudgens|Ashley(| )Tisdale"

  #People who do not yet have their own category, so will be placed in the parent

  KEYWORDS_ACTOR_INCLUDE="Jet(| )Li\b|Jason(| )Statham|Robin(| )Williams|Steve(| )McQueen"


  ACTORS=$(egrep -i "\bactor|actress|$KEYWORDS_ACTOR_INCLUDE" newpages.txt | egrep -iv "$KEYWORDS_ACTOR|$KEYWORDS_ACTRESS|$KEYWORDS_ACTRESS_EXEMPT")

  if [ "$ACTORS" != "" ];
  then
    printf "%s" "$ACTORS" > Actors.txt
    export CATFILE="Actors.txt"
    export CATNAME="Actors and actresses"
    $CATEGORIZE
    rm Actors.txt
    unset ACTORS
  fi

  debug_end "Actors and actresses"

fi