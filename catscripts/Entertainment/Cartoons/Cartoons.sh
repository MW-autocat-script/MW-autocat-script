#!/bin/bash

CARTOONDIR="./catscripts/Entertainment/Cartoons"



if [ "$1" == "" ];
then

  debug_start "Cartoons and anime"

  KEYWORDS_ADPOLICE="A(|\.)D(|\.)(| )Police"
  KEYWORDS_ANGELBEATS="Angel(| )Beats"
  KEYWORDS_ATTACKONTITAN="Attack(| )on(| )Titan|Shingeki(| )no(| )Kyojin|Eren(| )Yeagar|(Levi|Mikasa)(| )Ackerman|Armin(| )Arlert|Annie(| )Leonhart|Reiner(| )Braun|Bertholdt(| )Hoover|Jean(| )Kirstein"
  KEYWORDS_BACCANO="Baccano"
  KEYWORDS_BLOODPLUS="Blood(| )(Plus|\+)"
  KEYWORDS_BUBBLEGUM="Bubblegum(| )(Crisis|Crash)|Knight(| )Saber"
  KEYWORDS_CAPTAINHARLOCK="Captain(| )Harlock"
  KEYWORDS_CHAOSHEAD="Ch(a|ä)oS;HEAd"
  KEYWORDS_CHOBITS="Chobits"
  KEYWORDS_CHROMESHELLEDREGIOS="Chrome(| )Shelled(| )Regios"
  KEYWORDS_CLANNAD="Clannad"
  KEYWORDS_COWBOYBEBOP="Cowboy(| )Bebop|Spike(| )Spiegel"
  KEYWORDS_DEADMANWONDERLAND="Deadman(| )Wonderland"
  KEYWORDS_EDENOFTHEEAST="Eden(| )of(| )the(| )East|Higashi(| )no(| )Eden"
  KEYWORDS_FLCL="\bFLCL\b|Fooly(|-| )Cooly"
  KEYWORDS_FULLMETALPANIC="Full(| )Metal(| )Panic|Fumoffu|Sousuke(| )Sagara|Kurz(| )Weber|Melissa(| )Mao|(Captain|Teletha|Tessa|Leonard)(| )Testarossa|Kaname(| )Chidori"
  KEYWORDS_GHOSTINTHESHELL="Ghost(| )in(| )the(| )Shell|(Major|Motoko)(| )Kusanagi|Togusa"
  KEYWORDS_GUNGRAVE="Gungrave"
  KEYWORDS_HARUHISUZUMIYA="Haruhi(| )Suzumiya|\bKyon(|s)\b|Mikuru(| )Asahina|Itsuki(| )Koizumi|Yuki(| )Nagato"
  KEYWORDS_HETALIA="Hetalia"
  KEYWORDS_INITIALD="Initial(| )D"
  KEYWORDS_KAZENOSTIGMA="Kaze(| )no(| )Stigma|Stigma(| )of(| )the(| )Wind|(Ayano|Kazuma)(| )(Yagami|Kannagi)|Kannagi(| )Clan"
  KEYWORDS_KNIGHTSOFSIDONIA="Knights(| )of(| )Sidonia|Sidonia(| )no(| )kishi"
  KEYWORDS_KOTOURASAN="Kotoura-san"
  KEYWORDS_LEGENDOFTHELEGENDARYHEROES="Legend(| )Of(| )the(| )Legendary(| )Heroes|Densetsu(| )no(| )Yuusha(| )no(| )Densetsu|Ryner(| )Lute|Ferris(| )Eris|Sion(| )Astal"
  KEYWORDS_LUCKYSTAR="Lucky(| )Star|Konata(| )Izumi|Izumi(| )Konata|(Kagami|Tsukasa)(| )Hiiragi|Hiiragi(| )(Kagami|Tsukasa)|Miyuki(| )Takara|Takara(| )Yuki"
  KEYWORDS_MACROSS="Macross|Lynn(| )Minmay|Hikaru(| )(Ichijo|Ichijyo)"
  KEYWORDS_MADOKAMAGICA="Madoka(| )Magica"
  KEYWORDS_NEONGENESISEVANGELION="Evangelion|(Shinji|Gendo)(| )Ikari|Asuka(| )(|Langley)(| )(Soryu|Shinikami)|Rei(| )Ayanami"
  KEYWORDS_PLANETES="Planetes|Ai(| )Tanabe|Hachirota(| )Hoshino"
  KEYWORDS_PSYCHOPASS="Psycho(|-| )Pass"
  KEYWORDS_RAHXEPHON="RahXephon"
  KEYWORDS_ROBOTICSNOTES="Robotics(|;| |-)Notes|Akiho(| )Senomiya|Kaito(| )Yashio"
  KEYWORDS_SHAKUGANNOSHANA="Shakugan(| )no(| )Shana"
  KEYWORDS_STEINSGATE="Steins(|;| |-)Gate|Kurisu(| )Makise|Makise(| )Kurisu|Rintarou(| )Okabe|Okabe(| )Rintarou|Mayuri(| )Shiina|Shiina(| )Mayuri|Itaru(| )Hashida|Hashida(| )Itaru|Suzuha(| )Amane|Amane(| )Suzuha"
  KEYWORDS_SUMMERWARS="Summer(| )Wars"
  KEYWORDS_SWORDARTONLINE="Sword(| )Art(| )Online|Kirito|Kazuto(| )Kirigaya|Asuna(| )Yuuki"
  KEYWORDS_TRIGUN="\bTrigun|Vash(| )the(| )Stampede"

  KEYWORDS_CARTOONS_OTHER="$KEYWORDS_ADPOLICE|$KEYWORDS_ANGELBEATS|$KEYWORDS_ATTACKONTITAN|$KEYWORDS_BACCANO|$KEYWORDS_BUBBLEGUM|$KEYWORDS_CAPTAINHARLOCK|$KEYWORDS_CHAOSHEAD|$KEYWORDS_CHOBITS|$KEYWORDS_CHROMESHELLEDREGIOS|$KEYWORDS_CLANNAD|$KEYWORDS_COWBOYBEBOP|$KEYWORDS_DEADMANWONDERLAND|$KEYWORDS_EDENOFTHEEAST|$KEYWORDS_FLCL|$KEYWORDS_FULLMETALPANIC|$KEYWORDS_GHOSTINTHESHELL|$KEYWORDS_GUNGRAVE|$KEYWORDS_HARUHISUZUMIYA|$KEYWORDS_HETALIA|$KEYWORDS_INITIALD|$KEYWORDS_KAZENOSTIGMA|$KEYWORDS_KNIGHTSOFSIDONIA|$KEYWORDS_KOTOURASAN|$KEYWORDS_LEGENDOFTHELEGENDARYHEROES|$KEYWORDS_LUCKYSTAR|$KEYWORDS_MACROSS|$KEYWORDS_MADOKAMAGICA|$KEYWORDS_NEONGENESISEVANGELION|$KEYWORDS_PLANETES|$KEYWORDS_PSYCHOPASS|$KEYWORDS_RAHXEPHON|$KEYWORDS_ROBOTICSNOTES|$KEYWORDS_SHAKUGANNOSHANA|$KEYWORDS_STEINSGATE|$KEYWORDS_SUMMERWARS|$KEYWORDS_SWORDARTONLINE|$KEYWORDS_TRIGUN"

  $CARTOONDIR/American_Dad/AmericanDad.sh
  $CARTOONDIR/Avatar_The_Last_Airbender/Avatar.sh
  $CARTOONDIR/Code_Geass/CodeGeass.sh #KEYWORDS_CODEGEASS
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
  $CARTOONDIR/Phineas_and_Ferb/PhineasAndFerb.sh #KEYWORDS_PHINEASANDFERB
  $CARTOONDIR/Pokémon_anime/PokémonAnime.sh
  $CARTOONDIR/South_Park/SouthPark.sh
  $CARTOONDIR/Danny_Phantom/DannyPhantom.sh
  $CARTOONDIR/Sailor_Moon/SailorMoon.sh #KEYWORDS_SAILORMOON
  $CARTOONDIR/SpongeBob_SquarePants/SpongeBobSquarePants.sh
  $CARTOONDIR/Star_Wars_The_Clone_Wars/CloneWars.sh
  $CARTOONDIR/The_Simpsons/TheSimpsons.sh
  $CARTOONDIR/Vampire_Knight/VampireKnight.sh #KEYWORDS_VAMPIREKNIGHT

  CARTOONS=$(egrep -i "$KEYWORDS_CARTOONS_OTHER" "$NEWPAGES")

  categorize "CARTOONS" "Cartoons and anime"
  
  debug_end "Cartoons and anime"

fi



