#!/bin/bash

if [ "$DEBUG" == "yes" ];
then
  printf "Starting Actors and actresses\n" 
fi

export CURRENTDIR="./catscripts/Entertainment/Actors_and_actresses"

. $CURRENTDIR/Orlando_Bloom/OrlandoBloom.sh #$KEYWORDS_ACTOR_ORLANDOBLOOM
. $CURRENTDIR/Sandra_Bullock/SandraBullock.sh #$KEYWORDS_ACTRESS_SANDRABULLOCK
. $CURRENTDIR/Jackie_Chan/JackieChan.sh #$KEYWORDS_ACTOR_JACKIECHAN
. $CURRENTDIR/Tom_Cruise/TomCruise.sh #$KEYWORDS_ACTOR_TOMCRUISE
. $CURRENTDIR/Zac_Efron/ZacEfron.sh #$KEYWORDS_ACTOR_ZACEFRON
. $CURRENTDIR/Megan_Fox/MeganFox.sh #$KEYWORDS_ACTRESS_MEGANFOX
. $CURRENTDIR/Selena_Gomez/SelenaGomez.sh #$KEYWORDS_ACTRESS_SELENAGOMEZ
. $CURRENTDIR/Tom_Hanks/TomHanks.sh #KEYWORDS_ACTOR_TOMHANKS
. $CURRENTDIR/Taylor_Lautner/TaylorLautner.sh #$KEYWORDS_ACTOR_TAYLORLAUTNER
. $CURRENTDIR/Bruce_Lee/BruceLee.sh #$KEYWORDS_ACTOR_BRUCELEE
. $CURRENTDIR/Marilyn_Monroe/MarilynMonroe.sh #$KEYWORDS_ACTRESS_MARILYNMONROE
. $CURRENTDIR/Chuck_Norris/ChuckNorris.sh #$KEYWORDS_ACTOR_CHUCKNORRIS
. $CURRENTDIR/Robert_Pattinson/RobertPattinson.sh #$KEYWORDS_ACTOR_ROBERTPATTINSON
. $CURRENTDIR/Daniel_Radcliffe/DanielRadcliffe.sh #$KEYWORDS_ACTOR_DANIELRADCLIFFE
. $CURRENTDIR/Sean_Penn/SeanPenn.sh #$KEYWORDS_ACTOR_SEANPENN
. $CURRENTDIR/Adam_Sandler/AdamSandler.sh #$KEYWORDS_ACTOR_ADAMSANDLER
. $CURRENTDIR/Jaden_Smith/JadenSmith.sh #$KEYWORDS_ACTOR_JADENSMITH
. $CURRENTDIR/Will_Smith/WillSmith.sh #$KEYWORDS_ACTOR_WILLSMITH
. $CURRENTDIR/Sylvester_Stallone/SylvesterStallone.sh #$KEYWORDS_ACTOR_SYLVESTERSTALLONE
. $CURRENTDIR/Patrick_Swayze/PatrickSwayze.sh #$KEYWORDS_ACTOR_PATRICKSWAYZE
. $CURRENTDIR/Bruce_Willis/BruceWillis.sh #$KEYWORDS_ACTOR_BRUCEWILLIS



#Exclude the keywords for subcategories from being placed into the parent 

export KEYWORDS_ACTOR="$KEYWORDS_ACTOR_ORLANDOBLOOM|$KEYWORDS_ACTOR_JACKIECHAN|$KEYWORDS_ACTOR_TOMCRUISE|$KEYWORDS_ACTOR_ZACEFRON|$KEYWORDS_ACTOR_TOMHANKS|$KEYWORDS_ACTOR_TAYLORLAUTNER|$KEYWORDS_ACTOR_BRUCELEE|$KEYWORDS_ACTOR_CHUCKNORRIS|$KEYWORDS_ACTOR_ROBERTPATTINSON|$KEYWORDS_ACTOR_DANIELRADCLIFFE|$KEYWORDS_ACTOR_SEANPENN|$KEYWORDS_ACTOR_ADAMSANDLER|$KEYWORDS_ACTOR_JADENSMITH|$KEYWORDS_ACTOR_WILLSMITH|$KEYWORDS_ACTOR_SYLVESTERSTALLONE|$KEYWORDS_ACTOR_PATRICKSWAYZE|$KEYWORDS_ACTOR_BRUCEWILLIS"

export KEYWORDS_ACTRESS="$KEYWORDS_ACTRESS_SANDRABULLOCK|$KEYWORDS_ACTRESS_MEGANFOX|$KEYWORDS_ACTRESS_SELENAGOMEZ|$KEYWORDS_ACTRESS_MARILYNMONROE"

#People whose category script is run elsewhere, but should still be exempt:

export KEYWORDS_ACTRESS_EXEMPT="Demi(| )Lovato|Vanessa(| )Hudgens|Ashley(| )Tisdale"

#People who do not yet have their own category, so will be placed in the parent

export KEYWORDS_ACTOR_INCLUDE="Jet(| )Li\b|Jason(| )Statham|Robin(| )Williams"

egrep -i "\bactor|actress|$KEYWORDS_ACTOR_INCLUDE" newpages.txt | egrep -iv "$KEYWORDS_ACTOR|$KEYWORDS_ACTRESS|$KEYWORDS_ACTRESS_EXEMPT" >> Actors.txt

ACTORS=`stat --print=%s Actors.txt`

if [ $ACTORS -ne 0 ];
then
  export CATFILE="Actors.txt"
  export CATNAME="Actors and actresses"
  $CATEGORIZE
fi

rm Actors.txt

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing Actors and actresses\n" 
fi