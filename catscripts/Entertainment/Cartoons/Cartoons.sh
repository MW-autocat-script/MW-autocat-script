#!/bin/bash

CARTOONDIR="./catscripts/Entertainment/Cartoons"

debug_start "Cartoons and anime"

if [ "$1" == "" ];
then

  KEYWORDS_CARTOONS_OTHER="Attack(| )on(| )Titan|kaze(| )no(| )stigma|\btrigun|Hetalia|Bubblegum(| )(Crisis|Crash)|Blood\+"

  $CARTOONDIR/American_Dad/AmericanDad.sh
  $CARTOONDIR/Avatar_The_Last_Airbender/Avatar.sh
  $CARTOONDIR/Dora_the_Explorer/Dora.sh
  $CARTOONDIR/Fairy_Tail/FairyTail.sh #KEYWORDS_FAIRYTAIL
  $CARTOONDIR/Family_Guy/FamilyGuy.sh
  $CARTOONDIR/Futurama/Futurama.sh
  $CARTOONDIR/Johnny_Test/JohnnyTest.sh
  $CARTOONDIR/Kim_Possible/KimPossible.sh
  $CARTOONDIR/Looney_Tunes/LooneyTunes.sh
  $CARTOONDIR/My_Little_Pony\:_Friendship_Is_Magic/MLP.sh
  $CARTOONDIR/Naruto/Naruto.sh
  $CARTOONDIR/One_Piece/OnePiece.sh #KEYWORDS_ONEPIECE
  $CARTOONDIR/Pokémon_anime/PokémonAnime.sh
  $CARTOONDIR/South\ Park/SouthPark.sh
  $CARTOONDIR/Danny\ Phantom/DannyPhantom.sh
  $CARTOONDIR/SpongeBob\ SquarePants/SpongeBobSquarePants.sh
  $CARTOONDIR/Star_Wars\:_The_Clone_Wars/CloneWars.sh
  $CARTOONDIR/The\ Simpsons/TheSimpsons.sh

  CARTOONS="$(egrep -i "$KEYWORDS_CARTOONS_OTHER" newpages.txt)"

  if [ "$CARTOONS" != "" ];
  then
    printf "$CARTOONS" > Cartoons.txt
    export CATFILE="Cartoons.txt"
    export CATNAME="Cartoons and anime"
    $CATEGORIZE
    rm Cartoons.txt
    unset CARTOONS
  fi
  

fi



