#!/bin/bash

export SPORTSDIR="./catscripts/Lifestyle/Sports"

. $SPORTSDIR/Autoracing.sh
. $SPORTSDIR/Iceskating.sh
. $SPORTSDIR/LugeAndBobsledding.sh
. $SPORTSDIR/Olympics.sh
. $SPORTSDIR/Skiing.sh
. $SPORTSDIR/Snowboarding.sh

KEYWORDS_SOCCER="soccer|footballer"
KEYWORDS_CRONALDO="Cristiano(| )Ronaldo|\bC(\.|-| )(| )ronaldo"
KEYWORDS_LMESSI="\bMessi(|s)\b"
KEYWORDS_SOCCER_EXCLUDE="$KEYWORDS_CRONALDO|$KEYWORDS_LMESSI"

#"Net" sports"
KEYWORDS_TENNIS="Tennis"
KEYWORDS_PINGPONG="ping(|-| )pong|table(| )tennis"
KEYWORDS_TENNIS_EXCLUDE="$KEYWORDS_PINGPONG"
KEYWORDS_BADMINTON="Badminton"
KEYWORDS_VOLLEYBALL="Volley(| )ball"

#Basketball
KEYWORDS_BASKETBALL="Basket(| )ball"
KEYWORDS_NBA="\bNBA\b"
KEYWORDS_MICHAELJORDAN="Michael(| )Jordan"
KEYWORDS_SHAQUILLEONEAL="Shaquille(| )O(|')Neal|\bShaq\b"
KEYWORDS_KOBEBRYANT="Kobe(| )Bryant"
KEYWORDS_CHICAGOBULLS="Chicago(| )Bulls"
KEYWORDS_MIAMIHEAT="Miami(| )Heat"
KEYWORDS_NBA_EXCLUDE="$KEYWORDS_MICHAELJORDAN|$KEYWORDS_SHAQUILLEONEAL|$KEYWORDS_KOBEBRYANT|$KEYWORDS_CHICAGOBULLS|$KEYWORDS_MIAMIHEAT"
KEYWORDS_BASKETBALL_EXCLUDE="$KEYWORDS_NBA_EXCLUDE|$KEYWORDS_NBA"

#Baseball and similar

KEYWORDS_BASEBALL="Baseball"
KEYWORDS_SOFTBALL="softball"
KEYWORDS_MLB="\bMLB|Major(| )League(| )Baseball"
KEYWORDS_BABERUTH="Babe(| )Ruth"
KEYWORDS_JACKIEROBINSON="Jackie(| )Robinson"
KEYWORDS_ATLANTA_BRAVES="Atlanta(| )Braves"
KEYWORDS_MIAMI_MARLINS="Miami(| )Marlins"
KEYWORDS_MLB_EXCLUDE="$KEYWORDS_ATLANTA_BRAVES|$KEYWORDS_MIAMI_MARLINS|$KEYWORDS_BABERUTH|$KEYWORDS_JACKIEROBINSON"
KEYWORDS_BASEBALL_EXCLUDE="$KEYWORDS_MLB|$KEYWORDS_MLB_EXCLUDE"
#Hockey

KEYWORDS_HOCKEY="hockey"
KEYWORDS_FLORIDAPANTHERS="(NHL|hockey|sport|arena|\bwin|\bwon\b|Stanley|\brink).+Florida(| )Panther|Florida(| )Panther.+(NHL|hockey|sport|arena|\bwin|\bwon\b|Stanley|\brink)"
KEYWORDS_NHL="NHL|National(| )Hockey(| )League|Stanley(| )Cup|Anaheim(| )Duck|Boston(| )Bruin|Buffalo(| )Sabre|Calgary(| )Flame|Carolina(| )Hurricane|Chicago(| )Blackhawk|Colorado(| )Avalanche|Columbus(| )Blue(| )Jacket|Dallas(| )Star|Detroit(| )Red(| )Wing|Edmonton(| )Oiler|Los(| )Angeles(| )King|Minnesota(| )Wild|Montreal(| )Canadien|Nashville(| )Predator|New(| )Jersey(| )Devil|New(| )York(| )Islander|New(| )York(| )Ranger|Philadelphia(| )Flyer|Phoenix(| )Coyote|Pittsburgh(| )Penguin|Ottawa(| )Sennator|San(| )Jose(| )Shark|St(\.|)(| )Louis(| )Blue|Tampa(| )Bay(| )Lightning|Toronto(| )Maple(| )Leaf|Vancouver(| )Canuck|Washington(| )Capital|Winnipeg(| )Jet|$KEYWORDS_FLORIDAPANTHERS"
KEYWORDS_HOCKEY_EXCLUDE="ield hockey|street hockey|indoor hockey|$KEYWORDS_NHL"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Sports"

  SOCCER=$(egrep -i "$KEYWORDS_SOCCER" newpages.txt | egrep -iv "$KEYWORDS_SOCCER_EXCLUDE")
  CRONALDO=$(egrep -i "$KEYWORDS_CRONALDO" newpages.txt)
  LMESSI=$(egrep -i "$KEYWORDS_LMESSI" newpages.txt)
  TENNIS=$(egrep -i "$KEYWORDS_TENNIS" newpages.txt| egrep -iv "$KEYWORDS_TENNIS_EXCLUDE")
  PINGPONG=$(egrep -i "$KEYWORDS_PINGPONG" newpages.txt)
  BADMINTON=$(egrep -i "$KEYWORDS_BADMINTON" newpages.txt)
  VOLLEYBALL=$(egrep -i "$KEYWORDS_VOLLEYBALL" newpages.txt)
  SOFTBALL=$(egrep -i "$KEYWORDS_SOFTBALL" newpages.txt)
  HOCKEY=$(egrep -i "$KEYWORDS_HOCKEY" newpages.txt | egrep -iv "$KEYWORDS_NHL")
  NHL=$(egrep -i "$KEYWORDS_NHL" newpages.txt)
  BASKETBALL=$(egrep -i "$KEYWORDS_BASKETBALL" newpages.txt | egrep -iv "$KEYWORDS_BASKETBALL_EXCLUDE")
  NBA=$(egrep -i "$KEYWORDS_NBA" newpages.txt | egrep -iv "$KEYWORDS_NBA_EXCLUDE")
  CHICAGOBULLS=$(egrep -i "$KEYWORDS_CHICAGOBULLS" newpages.txt)
  MIAMIHEAT=$(egrep -i "$KEYWORDS_MIAMIHEAT" newpages.txt)
  MICHAELJORDAN=$(egrep -i "$KEYWORDS_MICHAELJORDAN" newpages.txt)
  SHAQUILLEONEAL=$(egrep -i "$KEYWORDS_SHAQUILLEONEAL" newpages.txt)
  KOBEBRYANT=$(egrep -i "$KEYWORDS_KOBEBRYANT" newpages.txt)
  BASEBALL=$(egrep -i "$KEYWORDS_BASEBALL" newpages.txt | egrep -iv "$KEYWORDS_BASEBALL_EXCLUDE")
  MLB=$(egrep -i "$KEYWORDS_MLB" newpages.txt | egrep -iv "$KEYWORDS_MLB_EXCLUDE")
  BABERUTH=$(egrep -i "$KEYWORDS_BABERUTH" newpages.txt)
  JACKIEROBINSON=$(egrep -i "$KEYWORDS_JACKIEROBINSON" newpages.txt)
  ATLANTABRAVES=$(egrep -i "$KEYWORDS_ATLANTA_BRAVES" newpages.txt)
  MIAMIMARLINS=$(egrep -i "$KEYWORDS_MIAMI_MARLINS" newpages.txt)

  if [ "$SOCCER" != "" ];
  then
    printf "%s" "$SOCCER" > Soccer.txt
    export CATFILE="Soccer.txt"
    export CATNAME="Soccer (association football)"
    $CATEGORIZE
    rm Soccer.txt
    unset SOCCER
  fi

  if [ "$CRONALDO" != "" ];
  then
    printf "%s" "$CRONALDO" > CRonaldo.txt
    export CATFILE="CRonaldo.txt"
    export CATNAME="Cristiano Ronaldo"
    $CATEGORIZE
    rm CRonaldo.txt
    unset CRONALDO
  fi

  if [ "$LMESSI" != "" ];
  then
    printf "%s" "$LMESSI" > LionelMessi.txt
    export CATFILE="LionelMessi.txt"
    export CATNAME="Lionel Messi"
    $CATEGORIZE
    rm LionelMessi.txt
    unset LMESSI
  fi

  if [ "$TENNIS" != "" ];
  then
    printf "%s" "$TENNIS" > Tennis.txt
    export CATFILE="Tennis.txt"
    export CATNAME="Tennis"
    $CATEGORIZE
    rm Tennis.txt
    unset TENNIS
  fi

  if [ "$PINGPONG" != "" ];
  then
    printf "%s" "$PINGPONG" > PingPong.txt
    export CATFILE="PingPong.txt"
    export CATNAME="Ping-pong"
    $CATEGORIZE
    rm PingPong.txt
    unset PINGPONG
  fi

  if [ "$BADMINTON" != "" ];
  then
    printf "%s" "$BADMINTON" > Badminton.txt
    export CATFILE="Badminton.txt"
    export CATNAME="Badminton"
    $CATEGORIZE
    rm Badminton.txt
    unset BADMINTON
  fi

  if [ "$VOLLEYBALL" != "" ];
  then
    printf "%s" "$VOLLEYBALL" > Volleyball.txt
    export CATFILE="Volleyball.txt"
    export CATNAME="Volleyball"
    $CATEGORIZE
    rm Volleyball.txt
    unset VOLLEYBALL
  fi

  if [ "$SOFTBALL" != "" ];
  then
    printf "%s" "$SOFTBALL" > Softball.txt
    export CATFILE="Softball.txt"
    export CATNAME="Softball"
    $CATEGORIZE
    rm Softball.txt
    unset SOFTBALL
  fi

  if [ "$HOCKEY" != "" ];
  then
    printf "%s" "$HOCKEY" > Hockey.txt
    export CATFILE="Hockey.txt"
    export CATNAME="Hockey"
    $CATEGORIZE
    rm Hockey.txt
    unset HOCKEY
  fi

  if [ "$NHL" != "" ];
  then
    printf "%s" "$NHL" > NHL.txt
    export CATFILE="NHL.txt"
    export CATNAME="NHL"
    $CATEGORIZE
    rm NHL.txt
    unset NHL
  fi

  if [ "$BASKETBALL" != "" ];
  then
    printf "%s" "$BASKETBALL" > Basketball.txt
    export CATFILE="Basketball.txt"
    export CATNAME="Basketball"
    $CATEGORIZE
    rm Basketball.txt
    unset BASKETBALL
  fi

  if [ "$NBA" != "" ];
  then
    printf "%s" "$NBA" > NBA.txt
    export CATFILE="NBA.txt"
    export CATNAME="NBA"
    $CATEGORIZE
    rm NBA.txt
    unset NBA
  fi

  if [ "$CHICAGOBULLS" != "" ];
  then
    printf "%s" "$CHICAGOBULLS" > ChicagoBulls.txt
    export CATFILE="ChicagoBulls.txt"
    export CATNAME="Chicago Bulls"
    $CATEGORIZE
    rm ChicagoBulls.txt
    unset CHICAGOBULLS
  fi

  if [ "$MIAMIHEAT" != "" ];
  then
    printf "%s" "$MIAMIHEAT" > MiamiHeat.txt
    export CATFILE="MiamiHeat.txt"
    export CATNAME="Miami Heat"
    $CATEGORIZE
    rm MiamiHeat.txt
    unset MIAMIHEAT
  fi

  if [ "$MICHAELJORDAN" != "" ];
  then
    printf "%s" "$MICHAELJORDAN" > MichaelJordan.txt
    export CATFILE="MichaelJordan.txt"
    export CATNAME="Michael Jordan"
    $CATEGORIZE
    rm MichaelJordan.txt
    unset MICHAELJORDAN
  fi

  if [ "$SHAQUILLEONEAL" != "" ];
  then
    printf "%s" "$SHAQUILLEONEAL" > ShaquilleONeal.txt
    export CATFILE="ShaquilleONeal.txt"
    export CATNAME="Shaquille O'Neal"
    $CATEGORIZE
    rm ShaquilleONeal.txt
    unset SHAQUILLEONEAL
  fi

  if [ "$KOBEBRYANT" != "" ];
  then
    printf "%s" "$KOBEBRYANT" > KobeBraynt.txt
    export CATFILE="KobeBraynt.txt"
    export CATNAME="Kobe Bryant"
    $CATEGORIZE
    rm KobeBraynt.txt
    unset KOBEBRYANT
  fi

  if [ "$BASEBALL" != "" ];
  then
    printf "%s" "$BASEBALL" > Baseball.txt
    export CATFILE="Baseball.txt"
    export CATNAME="Baseball"
    $CATEGORIZE
    rm Baseball.txt
    unset BASEBALL
  fi

  if [ "$MLB" != "" ];
  then
    printf "%s" "$MLB" > MLB.txt
    export CATFILE="MLB.txt"
    export CATNAME="Major League Baseball"
    $CATEGORIZE
    rm MLB.txt
    unset MLB
  fi

  if [ "$BABERUTH" != "" ];
  then
    printf "%s" "$BABERUTH" > BabeRuth.txt
    export CATFILE="BabeRuth.txt"
    export CATNAME="Babe Ruth"
    $CATEGORIZE
    rm BabeRuth.txt
    unset BABERUTH
  fi

  if [ "$JACKIEROBINSON" != "" ];
  then
    printf "%s" "$JACKIEROBINSON" > JackieRobinson.txt
    export CATFILE="JackieRobinson.txt"
    export CATNAME="Jackie Robinson"
    $CATEGORIZE
    rm JackieRobinson.txt
    unset JACKIEROBINSON
  fi

  if [ "$ATLANTABRAVES" != "" ];
  then
    printf "%s" "$ATLANTABRAVES" > AtlantaBraves.txt
    export CATFILE="AtlantaBraves.txt"
    export CATNAME="Atlanta Braves"
    $CATEGORIZE
    rm AtlantaBraves.txt
    unset ATLANTABRAVES
  fi

  if [ "$MIAMIMARLINS" != "" ];
  then
    printf "%s" "$MIAMIMARLINS" > MiamiMarlins.txt
    export CATFILE="MiamiMarlins.txt"
    export CATNAME="Miami Marlins"
    $CATEGORIZE
    rm MiamiMarlins.txt
    unset MIAMIMARLINS
  fi

  debug_end "Sports"

fi