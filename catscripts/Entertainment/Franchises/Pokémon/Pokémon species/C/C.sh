#!/bin/bash

cat newpages.txt | egrep -i 'Cacnea' >>  Cacnea.txt
cat newpages.txt | egrep -i 'Cacturne' >>  Cacturne.txt
cat newpages.txt | egrep -i 'Camerupt' >> Camerupt.txt
cat newpages.txt | egrep -i 'Carnivine' >> Carnivine.txt
cat newpages.txt | egrep -i 'Carracosta' >> Carracosta.txt
cat newpages.txt | egrep -i 'Carvanha' >> Carvanha.txt
cat newpages.txt | egrep -i 'Cascoon' >> Cascoon.txt
cat newpages.txt | egrep -i 'Castform' >> Castform.txt
cat newpages.txt | egrep -i 'Caterpie' >> Caterpie.txt
cat newpages.txt | egrep -i 'Celebi' >> Celebi.txt
cat newpages.txt | egrep -i 'Chandelure' >> Chandelure.txt
cat newpages.txt | egrep -i 'Chansey' >> Chansey.txt
cat newpages.txt | egrep -i 'Charizard' >> Charizard.txt
cat newpages.txt | egrep -i 'Charmander' >> Charmander.txt
cat newpages.txt | egrep -i 'Charmeleon' >> Charmeleon.txt
cat newpages.txt | egrep -i 'Chatot' >> Chatot.txt
cat newpages.txt | egrep -i 'Cherrim' >> Cherrim.txt
cat newpages.txt | egrep -i "Cherubi\b|Cherubi's|Cherubis\b" >> Cherubi.txt
cat newpages.txt | egrep -i 'Chikorita' >> Chikorita.txt
cat newpages.txt | egrep -i 'Chimchar' >> Chimchar.txt
cat newpages.txt | egrep -i 'Chimecho' >> Chimecho.txt
cat newpages.txt | egrep -i 'Chinchou' >> Chinchou.txt
cat newpages.txt | egrep -i 'Chingling' >> Chingling.txt
cat newpages.txt | egrep -i 'Cinccino' >> Cinccino.txt
cat newpages.txt | egrep -i 'Clamperl' >> Clamperl.txt
cat newpages.txt | egrep -i 'Claydol' >> Claydol.txt
cat newpages.txt | egrep -i 'Clefable' >> Clefable.txt
cat newpages.txt | egrep -i 'Clefairy' >> Clefairy.txt
cat newpages.txt | egrep -i 'Cleffa' >> Cleffa.txt
cat newpages.txt | egrep -i 'Cloyster' >> Cloyster.txt
cat newpages.txt | egrep -i 'Cobalion' >> Cobalion.txt
cat newpages.txt | egrep -i 'Cofagrigus|Confagrigus' >> Cofagrigus.txt
cat newpages.txt | egrep -i 'Combee' >> Combee.txt
cat newpages.txt | egrep -i 'Combusken' >> Combusken.txt
cat newpages.txt | egrep -i 'Conkeldurr' >> Conkeldurr.txt
cat newpages.txt | egrep -i 'Corphish' >> Corphish.txt
cat newpages.txt | egrep -i 'Corsola' >> Corsola.txt
cat newpages.txt | egrep -i 'Cottonee' >> Cottonee.txt
cat newpages.txt | egrep -i 'Cradily' >> Cradily.txt
cat newpages.txt | egrep -i 'Cranidos' >> Cranidos.txt
cat newpages.txt | egrep -i 'Crawdaunt' >> Crawdaunt.txt
cat newpages.txt | egrep -i 'Cresselia' >> Cresselia.txt
cat newpages.txt | egrep -i 'Croagunk' >> Croagunk.txt
cat newpages.txt | egrep -i 'Crobat' >> Crobat.txt
cat newpages.txt | egrep -i 'Croconaw' >> Croconaw.txt
cat newpages.txt | egrep -i 'Crustle' >> Crustle.txt
cat newpages.txt | egrep -i 'Cryogonal' >> Cryogonal.txt
cat newpages.txt | egrep -i 'Cubchoo' >> Cubchoo.txt
cat newpages.txt | egrep -i 'Cubone' >> Cubone.txt
cat newpages.txt | egrep -i 'Cyndaquil' >> Cyndaquil.txt


CACNEA=`stat --print=%s Cacnea.txt`
CACTURNE=`stat --print=%s Cacturne.txt`
CAMERUPT=`stat --print=%s Camerupt.txt`
CARNIVINE=`stat --print=%s Carnivine.txt`
CARRACOSTA=`stat --print=%s Carracosta.txt`
CARVANHA=`stat --print=%s Carvanha.txt`
CASCOON=`stat --print=%s Cascoon.txt`
CASTFORM=`stat --print=%s Castform.txt`
CATERPIE=`stat --print=%s Caterpie.txt`
CELEBI=`stat --print=%s Celebi.txt`
CHANDELURE=`stat --print=%s Chandelure.txt`
CHANSEY=`stat --print=%s Chansey.txt`
CHARIZARD=`stat --print=%s Charizard.txt`
CHARMANDER=`stat --print=%s Charmander.txt`
CHARMELEON=`stat --print=%s Charmeleon.txt`
CHATOT=`stat --print=%s Chatot.txt`
CHERRIM=`stat --print=%s Cherrim.txt`
CHERUBI=`stat --print=%s Cherubi.txt`
CHIKORITA=`stat --print=%s Chikorita.txt`
CHIMCHAR=`stat --print=%s Chimchar.txt`
CHIMECHO=`stat --print=%s Chimecho.txt`
CHINCHOU=`stat --print=%s Chinchou.txt`
CHINGLING=`stat --print=%s Chingling.txt`
CINCCINO=`stat --print=%s Cinccino.txt`
CLAMPERL=`stat --print=%s Clamperl.txt`
CLAYDOL=`stat --print=%s Claydol.txt`
CLEFABLE=`stat --print=%s Clefable.txt`
CLEFAIRY=`stat --print=%s Clefairy.txt`
CLEFFA=`stat --print=%s Cleffa.txt`
CLOYSTER=`stat --print=%s Cloyster.txt`
COBALION=`stat --print=%s Cobalion.txt`
COFAGRIGUS=`stat --print=%s Cofagrigus.txt`
COMBEE=`stat --print=%s Combee.txt`
COMBUSKEN=`stat --print=%s Combusken.txt`
CONKELDURR=`stat --print=%s Conkeldurr.txt`
CORPHISH=`stat --print=%s Corphish.txt`
CORSOLA=`stat --print=%s Corsola.txt`
COTTONEE=`stat --print=%s Cottonee.txt`
CRADILY=`stat --print=%s Cradily.txt`
CRANIDOS=`stat --print=%s Cranidos.txt`
CRAWDAUNT=`stat --print=%s Crawdaunt.txt`
CRESSELIA=`stat --print=%s Cresselia.txt`
CROAGUNK=`stat --print=%s Croagunk.txt`
CROBAT=`stat --print=%s Crobat.txt`
CROCONAW=`stat --print=%s Croconaw.txt`
CRUSTLE=`stat --print=%s Crustle.txt`
CRYOGONAL=`stat --print=%s Cryogonal.txt`
CUBCHOO=`stat --print=%s Cubchoo.txt`
CUBONE=`stat --print=%s Cubone.txt`
CYNDAQUIL=`stat --print=%s Cyndaquil.txt`


if [ $CACNEA -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCacnea.sh
fi


if [ $CACTURNE -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCacturne.sh
fi


if [ $CAMERUPT -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCamerupt.sh
fi


if [ $CARNIVINE -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCarnivine.sh
fi


if [ $CARRACOSTA -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCarracosta.sh
fi


if [ $CARVANHA -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCarvanha.sh
fi


if [ $CASCOON -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCascoon.sh
fi


if [ $CASTFORM -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCastform.sh
fi


if [ $CATERPIE -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCaterpie.sh
fi


if [ $CELEBI -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCelebi.sh
fi


if [ $CHANDELURE -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catChandelure.sh
fi


if [ $CHANSEY -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catChansey.sh
fi


if [ $CHARIZARD -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCharizard.sh
fi


if [ $CHARMANDER -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCharmander.sh
fi


if [ $CHARMELEON -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCharmeleon.sh
fi


if [ $CHATOT -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catChatot.sh
fi


if [ $CHERRIM -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCherrim.sh
fi


if [ $CHERUBI -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCherubi.sh
fi


if [ $CHIKORITA -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catChikorita.sh
fi


if [ $CHIMCHAR -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catChimchar.sh
fi


if [ $CHIMECHO -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catChimecho.sh
fi


if [ $CHINCHOU -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catChinchou.sh
fi


if [ $CHINGLING -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catChingling.sh
fi


if [ $CINCCINO -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCinccino.sh
fi


if [ $CLAMPERL -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catClamperl.sh
fi


if [ $CLAYDOL -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catClaydol.sh
fi


if [ $CLEFABLE -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catClefable.sh
fi


if [ $CLEFAIRY -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catClefairy.sh
fi


if [ $CLEFFA -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCleffa.sh
fi


if [ $CLOYSTER -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCloyster.sh
fi


if [ $COBALION -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCobalion.sh
fi


if [ $COFAGRIGUS -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCofagrigus.sh
fi


if [ $COMBEE -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCombee.sh
fi


if [ $COMBUSKEN -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCombusken.sh
fi


if [ $CONKELDURR -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catConkeldurr.sh
fi


if [ $CORPHISH -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCorphish.sh
fi


if [ $CORSOLA -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCorsola.sh
fi


if [ $COTTONEE -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCottonee.sh
fi


if [ $CRADILY -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCradily.sh
fi


if [ $CRANIDOS -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCranidos.sh
fi


if [ $CRAWDAUNT -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCrawdaunt.sh
fi


if [ $CRESSELIA -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCresselia.sh
fi


if [ $CROAGUNK -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCroagunk.sh
fi


if [ $CROBAT -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCrobat.sh
fi


if [ $CROCONAW -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCroconaw.sh
fi


if [ $CRUSTLE -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCrustle.sh
fi


if [ $CRYOGONAL -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCryogonal.sh
fi


if [ $CUBCHOO -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCubchoo.sh
fi


if [ $CUBONE -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCubone.sh
fi


if [ $CYNDAQUIL -ne 0  ];
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/C/catCyndaquil.sh
fi


rm Cacnea.txt
rm Cacturne.txt
rm Camerupt.txt
rm Carnivine.txt
rm Carracosta.txt
rm Carvanha.txt
rm Cascoon.txt
rm Castform.txt
rm Caterpie.txt
rm Celebi.txt
rm Chandelure.txt
rm Chansey.txt
rm Charizard.txt
rm Charmander.txt
rm Charmeleon.txt
rm Chatot.txt
rm Cherrim.txt
rm Cherubi.txt
rm Chikorita.txt
rm Chimchar.txt
rm Chimecho.txt
rm Chinchou.txt
rm Chingling.txt
rm Cinccino.txt
rm Clamperl.txt
rm Claydol.txt
rm Clefable.txt
rm Clefairy.txt
rm Cleffa.txt
rm Cloyster.txt
rm Cobalion.txt
rm Cofagrigus.txt
rm Combee.txt
rm Combusken.txt
rm Conkeldurr.txt
rm Corphish.txt
rm Corsola.txt
rm Cottonee.txt
rm Cradily.txt
rm Cranidos.txt
rm Crawdaunt.txt
rm Cresselia.txt
rm Croagunk.txt
rm Crobat.txt
rm Croconaw.txt
rm Crustle.txt
rm Cryogonal.txt
rm Cubchoo.txt
rm Cubone.txt
rm Cyndaquil.txt