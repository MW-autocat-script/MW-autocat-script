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
   export CATFILE="Bagon.txt"
   export CATNAME="Bagon"
   ./catscripts/Categorize.sh
fi

if [ $BALTOY -ne 0 ];
then
   export CATFILE="Baltoy.txt"
   export CATNAME="Baltoy"
   ./catscripts/Categorize.sh
fi

if [ $BANETTE -ne 0 ];
then
   export CATFILE="Banette.txt"
   export CATNAME="Banette"
   ./catscripts/Categorize.sh
fi

if [ $BARBOACH -ne 0 ];
then
   export CATFILE="Barboach.txt"
   export CATNAME="Barboach"
   ./catscripts/Categorize.sh
fi

if [ $BASCULIN -ne 0 ];
then
   export CATFILE="Basculin.txt"
   export CATNAME="Basculin"
   ./catscripts/Categorize.sh
fi

if [ $BASTIODON -ne 0 ];
then
   export CATFILE="Bastiodon.txt"
   export CATNAME="Bastiodon"
   ./catscripts/Categorize.sh
fi

if [ $BAYLEEF -ne 0 ];
then
   export CATFILE="Bayleef.txt"
   export CATNAME="Bayleef"
   ./catscripts/Categorize.sh
fi

if [ $BEARTIC -ne 0 ];
then
   export CATFILE="Beartic.txt"
   export CATNAME="Beartic"
   ./catscripts/Categorize.sh
fi

if [ $BEAUTIFLY -ne 0 ];
then
   export CATFILE="Beautifly.txt"
   export CATNAME="Beautifly"
   ./catscripts/Categorize.sh
fi

if [ $BEEDRILL -ne 0 ];
then
   export CATFILE="Beedrill.txt"
   export CATNAME="Beedrill"
   ./catscripts/Categorize.sh
fi

if [ $BEHEYEM -ne 0 ];
then
   export CATFILE="Beheeyem.txt"
   export CATNAME="Beheeyem"
   ./catscripts/Categorize.sh
fi

if [ $BELDUM -ne 0 ];
then
   export CATFILE="Beldum.txt"
   export CATNAME="Beldum"
   ./catscripts/Categorize.sh
fi

if [ $BELLOSSOM -ne 0 ];
then
   export CATFILE="Bellossom.txt"
   export CATNAME="Bellossom"
   ./catscripts/Categorize.sh
fi

if [ $BELLSPROUT -ne 0 ];
then
   export CATFILE="Bellsprout.txt"
   export CATNAME="Bellsprout"
   ./catscripts/Categorize.sh
fi

if [ $BIBAREL -ne 0 ];
then
   export CATFILE="Bibarel.txt"
   export CATNAME="Bibarel"
   ./catscripts/Categorize.sh
fi

if [ $BIDOOF -ne 0 ];
then
   export CATFILE="Bidoof.txt"
   export CATNAME="Bidoof"
   ./catscripts/Categorize.sh
fi

if [ $BISHARP -ne 0 ];
then
   export CATFILE="Bisharp.txt"
   export CATNAME="Bisharp"
   ./catscripts/Categorize.sh
fi

if [ $BLASTOISE -ne 0 ];
then
   export CATFILE="Blastoise.txt"
   export CATNAME="Blastoise"
   ./catscripts/Categorize.sh
fi

if [ $BLAZIKEN -ne 0 ];
then
   export CATFILE="Blaziken.txt"
   export CATNAME="Blaziken"
   ./catscripts/Categorize.sh
fi

if [ $BLISSEY -ne 0 ];
then
   export CATFILE="Blissey.txt"
   export CATNAME="Blissey"
   ./catscripts/Categorize.sh
fi

if [ $BLITZLE -ne 0 ];
then
   export CATFILE="Blitzle.txt"
   export CATNAME="Blitzle"
   ./catscripts/Categorize.sh
fi

if [ $BOLDORE -ne 0 ];
then
   export CATFILE="Boldore.txt"
   export CATNAME="Boldore"
   ./catscripts/Categorize.sh
fi

if [ $BONSLY -ne 0 ];
then
   export CATFILE="Bonsly.txt"
   export CATNAME="Bonsly"
   ./catscripts/Categorize.sh
fi

if [ $BOUFFALANT -ne 0 ];
then
   export CATFILE="Bouffalant.txt"
   export CATNAME="Bouffalant"
   ./catscripts/Categorize.sh
fi

if [ $BRAVIARY -ne 0 ];
then
   export CATFILE="Braviary.txt"
   export CATNAME="Braviary"
   ./catscripts/Categorize.sh
fi

if [ $BRELOOM -ne 0 ];
then
   export CATFILE="Breloom.txt"
   export CATNAME="Breloom"
   ./catscripts/Categorize.sh
fi

if [ $BRONZONG -ne 0 ];
then
   export CATFILE="Bronzong.txt"
   export CATNAME=""
   ./catscripts/Categorize.sh
fi

if [ $BRONZOR -ne 0 ];
then
   export CATFILE="Bronzor.txt"
   export CATNAME="Bronzor"
   ./catscripts/Categorize.sh
fi

if [ $BUDEW -ne 0 ];
then
   export CATFILE="Budew.txt"
   export CATNAME="Budew"
   ./catscripts/Categorize.sh
fi

if [ $BUIZEL -ne 0 ];
then
   export CATFILE="Buizel.txt"
   export CATNAME="Buizel"
   ./catscripts/Categorize.sh
fi

if [ $BULBASAUR -ne 0 ];
then
   export CATFILE="Bulbasaur.txt"
   export CATNAME="Bulbasaur"
   ./catscripts/Categorize.sh
fi

if [ $BUNEARY -ne 0 ];
then
   export CATFILE="Buneary.txt"
   export CATNAME="Buneary"
   ./catscripts/Categorize.sh
fi

if [ $BURMY -ne 0 ];
then
   export CATFILE="Burmy.txt"
   export CATNAME="Burmy"
   ./catscripts/Categorize.sh
fi

if [ $BUTTERFREE -ne 0 ];
then
   export CATFILE="Butterfree.txt"
   export CATNAME="Butterfree"
   ./catscripts/Categorize.sh
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