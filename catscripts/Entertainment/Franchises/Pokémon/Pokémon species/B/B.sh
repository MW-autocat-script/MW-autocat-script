#!/bin/bash 

cat newpages.txt | egrep -i 'Bagon' >> Bagon.txt
cat newpages.txt | egrep -i 'Baltoy' >> Baltoy.txt
cat newpages.txt | egrep -i 'Banette' >> Banette.txt
cat newpages.txt | egrep -i 'Barboach' >> Barboach.txt
cat newpages.txt | egrep -i 'Basculin' >> Basculin.txt
cat newpages.txt | egrep -i 'Bastiodon' >> Bastiodon.txt
cat newpages.txt | egrep -i 'Bayleef' >> Bayleef.txt
cat newpages.txt | egrep -i 'Beartic' >> Beartic.txt
cat newpages.txt | egrep -i 'Beautifly' >> Beautifly.txt
cat newpages.txt | egrep -i 'Beedrill' >> Beedrill.txt
cat newpages.txt | egrep -i 'Beheeyem' >> Beheeyem.txt
cat newpages.txt | egrep -i 'Beldum' >> Beldum.txt
cat newpages.txt | egrep -i 'Bellossom' >> Bellossom.txt
cat newpages.txt | egrep -i 'Bellsprout' >> Bellsprout.txt
cat newpages.txt | egrep -i 'Bibarel' >> Bibarel.txt
cat newpages.txt | egrep -i 'Bidoof' >> Bidoof.txt
cat newpages.txt | egrep -i 'Bisharp' >> Bisharp.txt
cat newpages.txt | egrep -i 'Blastoise' >> Blastoise.txt
cat newpages.txt | egrep -i 'Blaziken' >> Blaziken.txt
cat newpages.txt | egrep -i 'Blissey' >> Blissey.txt
cat newpages.txt | egrep -i 'Blitzle' >> Blitzle.txt
cat newpages.txt | egrep -i 'Boldore' >> Boldore.txt
cat newpages.txt | egrep -i 'Bonsly' >> Bonsly.txt
cat newpages.txt | egrep -i 'Bouffalant' >> Bouffalant.txt
cat newpages.txt | egrep -i 'Braviary' >> Braviary.txt
cat newpages.txt | egrep -i 'Breloom' >> Breloom.txt
cat newpages.txt | egrep -i 'Bronzong' >> Bronzong.txt
cat newpages.txt | egrep -i 'Bronzor' >> Bronzor.txt
cat newpages.txt | egrep -i 'Budew' >> Budew.txt
cat newpages.txt | egrep -i 'Buizel' >> Buizel.txt
cat newpages.txt | egrep -i 'Bulbasaur' >> Bulbasaur.txt
cat newpages.txt | egrep -i 'Buneary' >> Buneary.txt
cat newpages.txt | egrep -i 'Burmy' >> Burmy.txt
cat newpages.txt | egrep -i 'Butterfree' >> Butterfree.txt



BAGON=`stat --print=%s Bagon.txt`
BALTOY=`stat --print=%s Baltoy.txt`
BANETTE=`stat --print=%s Banette.txt`
BARBOACH=`stat --print=%s Barboach.txt`
BASCULIN=`stat --print=%s Basculin.txt`
BASTIODON=`stat --print=%s Bastiodon.txt`
BAYLEEF=`stat --print=%s Bayleef.txt`
BEARTIC=`stat --print=%s Beartic.txt`
BEAUTIFLY=`stat --print=%s Beautifly.txt`
BEEDRILL=`stat --print=%s Beedrill.txt`
BEHEYEM=`stat --print=%s Beheeyem.txt`
BELDUM=`stat --print=%s Beldum.txt`
BELLOSSOM=`stat --print=%s Bellossom.txt`
BELLSPROUT=`stat --print=%s Bellsprout.txt`
BIBAREL=`stat --print=%s Bibarel.txt`
BIDOOF=`stat --print=%s Bidoof.txt`
BISHARP=`stat --print=%s Bisharp.txt`
BLASTOISE=`stat --print=%s Blastoise.txt`
BLAZIKEN=`stat --print=%s Blaziken.txt`
BLISSEY=`stat --print=%s Blissey.txt`
BLITZLE=`stat --print=%s Blitzle.txt`
BOLDORE=`stat --print=%s Boldore.txt`
BONSLY=`stat --print=%s Bonsly.txt`
BOUFFALANT=`stat --print=%s Bouffalant.txt`
BRAVIARY=`stat --print=%s Braviary.txt`
BRELOOM=`stat --print=%s Breloom.txt`
BRONZONG=`stat --print=%s Bronzong.txt`
BRONZOR=`stat --print=%s Bronzor.txt`
BUDEW=`stat --print=%s Budew.txt`
BUIZEL=`stat --print=%s Buizel.txt`
BULBASAUR=`stat --print=%s Bulbasaur.txt`
BUNEARY=`stat --print=%s Buneary.txt`
BURMY=`stat --print=%s Burmy.txt`
BUTTERFREE=`stat --print=%s Butterfree.txt`


if [ $BAGON -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBagon.sh
fi

if [ $BALTOY -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBaltoy.sh
fi

if [ $BANETTE -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBanette.sh
fi

if [ $BARBOACH -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBarboach.sh
fi

if [ $BASCULIN -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBasculin.sh
fi

if [ $BASTIODON -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBastiodon.sh
fi

if [ $BAYLEEF -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBayleef.sh
fi

if [ $BEARTIC -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBeartic.sh
fi

if [ $BEAUTIFLY -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBeautifly.sh
fi

if [ $BEEDRILL -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBeedrill.sh
fi

if [ $BEHEYEM -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBeheyem.sh
fi

if [ $BELDUM -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBeldum.sh
fi

if [ $BELLOSSOM -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBellossom.sh
fi

if [ $BELLSPROUT -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBellsprout.sh
fi

if [ $BIBAREL -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBibarel.sh
fi

if [ $BIDOOF -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBidoof.sh
fi

if [ $BISHARP -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBisharp.sh
fi

if [ $BLASTOISE -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBlastoise.sh
fi

if [ $BLAZIKEN -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBlaziken.sh
fi

if [ $BLISSEY -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBlissey.sh
fi

if [ $BLITZLE -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBlitzle.sh
fi

if [ $BOLDORE -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBoldore.sh
fi

if [ $BONSLY -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBonsly.sh
fi

if [ $BOUFFALANT -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBouffalant.sh
fi

if [ $BRAVIARY -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBraviary.sh
fi

if [ $BRELOOM -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBreloom.sh
fi

if [ $BRONZONG -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBronzong.sh
fi

if [ $BRONZOR -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBronzor.sh
fi

if [ $BUDEW -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBudew.sh
fi

if [ $BUIZEL -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBuizel.sh
fi

if [ $BULBASAUR -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBulbasaur.sh
fi

if [ $BUNEARY -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBuneary.sh
fi

if [ $BURMY -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catBurmy.sh
fi

if [ $BUTTERFREE -ne 0 ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/B/catButterfree.sh
fi


rm Bagon.txt
rm Baltoy.txt
rm Banette.txt
rm Barboach.txt
rm Basculin.txt
rm Bastiodon.txt
rm Bayleef.txt
rm Beartic.txt
rm Beautifly.txt
rm Beedrill.txt
rm Beheeyem.txt
rm Beldum.txt
rm Bellossom.txt
rm Bellsprout.txt
rm Bibarel.txt
rm Bidoof.txt
rm Bisharp.txt
rm Blastoise.txt
rm Blaziken.txt
rm Blissey.txt
rm Blitzle.txt
rm Boldore.txt
rm Bonsly.txt
rm Bouffalant.txt
rm Braviary.txt
rm Breloom.txt
rm Bronzong.txt
rm Bronzor.txt
rm Budew.txt
rm Buizel.txt
rm Bulbasaur.txt
rm Buneary.txt
rm Burmy.txt
rm Butterfree.txt