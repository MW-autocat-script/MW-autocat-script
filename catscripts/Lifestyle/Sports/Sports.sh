#!/bin/bash

export SPORTSDIR="./catscripts/Lifestyle/Sports"

. $SPORTSDIR/Autoracing.sh
. $SPORTSDIR/Iceskating.sh
. $SPORTSDIR/LugeAndBobsledding.sh
. $SPORTSDIR/Olympics.sh
. $SPORTSDIR/Skateboarding.sh #KEYWORDS_SKATEBOARDING_ALL
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

  SOCCER=$(egrep -i "$KEYWORDS_SOCCER" "$NEWPAGES" | egrep -iv "$KEYWORDS_SOCCER_EXCLUDE")
  CRONALDO=$(egrep -i "$KEYWORDS_CRONALDO" "$NEWPAGES")
  LMESSI=$(egrep -i "$KEYWORDS_LMESSI" "$NEWPAGES")
  TENNIS=$(egrep -i "$KEYWORDS_TENNIS" "$NEWPAGES"| egrep -iv "$KEYWORDS_TENNIS_EXCLUDE")
  PINGPONG=$(egrep -i "$KEYWORDS_PINGPONG" "$NEWPAGES")
  BADMINTON=$(egrep -i "$KEYWORDS_BADMINTON" "$NEWPAGES")
  VOLLEYBALL=$(egrep -i "$KEYWORDS_VOLLEYBALL" "$NEWPAGES")
  SOFTBALL=$(egrep -i "$KEYWORDS_SOFTBALL" "$NEWPAGES")
  HOCKEY=$(egrep -i "$KEYWORDS_HOCKEY" "$NEWPAGES" | egrep -iv "$KEYWORDS_NHL")
  NHL=$(egrep -i "$KEYWORDS_NHL" "$NEWPAGES")
  BASKETBALL=$(egrep -i "$KEYWORDS_BASKETBALL" "$NEWPAGES" | egrep -iv "$KEYWORDS_BASKETBALL_EXCLUDE")
  NBA=$(egrep -i "$KEYWORDS_NBA" "$NEWPAGES" | egrep -iv "$KEYWORDS_NBA_EXCLUDE")
  CHICAGOBULLS=$(egrep -i "$KEYWORDS_CHICAGOBULLS" "$NEWPAGES")
  MIAMIHEAT=$(egrep -i "$KEYWORDS_MIAMIHEAT" "$NEWPAGES")
  MICHAELJORDAN=$(egrep -i "$KEYWORDS_MICHAELJORDAN" "$NEWPAGES")
  SHAQUILLEONEAL=$(egrep -i "$KEYWORDS_SHAQUILLEONEAL" "$NEWPAGES")
  KOBEBRYANT=$(egrep -i "$KEYWORDS_KOBEBRYANT" "$NEWPAGES")
  BASEBALL=$(egrep -i "$KEYWORDS_BASEBALL" "$NEWPAGES" | egrep -iv "$KEYWORDS_BASEBALL_EXCLUDE")
  MLB=$(egrep -i "$KEYWORDS_MLB" "$NEWPAGES" | egrep -iv "$KEYWORDS_MLB_EXCLUDE")
  BABERUTH=$(egrep -i "$KEYWORDS_BABERUTH" "$NEWPAGES")
  JACKIEROBINSON=$(egrep -i "$KEYWORDS_JACKIEROBINSON" "$NEWPAGES")
  ATLANTABRAVES=$(egrep -i "$KEYWORDS_ATLANTA_BRAVES" "$NEWPAGES")
  MIAMIMARLINS=$(egrep -i "$KEYWORDS_MIAMI_MARLINS" "$NEWPAGES")

  categorize "SOCCER" "Soccer (association football)"
  categorize "CRONALDO" "Cristiano Ronaldo"
  categorize "LMESSI" "Lionel Messi"
  categorize "TENNIS" "Tennis"
  categorize "PINGPONG" "Ping-pong"
  categorize "BADMINTON" "Badminton"
  categorize "VOLLEYBALL" "Volleyball"
  categorize "SOFTBALL" "Softball"
  categorize "HOCKEY" "Hockey"
  categorize "NHL" "NHL"
  categorize "BASKETBALL" "Basketball"
  categorize "NBA" "NBA"
  categorize "CHICAGOBULLS" "Chicago Bulls"
  categorize "MIAMIHEAT" "Miami Heat"
  categorize "MICHAELJORDAN" "Michael Jordan"
  categorize "SHAQUILLEONEAL" "Shaquille O'Neal"
  categorize "KOBEBRYANT" "Kobe Bryant"
  categorize "BASEBALL" "Baseball"
  categorize "MLB" "Major League Baseball"
  categorize "BABERUTH" "Babe Ruth"
  categorize "JACKIEROBINSON" "Jackie Robinson"
  categorize "ATLANTABRAVES" "Atlanta Braves"
  categorize "MIAMIMARLINS" "Miami Marlins"

  debug_end "Sports"

fi