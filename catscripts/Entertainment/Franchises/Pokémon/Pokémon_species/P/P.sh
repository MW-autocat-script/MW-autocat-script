#!/bin/bash
egrep -i 'Pachirisu' newpages.txt >> Pachirisu.txt
egrep -i 'Palkia' newpages.txt >> Palkia.txt
egrep -i 'Palpitoad' newpages.txt >> Palpitoad.txt
egrep -i 'Panpour' newpages.txt >> Panpour.txt
egrep -i 'Pansage' newpages.txt >> Pansage.txt
egrep -i 'Pansear' newpages.txt >> Pansear.txt
egrep -i 'Paras\b' newpages.txt >> Paras.txt
egrep -i 'Parasect' newpages.txt >> Parasect.txt
egrep -i 'Patrat' newpages.txt >> Patrat.txt
egrep -i 'Pawniard' newpages.txt >> Pawniard.txt
egrep -i 'Pelipper' newpages.txt >> Pelipper.txt
egrep -i 'Persian\b' newpages.txt | egrep -iv 'empire|language|speak|cat|kitten|gulf|language|religion|in Persian\]\]|capital|leader|war|Persian ruler' >> Persian.txt
egrep -i 'Petilil' newpages.txt >> Petilil.txt
egrep -i 'Phanpy' newpages.txt >> Phanpy.txt
egrep -i 'Phione' newpages.txt >> Phione.txt
egrep -i 'Pichu' newpages.txt >> Pichu.txt
egrep -i 'Pidgeot\b' newpages.txt >> Pidgeot.txt
egrep -i 'Pidgeotto' newpages.txt >> Pidgeotto.txt
egrep -i 'Pidgey' newpages.txt >> Pidgey.txt
egrep -i 'Pignite' newpages.txt >> Pignite.txt
egrep -i 'Pikachu' newpages.txt >> Pikachu.txt
egrep -i 'Piloswine' newpages.txt >> Piloswine.txt
egrep -i 'Pineco\b' newpages.txt >> Pineco.txt
egrep -i 'Pinsir' newpages.txt >> Pinsir.txt
egrep -i 'Piplup' newpages.txt >> Piplup.txt
egrep -i 'Plusle' newpages.txt >> Plusle.txt
egrep -i 'Politoed' newpages.txt >> Politoed.txt
egrep -i 'Poliwag' newpages.txt >> Poliwag.txt
egrep -i 'Poliwhirl' newpages.txt >> Poliwhirl.txt
egrep -i 'Poliwrath' newpages.txt >> Poliwrath.txt
egrep -i 'Ponyta\b' newpages.txt >> Ponyta.txt
egrep -i 'Poochyena' newpages.txt >> Poochyena.txt
egrep -i 'Porygon' newpages.txt >> Porygon.txt
egrep -i 'Porygon-Z' newpages.txt >> Porygon-Z.txt
egrep -i 'Porygon2' newpages.txt >> Porygon2.txt
egrep -i 'Primeape' newpages.txt >> Primeape.txt
egrep -i 'Prinplup' newpages.txt >> Prinplup.txt
egrep -i 'Probopass' newpages.txt >> Probopass.txt
egrep -i 'Psyduck' newpages.txt >> Psyduck.txt
egrep -i 'Pupitar' newpages.txt >> Pupitar.txt
egrep -i 'Purrloin' newpages.txt >> Purrloin.txt
egrep -i 'Purugly' newpages.txt >> Purugly.txt

Pachirisu=`stat --print=%s Pachirisu.txt`
Palkia=`stat --print=%s Palkia.txt`
Palpitoad=`stat --print=%s Palpitoad.txt`
Panpour=`stat --print=%s Panpour.txt`
Pansage=`stat --print=%s Pansage.txt`
Pansear=`stat --print=%s Pansear.txt`
Paras=`stat --print=%s Paras.txt`
Parasect=`stat --print=%s Parasect.txt`
Patrat=`stat --print=%s Patrat.txt`
Pawniard=`stat --print=%s Pawniard.txt`
Pelipper=`stat --print=%s Pelipper.txt`
Persian=`stat --print=%s Persian.txt`
Petilil=`stat --print=%s Petilil.txt`
Phanpy=`stat --print=%s Phanpy.txt`
Phione=`stat --print=%s Phione.txt`
Pichu=`stat --print=%s Pichu.txt`
Pidgeot=`stat --print=%s Pidgeot.txt`
Pidgeotto=`stat --print=%s Pidgeotto.txt`
Pidgey=`stat --print=%s Pidgey.txt`
Pignite=`stat --print=%s Pignite.txt`
Pikachu=`stat --print=%s Pikachu.txt`
Piloswine=`stat --print=%s Piloswine.txt`
Pineco=`stat --print=%s Pineco.txt`
Pinsir=`stat --print=%s Pinsir.txt`
Piplup=`stat --print=%s Piplup.txt`
Plusle=`stat --print=%s Plusle.txt`
Politoed=`stat --print=%s Politoed.txt`
Poliwag=`stat --print=%s Poliwag.txt`
Poliwhirl=`stat --print=%s Poliwhirl.txt`
Poliwrath=`stat --print=%s Poliwrath.txt`
Ponyta=`stat --print=%s Ponyta.txt`
Poochyena=`stat --print=%s Poochyena.txt`
Porygon=`stat --print=%s Porygon.txt`
PorygonZ=`stat --print=%s Porygon-Z.txt`
Porygon2=`stat --print=%s Porygon2.txt`
Primeape=`stat --print=%s Primeape.txt`
Prinplup=`stat --print=%s Prinplup.txt`
Probopass=`stat --print=%s Probopass.txt`
Psyduck=`stat --print=%s Psyduck.txt`
Pupitar=`stat --print=%s Pupitar.txt`
Purrloin=`stat --print=%s Purrloin.txt`
Purugly=`stat --print=%s Purugly.txt`

if [ $Pachirisu -ne 0 ];
then
  export CATFILE="Pachirisu.txt"
  export CATNAME="Pachirisu"
  $CATEGORIZE
fi

if [ $Palkia -ne 0 ];
then
  export CATFILE="Palkia.txt"
  export CATNAME="Palkia"
  $CATEGORIZE
fi

if [ $Palpitoad -ne 0 ];
then
  export CATFILE="Palpitoad.txt"
  export CATNAME="Palpitoad"
  $CATEGORIZE
fi

if [ $Panpour -ne 0 ];
then
  export CATFILE="Panpour.txt"
  export CATNAME="Panpour"
  $CATEGORIZE
fi

if [ $Pansage -ne 0 ];
then
  export CATFILE="Pansage.txt"
  export CATNAME="Pansage"
  $CATEGORIZE
fi

if [ $Pansear -ne 0 ];
then
  export CATFILE="Pansear.txt"
  export CATNAME="Pansear"
  $CATEGORIZE
fi

if [ $Paras -ne 0 ];
then
  export CATFILE="Paras.txt"
  export CATNAME="Paras"
  $CATEGORIZE
fi

if [ $Parasect -ne 0 ];
then
  export CATFILE="Parasect.txt"
  export CATNAME="Parasect"
  $CATEGORIZE
fi

if [ $Patrat -ne 0 ];
then
  export CATFILE="Patrat.txt"
  export CATNAME="Patrat"
  $CATEGORIZE
fi

if [ $Pawniard -ne 0 ];
then
  export CATFILE="Pawniard.txt"
  export CATNAME="Pawniard"
  $CATEGORIZE
fi

if [ $Pelipper -ne 0 ];
then
  export CATFILE="Pelipper.txt"
  export CATNAME="Pelipper"
  $CATEGORIZE
fi

if [ $Persian -ne 0 ];
then
  export CATFILE="Persian.txt"
  export CATNAME="Persian"
  $CATEGORIZE
fi

if [ $Petilil -ne 0 ];
then
  export CATFILE="Petilil.txt"
  export CATNAME="Petilil"
  $CATEGORIZE
fi

if [ $Phanpy -ne 0 ];
then
  export CATFILE="Phanpy.txt"
  export CATNAME="Phanpy"
  $CATEGORIZE
fi

if [ $Phione -ne 0 ];
then
  export CATFILE="Phione.txt"
  export CATNAME="Phione"
  $CATEGORIZE
fi

if [ $Pichu -ne 0 ];
then
  export CATFILE="Pichu.txt"
  export CATNAME="Pichu"
  $CATEGORIZE
fi

if [ $Pidgeot -ne 0 ];
then
  export CATFILE="Pidgeot.txt"
  export CATNAME="Pidgeot"
  $CATEGORIZE
fi

if [ $Pidgeotto -ne 0 ];
then
  export CATFILE="Pidgeotto.txt"
  export CATNAME="Pidgeotto"
  $CATEGORIZE
fi

if [ $Pidgey -ne 0 ];
then
  export CATFILE="Pidgey.txt"
  export CATNAME="Pidgey"
  $CATEGORIZE
fi

if [ $Pignite -ne 0 ];
then
  export CATFILE="Pignite.txt"
  export CATNAME="Pignite"
  $CATEGORIZE
fi

if [ $Pikachu -ne 0 ];
then
  export CATFILE="Pikachu.txt"
  export CATNAME="Pikachu"
  $CATEGORIZE
fi

if [ $Piloswine -ne 0 ];
then
  export CATFILE="Piloswine.txt"
  export CATNAME="Piloswine"
  $CATEGORIZE
fi

if [ $Pineco -ne 0 ];
then
  export CATFILE="Pineco.txt"
  export CATNAME="Pineco"
  $CATEGORIZE
fi

if [ $Pinsir -ne 0 ];
then
  export CATFILE="Pinsir.txt"
  export CATNAME="Pinsir"
  $CATEGORIZE
fi

if [ $Piplup -ne 0 ];
then
  export CATFILE="Piplup.txt"
  export CATNAME="Piplup"
  $CATEGORIZE
fi

if [ $Plusle -ne 0 ];
then
  export CATFILE="Plusle.txt"
  export CATNAME="Plusle"
  $CATEGORIZE
fi

if [ $Politoed -ne 0 ];
then
  export CATFILE="Politoed.txt"
  export CATNAME="Politoed"
  $CATEGORIZE
fi

if [ $Poliwag -ne 0 ];
then
  export CATFILE="Poliwag.txt"
  export CATNAME="Poliwag"
  $CATEGORIZE
fi

if [ $Poliwhirl -ne 0 ];
then
  export CATFILE="Poliwhirl.txt"
  export CATNAME="Poliwhirl"
  $CATEGORIZE
fi

if [ $Poliwrath -ne 0 ];
then
  export CATFILE="Poliwrath.txt"
  export CATNAME="Poliwrath"
  $CATEGORIZE
fi

if [ $Ponyta -ne 0 ];
then
  export CATFILE="Ponyta.txt"
  export CATNAME="Ponyta"
  $CATEGORIZE
fi

if [ $Poochyena -ne 0 ];
then
  export CATFILE="Poochyena.txt"
  export CATNAME="Poochyena"
  $CATEGORIZE
fi

if [ $Porygon -ne 0 ];
then
  export CATFILE="Porygon.txt"
  export CATNAME="Porygon"
  $CATEGORIZE
fi

if [ $PorygonZ -ne 0 ];
then
  export CATFILE="Porygon-Z.txt"
  export CATNAME="Porygon-Z"
  $CATEGORIZE
fi

if [ $Porygon2 -ne 0 ];
then
  export CATFILE="Porygon2.txt"
  export CATNAME="Porygon2"
  $CATEGORIZE
fi

if [ $Primeape -ne 0 ];
then
  export CATFILE="Primeape.txt"
  export CATNAME="Primeape"
  $CATEGORIZE
fi

if [ $Prinplup -ne 0 ];
then
  export CATFILE="Prinplup.txt"
  export CATNAME="Prinplup"
  $CATEGORIZE
fi

if [ $Probopass -ne 0 ];
then
  export CATFILE="Probopass.txt"
  export CATNAME="Probopass"
  $CATEGORIZE
fi

if [ $Psyduck -ne 0 ];
then
  export CATFILE="Psyduck.txt"
  export CATNAME="Psyduck"
  $CATEGORIZE
fi

if [ $Pupitar -ne 0 ];
then
  export CATFILE="Pupitar.txt"
  export CATNAME="Pupitar"
  $CATEGORIZE
fi

if [ $Purrloin -ne 0 ];
then
  export CATFILE="Purrloin.txt"
  export CATNAME="Purrloin"
  $CATEGORIZE
fi

if [ $Purugly -ne 0 ];
then
  export CATFILE="Purugly.txt"
  export CATNAME="Purugly"
  $CATEGORIZE
fi


rm Pachirisu.txt
rm Palkia.txt
rm Palpitoad.txt
rm Panpour.txt
rm Pansage.txt
rm Pansear.txt
rm Paras.txt
rm Parasect.txt
rm Patrat.txt
rm Pawniard.txt
rm Pelipper.txt
rm Persian.txt
rm Petilil.txt
rm Phanpy.txt
rm Phione.txt
rm Pichu.txt
rm Pidgeot.txt
rm Pidgeotto.txt
rm Pidgey.txt
rm Pignite.txt
rm Pikachu.txt
rm Piloswine.txt
rm Pineco.txt
rm Pinsir.txt
rm Piplup.txt
rm Plusle.txt
rm Politoed.txt
rm Poliwag.txt
rm Poliwhirl.txt
rm Poliwrath.txt
rm Ponyta.txt
rm Poochyena.txt
rm Porygon.txt
rm Porygon-Z.txt
rm Porygon2.txt
rm Primeape.txt
rm Prinplup.txt
rm Probopass.txt
rm Psyduck.txt
rm Pupitar.txt
rm Purrloin.txt
rm Purugly.txt