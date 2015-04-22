#!/bin/bash

export SPORTSDIR="./catscripts/Lifestyle/Sports"

#"Net" sports"
KEYWORDS_TENNIS="Tennis"
KEYWORDS_PINGPONG="ping(|-| )pong|table(| )tennis"
KEYWORDS_TENNIS_EXCLUDE="$KEYWORDS_PINGPONG"
KEYWORDS_BADMINTON="Badminton"
KEYWORDS_VOLLEYBALL="Volley(| )ball"

#Hockey

KEYWORDS_HOCKEY="hockey"
KEYWORDS_FLORIDAPANTHERS="(NHL|hockey|sport|arena|\bwin|\bwon\b|Stanley|\brink).+Florida(| )Panther|Florida(| )Panther.+(NHL|hockey|sport|arena|\bwin|\bwon\b|Stanley|\brink)"
KEYWORDS_NHL="NHL|National(| )Hockey(| )League|Stanley(| )Cup|Anaheim(| )Duck|Boston(| )Bruin|Buffalo(| )Sabre|Calgary(| )Flame|Carolina(| )Hurricane|Chicago(| )Blackhawk|Colorado(| )Avalanche|Columbus(| )Blue(| )Jacket|Dallas(| )Star|Detroit(| )Red(| )Wing|Edmonton(| )Oiler|Los(| )Angeles(| )King|Minnesota(| )Wild|Montreal(| )Canadien|Nashville(| )Predator|New(| )Jersey(| )Devil|New(| )York(| )Islander|New(| )York(| )Ranger|Philadelphia(| )Flyer|Phoenix(| )Coyote|Pittsburgh(| )Penguin|Ottawa(| )Sennator|San(| )Jose(| )Shark|St(\.|)(| )Louis(| )Blue|Tampa(| )Bay(| )Lightning|Toronto(| )Maple(| )Leaf|Vancouver(| )Canuck|Washington(| )Capital|Winnipeg(| )Jet|$KEYWORDS_FLORIDAPANTHERS"
KEYWORDS_HOCKEY_EXCLUDE="ield hockey|street hockey|indoor hockey|$KEYWORDS_NHL"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Sports"

  . $SPORTSDIR/Auto_racing/AutoRacing.sh
  . $SPORTSDIR/Baseball/Baseball.sh
  . $SPORTSDIR/Basketball/Basketball.sh
  . $SPORTSDIR/Ice_skating/IceSkating.sh
  . $SPORTSDIR/Luge_and_bobsledding/LugeAndBobsledding.sh
  . $SPORTSDIR/Olympics/Olympics.sh
  . $SPORTSDIR/Skateboarding/Skateboarding.sh #KEYWORDS_SKATEBOARDING_ALL
  . $SPORTSDIR/Skiing/Skiing.sh
  . $SPORTSDIR/Snowboarding/Snowboarding.sh
  . $SPORTSDIR/Soccer/Soccer.sh
  . $SPORTSDIR/Softball/Softball.sh

  TENNIS=$(egrep -i "$KEYWORDS_TENNIS" "$NEWPAGES"| egrep -iv "$KEYWORDS_TENNIS_EXCLUDE")
  PINGPONG=$(egrep -i "$KEYWORDS_PINGPONG" "$NEWPAGES")
  BADMINTON=$(egrep -i "$KEYWORDS_BADMINTON" "$NEWPAGES")
  VOLLEYBALL=$(egrep -i "$KEYWORDS_VOLLEYBALL" "$NEWPAGES")
  HOCKEY=$(egrep -i "$KEYWORDS_HOCKEY" "$NEWPAGES" | egrep -iv "$KEYWORDS_NHL")
  NHL=$(egrep -i "$KEYWORDS_NHL" "$NEWPAGES")

  categorize "TENNIS" "Tennis"
  categorize "PINGPONG" "Ping-pong"
  categorize "BADMINTON" "Badminton"
  categorize "VOLLEYBALL" "Volleyball"
  categorize "HOCKEY" "Hockey"
  categorize "NHL" "NHL"


  debug_end "Sports"

fi