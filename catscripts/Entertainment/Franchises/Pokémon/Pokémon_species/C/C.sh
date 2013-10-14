#!/bin/bash
#Pokemon species by name, starting with the letter C

KEYWORDS_CACNEA="Cacnea"
KEYWORDS_CACTURNE="Cacturne"
KEYWORDS_CAMERUPT="Camerupt"
KEYWORDS_CARNIVINE="Carnivine"
KEYWORDS_CARRACOSTA="Car(|r)acosta"
KEYWORDS_CARVANHA="Car(c|v|b)anha"
KEYWORDS_CASCOON="Cascoon"
KEYWORDS_CASTFORM="Castform"
KEYWORDS_CATERPIE="Caterpie"
KEYWORDS_CELEBI="Celebi"
KEYWORDS_CHANDELURE="Chandelure"
KEYWORDS_CHANSEY="Chansey"
KEYWORDS_CHARIZARD="Charizard"
KEYWORDS_CHARMANDER="Charmander"
KEYWORDS_CHARMELEON="Charmeleon"
KEYWORDS_CHATOT="Chatot"
KEYWORDS_CHERRIM="Cherrim"
KEYWORDS_CHERUBI="Cherubi\b|Cherubi's|Cherubis\b"
KEYWORDS_CHESPIN="Chespin"
KEYWORDS_CHIKORITA="Chikorita"
KEYWORDS_CHIMCHAR="Chimchar"
KEYWORDS_CHIMECHO="Chimecho"
KEYWORDS_CHINCHOU="Chinchou"
KEYWORDS_CHINGLING="Chingling"
KEYWORDS_CINCCINO="Cinccino"
KEYWORDS_CLAMPERL="Clamperl"
KEYWORDS_CLAYDOL="Claydol"
KEYWORDS_CLEFABLE="Clefable"
KEYWORDS_CLEFAIRY="Clefairy"
KEYWORDS_CLEFFA="Cleffa"
KEYWORDS_CLOYSTER="Cloyster"
KEYWORDS_COBALION="Cobalion"
KEYWORDS_COFAGRIGUS="Cofagrigus|Confagrigus"
KEYWORDS_COMBEE="Combee"
KEYWORDS_COMBUSKEN="Combusken"
KEYWORDS_CONKELDURR="Conkeldurr"
KEYWORDS_CORPHISH="Corphish"
KEYWORDS_CORSOLA="Corsola"
KEYWORDS_COTTONEE="Cottonee"
KEYWORDS_CRADILY="Cradily"
KEYWORDS_CRANIDOS="Cranidos"
KEYWORDS_CRAWDAUNT="Crawdaunt"
KEYWORDS_CRESSELIA="Cresselia"
KEYWORDS_CROAGUNK="Croagunk"
KEYWORDS_CROBAT="\bCrobat"
KEYWORDS_CROCONAW="Croconaw"
KEYWORDS_CRUSTLE="Crustle"
KEYWORDS_CRYOGONAL="Cryogonal"
KEYWORDS_CUBCHOO="Cubchoo"
KEYWORDS_CUBONE="Cubone"
KEYWORDS_CYNDAQUIL="Cyndaquil"
KEYWORDS_POKEMONSPECIES_C="$KEYWORDS_CACNEA|$KEYWORDS_CACTURNE|$KEYWORDS_CAMERUPT|$KEYWORDS_CARNIVINE|$KEYWORDS_CARRACOSTA|$KEYWORDS_CARVANHA|$KEYWORDS_CASCOON|$KEYWORDS_CASTFORM|$KEYWORDS_CATERPIE|$KEYWORDS_CELEBI|$KEYWORDS_CHANDELURE|$KEYWORDS_CHANSEY|$KEYWORDS_CHARIZARD|$KEYWORDS_CHARMANDER|$KEYWORDS_CHARMELEON|$KEYWORDS_CHATOT|$KEYWORDS_CHERRIM|$KEYWORDS_CHERUBI|$KEYWORDS_CHESPIN|$KEYWORDS_CHIKORITA|$KEYWORDS_CHIMCHAR|$KEYWORDS_CHIMECHO|$KEYWORDS_CHINCHOU|$KEYWORDS_CHINGLING|$KEYWORDS_CINCCINO|$KEYWORDS_CLAMPERL|$KEYWORDS_CLAYDOL|$KEYWORDS_CLEFABLE|$KEYWORDS_CLEFAIRY|$KEYWORDS_CLEFFA|$KEYWORDS_CLOYSTER|$KEYWORDS_COBALION|$KEYWORDS_COFAGRIGUS|$KEYWORDS_COMBEE|$KEYWORDS_COMBUSKEN|$KEYWORDS_CONKELDURR|$KEYWORDS_CORPHISH|$KEYWORDS_CORSOLA|$KEYWORDS_COTTONEE|$KEYWORDS_CRADILY|$KEYWORDS_CRANIDOS|$KEYWORDS_CRAWDAUNT|$KEYWORDS_CRESSELIA|$KEYWORDS_CROAGUNK|$KEYWORDS_CROBAT|$KEYWORDS_CROCONAW|$KEYWORDS_CRUSTLE|$KEYWORDS_CRYOGONAL|$KEYWORDS_CUBCHOO|$KEYWORDS_CUBONE|$KEYWORDS_CYNDAQUIL"

if [ "$1" == "" ]; #Normal run
then

  egrep -i "$KEYWORDS_CACNEA" newpages.txt >>  Cacnea.txt &
  egrep -i "$KEYWORDS_CACTURNE" newpages.txt >>  Cacturne.txt &
  egrep -i "$KEYWORDS_CAMERUPT" newpages.txt >> Camerupt.txt &
  egrep -i "$KEYWORDS_CARNIVINE" newpages.txt >> Carnivine.txt &
  egrep -i "$KEYWORDS_CARRACOSTA" newpages.txt >> Carracosta.txt &
  egrep -i "$KEYWORDS_CARVANHA" newpages.txt >> Carvanha.txt &
  egrep -i "$KEYWORDS_CASCOON" newpages.txt >> Cascoon.txt &
  egrep -i "$KEYWORDS_CASTFORM" newpages.txt >> Castform.txt &
  egrep -i "$KEYWORDS_CATERPIE" newpages.txt >> Caterpie.txt &
  egrep -i "$KEYWORDS_CELEBI" newpages.txt >> Celebi.txt &
  egrep -i "$KEYWORDS_CHANDELURE" newpages.txt >> Chandelure.txt &
  egrep -i "$KEYWORDS_CHANSEY" newpages.txt >> Chansey.txt &
  egrep -i "$KEYWORDS_CHARIZARD" newpages.txt >> Charizard.txt &
  egrep -i "$KEYWORDS_CHARMANDER" newpages.txt >> Charmander.txt &
  egrep -i "$KEYWORDS_CHARMELEON" newpages.txt >> Charmeleon.txt &
  egrep -i "$KEYWORDS_CHATOT" newpages.txt >> Chatot.txt &
  egrep -i "$KEYWORDS_CHERRIM" newpages.txt >> Cherrim.txt &
  egrep -i "$KEYWORDS_CHERUBI" newpages.txt >> Cherubi.txt &
  egrep -i "$KEYWORDS_CHESPIN" newpages.txt >> Chespin.txt &
  egrep -i "$KEYWORDS_CHIKORITA" newpages.txt >> Chikorita.txt &
  egrep -i "$KEYWORDS_CHIMCHAR" newpages.txt >> Chimchar.txt &
  egrep -i "$KEYWORDS_CHIMECHO" newpages.txt >> Chimecho.txt &
  egrep -i "$KEYWORDS_CHINCHOU" newpages.txt >> Chinchou.txt &
  egrep -i "$KEYWORDS_CHINGLING" newpages.txt >> Chingling.txt &
  egrep -i "$KEYWORDS_CINCCINO" newpages.txt >> Cinccino.txt &
  egrep -i "$KEYWORDS_CLAMPERL" newpages.txt >> Clamperl.txt &
  egrep -i "$KEYWORDS_CLAYDOL" newpages.txt >> Claydol.txt &
  egrep -i "$KEYWORDS_CLEFABLE" newpages.txt >> Clefable.txt &
  egrep -i "$KEYWORDS_CLEFAIRY" newpages.txt >> Clefairy.txt &
  egrep -i "$KEYWORDS_CLEFFA" newpages.txt >> Cleffa.txt &
  egrep -i "$KEYWORDS_CLOYSTER" newpages.txt >> Cloyster.txt &
  egrep -i "$KEYWORDS_COBALION" newpages.txt >> Cobalion.txt &
  egrep -i "$KEYWORDS_COFAGRIGUS" newpages.txt >> Cofagrigus.txt &
  egrep -i "$KEYWORDS_COMBEE" newpages.txt >> Combee.txt &
  egrep -i "$KEYWORDS_COMBUSKEN" newpages.txt >> Combusken.txt &
  egrep -i "$KEYWORDS_CONKELDURR" newpages.txt >> Conkeldurr.txt &
  egrep -i "$KEYWORDS_CORPHISH" newpages.txt >> Corphish.txt &
  egrep -i "$KEYWORDS_CORSOLA" newpages.txt >> Corsola.txt &
  egrep -i "$KEYWORDS_COTTONEE" newpages.txt >> Cottonee.txt &
  egrep -i "$KEYWORDS_CRADILY" newpages.txt >> Cradily.txt &
  egrep -i "$KEYWORDS_CRANIDOS" newpages.txt >> Cranidos.txt &
  egrep -i "$KEYWORDS_CRAWDAUNT" newpages.txt >> Crawdaunt.txt &
  egrep -i "$KEYWORDS_CRESSELIA" newpages.txt >> Cresselia.txt &
  egrep -i "$KEYWORDS_CROAGUNK" newpages.txt >> Croagunk.txt &
  egrep -i "$KEYWORDS_CROBAT" newpages.txt >> Crobat.txt &
  egrep -i "$KEYWORDS_CROCONAW" newpages.txt >> Croconaw.txt &
  egrep -i "$KEYWORDS_CRUSTLE" newpages.txt >> Crustle.txt &
  egrep -i "$KEYWORDS_CRYOGONAL" newpages.txt >> Cryogonal.txt &
  egrep -i "$KEYWORDS_CUBCHOO" newpages.txt >> Cubchoo.txt &
  egrep -i "$KEYWORDS_CUBONE" newpages.txt >> Cubone.txt &
  egrep -i "$KEYWORDS_CYNDAQUIL" newpages.txt >> Cyndaquil.txt &

  wait

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
  CHESPIN=`stat --print=%s Chespin.txt`
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

  if [ $CACNEA -ne 0 ];
  then
     export CATFILE="Cacnea.txt"
     export CATNAME="Cacnea"
    $CATEGORIZE
  fi

  if [ $CACTURNE -ne 0 ];
  then
     export CATFILE="Cacturne.txt"
     export CATNAME="Cacturne"
    $CATEGORIZE
  fi

  if [ $CAMERUPT -ne 0 ];
  then
     export CATFILE="Camerupt.txt"
     export CATNAME="Camerupt"
    $CATEGORIZE
  fi

  if [ $CARNIVINE -ne 0 ];
  then
     export CATFILE="Carnivine.txt"
     export CATNAME="Carnivine"
    $CATEGORIZE
  fi

  if [ $CARRACOSTA -ne 0 ];
  then
     export CATFILE="Carracosta.txt"
     export CATNAME="Carracosta"
    $CATEGORIZE
  fi

  if [ $CARVANHA -ne 0 ];
  then
     export CATFILE="Carvanha.txt"
     export CATNAME="Carvanha"
    $CATEGORIZE
  fi

  if [ $CASCOON -ne 0 ];
  then
     export CATFILE="Cascoon.txt"
     export CATNAME="Cascoon"
    $CATEGORIZE
  fi

  if [ $CASTFORM -ne 0 ];
  then
     export CATFILE="Castform.txt"
     export CATNAME="Castform"
    $CATEGORIZE
  fi

  if [ $CATERPIE -ne 0 ];
  then
     export CATFILE="Caterpie.txt"
     export CATNAME="Caterpie"
    $CATEGORIZE
  fi

  if [ $CELEBI -ne 0 ];
  then
     export CATFILE="Celebi.txt"
     export CATNAME="Celebi"
    $CATEGORIZE
  fi

  if [ $CHANDELURE -ne 0 ];
  then
     export CATFILE="Chandelure.txt"
     export CATNAME="Chandelure"
    $CATEGORIZE
  fi

  if [ $CHANSEY -ne 0 ];
  then
     export CATFILE="Chansey.txt"
     export CATNAME="Chansey"
    $CATEGORIZE
  fi

  if [ $CHARIZARD -ne 0 ];
  then
     export CATFILE="Charizard.txt"
     export CATNAME="Charizard"
    $CATEGORIZE
  fi

  if [ $CHARMANDER -ne 0 ];
  then
     export CATFILE="Charmander.txt"
     export CATNAME="Charmander"
    $CATEGORIZE
  fi

  if [ $CHARMELEON -ne 0 ];
  then
     export CATFILE="Charmeleon.txt"
     export CATNAME="Charmeleon"
    $CATEGORIZE
  fi

  if [ $CHATOT -ne 0 ];
  then
     export CATFILE="Chatot.txt"
     export CATNAME="Chatot"
    $CATEGORIZE
  fi

  if [ $CHERRIM -ne 0 ];
  then
     export CATFILE="Cherrim.txt"
     export CATNAME="Cherrim"
    $CATEGORIZE
  fi

  if [ $CHERUBI -ne 0 ];
  then
     export CATFILE="Cherubi.txt"
     export CATNAME="Cherubi"
    $CATEGORIZE
  fi

  if [ $CHESPIN -ne 0 ];
  then
    export CATFILE="Chespin.txt"
    export CATNAME="Chespin"
    $CATEGORIZE
  fi

  if [ $CHIKORITA -ne 0 ];
  then
     export CATFILE="Chikorita.txt"
     export CATNAME="Chikorita"
    $CATEGORIZE
  fi

  if [ $CHIMCHAR -ne 0 ];
  then
     export CATFILE="Chimchar.txt"
     export CATNAME="Chimchar"
    $CATEGORIZE
  fi

  if [ $CHIMECHO -ne 0 ];
  then
     export CATFILE="Chimecho.txt"
     export CATNAME="Chimecho"
    $CATEGORIZE
  fi

  if [ $CHINCHOU -ne 0 ];
  then
     export CATFILE="Chinchou.txt"
     export CATNAME="Chinchou"
    $CATEGORIZE
  fi

  if [ $CHINGLING -ne 0 ];
  then
     export CATFILE="Chingling.txt"
     export CATNAME="Chingling"
    $CATEGORIZE
  fi

  if [ $CINCCINO -ne 0 ];
  then
     export CATFILE="Cinccino.txt"
     export CATNAME="Cinccino"
    $CATEGORIZE
  fi

  if [ $CLAMPERL -ne 0 ];
  then
     export CATFILE="Clamperl.txt"
     export CATNAME="Clamperl"
    $CATEGORIZE
  fi

  if [ $CLAYDOL -ne 0 ];
  then
     export CATFILE="Claydol.txt"
     export CATNAME="Claydol"
    $CATEGORIZE
  fi

  if [ $CLEFABLE -ne 0 ];
  then
     export CATFILE="Clefable.txt"
     export CATNAME="Clefable"
    $CATEGORIZE
  fi

  if [ $CLEFAIRY -ne 0 ];
  then
     export CATFILE="Clefairy.txt"
     export CATNAME="Clefairy"
    $CATEGORIZE
  fi

  if [ $CLEFFA -ne 0 ];
  then
     export CATFILE="Cleffa.txt"
     export CATNAME="Cleffa"
    $CATEGORIZE
  fi

  if [ $CLOYSTER -ne 0 ];
  then
     export CATFILE="Cloyster.txt"
     export CATNAME="Cloyster"
    $CATEGORIZE
  fi

  if [ $COBALION -ne 0 ];
  then
     export CATFILE="Cobalion.txt"
     export CATNAME="Cobalion"
    $CATEGORIZE
  fi

  if [ $COFAGRIGUS -ne 0 ];
  then
     export CATFILE="Cofagrigus.txt"
     export CATNAME="Cofagrigus"
    $CATEGORIZE
  fi

  if [ $COMBEE -ne 0 ];
  then
     export CATFILE="Combee.txt"
     export CATNAME="Combee"
    $CATEGORIZE
  fi

  if [ $COMBUSKEN -ne 0 ];
  then
     export CATFILE="Combusken.txt"
     export CATNAME="Combusken"
    $CATEGORIZE
  fi

  if [ $CONKELDURR -ne 0 ];
  then
     export CATFILE="Conkeldurr.txt"
     export CATNAME="Conkeldurr"
    $CATEGORIZE
  fi

  if [ $CORPHISH -ne 0 ];
  then
     export CATFILE="Corphish.txt"
     export CATNAME="Corphish"
    $CATEGORIZE
  fi

  if [ $CORSOLA -ne 0 ];
  then
     export CATFILE="Corsola.txt"
     export CATNAME="Corsola"
    $CATEGORIZE
  fi

  if [ $COTTONEE -ne 0 ];
  then
     export CATFILE="Cottonee.txt"
     export CATNAME="Cottonee"
    $CATEGORIZE
  fi


  if [ $CRADILY -ne 0 ];
     then
     export CATFILE="Cradily.txt"
     export CATNAME="Cradily"
    $CATEGORIZE
  fi

  if [ $CRANIDOS -ne 0 ];
  then
    export CATFILE="Cranidos.txt"
    export CATNAME="Cranidos"
   $CATEGORIZE
  fi

  if [ $CRAWDAUNT -ne 0 ];
  then
    export CATFILE="Crawdaunt.txt"
    export CATNAME="Crawdaunt"
   $CATEGORIZE
  fi

  if [ $CRESSELIA -ne 0 ];
  then
    export CATFILE="Cresselia.txt"
    export CATNAME="Cresselia"
   $CATEGORIZE
  fi

  if [ $CROAGUNK -ne 0 ];
  then
    export CATFILE="Croagunk.txt"
    export CATNAME="Croagunk"
   $CATEGORIZE
  fi

  if [ $CROBAT -ne 0 ];
  then
    export CATFILE="Crobat.txt"
    export CATNAME="Crobat"
   $CATEGORIZE
  fi

  if [ $CROCONAW -ne 0 ];
  then
    export CATFILE="Croconaw.txt"
    export CATNAME="Croconaw"
   $CATEGORIZE
  fi

  if [ $CRUSTLE -ne 0 ];
  then
    export CATFILE="Crustle.txt"
    export CATNAME="Crustle"
   $CATEGORIZE
  fi

  if [ $CRYOGONAL -ne 0 ];
  then
    export CATFILE="Cryogonal.txt"
    export CATNAME="Cryogonal"
   $CATEGORIZE
  fi

  if [ $CUBCHOO -ne 0 ];
  then
    export CATFILE="Cubchoo.txt"
    export CATNAME="Cubchoo"
   $CATEGORIZE
  fi

  if [ $CUBONE -ne 0 ];
  then
    export CATFILE="Cubone.txt"
    export CATNAME="Cubone"
   $CATEGORIZE
  fi

  if [ $CYNDAQUIL -ne 0 ];
  then
    export CATFILE="Cyndaquil.txt"
    export CATNAME="Cyndaquil"
   $CATEGORIZE
  fi

  rm Cacnea.txt &
  rm Cacturne.txt &
  rm Camerupt.txt &
  rm Carnivine.txt &
  rm Carracosta.txt &
  rm Carvanha.txt &
  rm Cascoon.txt &
  rm Castform.txt &
  rm Caterpie.txt &
  rm Celebi.txt &
  rm Chandelure.txt &
  rm Chansey.txt &
  rm Charizard.txt &
  rm Charmander.txt &
  rm Charmeleon.txt &
  rm Chatot.txt &
  rm Cherrim.txt &
  rm Cherubi.txt &
  rm Chespin.txt &
  rm Chikorita.txt &
  rm Chimchar.txt &
  rm Chimecho.txt &
  rm Chinchou.txt &
  rm Chingling.txt &
  rm Cinccino.txt &
  rm Clamperl.txt &
  rm Claydol.txt &
  rm Clefable.txt &
  rm Clefairy.txt &
  rm Cleffa.txt &
  rm Cloyster.txt &
  rm Cobalion.txt &
  rm Cofagrigus.txt &
  rm Combee.txt &
  rm Combusken.txt &
  rm Conkeldurr.txt &
  rm Corphish.txt &
  rm Corsola.txt &
  rm Cottonee.txt &
  rm Cradily.txt &
  rm Cranidos.txt &
  rm Crawdaunt.txt &
  rm Cresselia.txt &
  rm Croagunk.txt &
  rm Crobat.txt &
  rm Croconaw.txt &
  rm Crustle.txt &
  rm Cryogonal.txt &
  rm Cubchoo.txt &
  rm Cubone.txt &
  rm Cyndaquil.txt &

  wait

fi