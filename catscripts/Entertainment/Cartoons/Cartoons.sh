#!/bin/bash

CARTOONDIR="./catscripts/Entertainment/Cartoons"



if [ "$1" == "" ];
then

  debug_start "Cartoons and anime"

  KEYWORDS_CARTOONS_OTHER="Attack(| )on(| )Titan|Shingeki(| )no(| )Kyojin|kaze(| )no(| )stigma|\btrigun|Hetalia|Bubblegum(| )(Crisis|Crash)|Blood\+|knights(| )of(| )Sidonia|Sidonia(| )no(| )kishi|Psycho(|-| )Pass|Gungrave|Haruhi(| )Suzumiya|Ch(a|ä)oS;HEAd|Chobits|Chrome(| )Shelled(| )Regios|Cowboy(| )Bebop|\bFLCL\b|Full(| )Metal(| )Panic|Fumoffu|Ghost(| )in(| )the(| )Shell|Eden(| )of(| )the(| )East|Higashi(| )no(| )Eden|Evangelion|Steins;Gate|Vampire(| )Knight|Summer(| )Wars"

  $CARTOONDIR/American_Dad/AmericanDad.sh
  $CARTOONDIR/Avatar_The_Last_Airbender/Avatar.sh
  $CARTOONDIR/Death_Note/DeathNote.sh #KEYWORDS_DEATHNOTE
  $CARTOONDIR/Dora_the_Explorer/Dora.sh
  $CARTOONDIR/Fairy_Tail/FairyTail.sh #KEYWORDS_FAIRYTAIL
  $CARTOONDIR/Family_Guy/FamilyGuy.sh
  $CARTOONDIR/Futurama/Futurama.sh
  $CARTOONDIR/Gundam_series/Gundam.sh #KEYWORDS_GUNDAM
  $CARTOONDIR/Johnny_Test/JohnnyTest.sh
  $CARTOONDIR/Kim_Possible/KimPossible.sh
  $CARTOONDIR/Looney_Tunes/LooneyTunes.sh
  $CARTOONDIR/My_Little_Pony_Friendship_Is_Magic/MLP.sh
  $CARTOONDIR/Naruto/Naruto.sh
  $CARTOONDIR/One_Piece/OnePiece.sh #KEYWORDS_ONEPIECE
  $CARTOONDIR/Pokémon_anime/PokémonAnime.sh
  $CARTOONDIR/South_Park/SouthPark.sh
  $CARTOONDIR/Danny_Phantom/DannyPhantom.sh
  $CARTOONDIR/Sailor_Moon/SailorMoon.sh #KEYWORDS_SAILORMOON
  $CARTOONDIR/SpongeBob_SquarePants/SpongeBobSquarePants.sh
  $CARTOONDIR/Star_Wars_The_Clone_Wars/CloneWars.sh
  $CARTOONDIR/The_Simpsons/TheSimpsons.sh

  CARTOONS="$(egrep -i "$KEYWORDS_CARTOONS_OTHER" newpages.txt)"

  if [ "$CARTOONS" != "" ];
  then
    printf "%s" "$CARTOONS" > Cartoons.txt
    export CATFILE="Cartoons.txt"
    export CATNAME="Cartoons and anime"
    $CATEGORIZE
    rm Cartoons.txt
    unset CARTOONS
  fi
  
  debug_end "Cartoons and anime"

fi



