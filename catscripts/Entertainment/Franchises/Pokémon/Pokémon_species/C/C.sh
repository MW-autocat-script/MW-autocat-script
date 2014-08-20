#!/bin/bash
#Pokemon species by name, starting with the letter C

KEYWORDS_CACNEA="Cacnea"
KEYWORDS_CACTURNE="Cacturne"
KEYWORDS_CAMERUPT="Camerupt"
KEYWORDS_CARBINK="Carbink"
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
KEYWORDS_CHESNAUGHT="Chesnaught"
KEYWORDS_CHESPIN="Chespin"
KEYWORDS_CHIKORITA="Chikorita"
KEYWORDS_CHIMCHAR="Chimchar"
KEYWORDS_CHIMECHO="Chimecho"
KEYWORDS_CHINCHOU="Chinchou"
KEYWORDS_CHINGLING="Chingling"
KEYWORDS_CINCCINO="Cinccino"
KEYWORDS_CLAMPERL="Clamperl"
KEYWORDS_CLAUNCHER="Clauncher"
KEYWORDS_CLAUNCHER_CASESENSITIVE_EXCLUDE="CLauncher"
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
KEYWORDS_POKEMONSPECIES_C="$KEYWORDS_CACNEA|$KEYWORDS_CACTURNE|$KEYWORDS_CAMERUPT|$KEYWORDS_CARBINK|$KEYWORDS_CARNIVINE|$KEYWORDS_CARRACOSTA|$KEYWORDS_CARVANHA|$KEYWORDS_CASCOON|$KEYWORDS_CASTFORM|$KEYWORDS_CATERPIE|$KEYWORDS_CELEBI|$KEYWORDS_CHANDELURE|$KEYWORDS_CHANSEY|$KEYWORDS_CHARIZARD|$KEYWORDS_CHARMANDER|$KEYWORDS_CHARMELEON|$KEYWORDS_CHATOT|$KEYWORDS_CHERRIM|$KEYWORDS_CHERUBI||$KEYWORDS_CHESNAUGHT|$KEYWORDS_CHESPIN|$KEYWORDS_CHIKORITA|$KEYWORDS_CHIMCHAR|$KEYWORDS_CHIMECHO|$KEYWORDS_CHINCHOU|$KEYWORDS_CHINGLING|$KEYWORDS_CINCCINO|$KEYWORDS_CLAMPERL|$KEYWORDS_CLAUNCHER|$KEYWORDS_CLAYDOL|$KEYWORDS_CLEFABLE|$KEYWORDS_CLEFAIRY|$KEYWORDS_CLEFFA|$KEYWORDS_CLOYSTER|$KEYWORDS_COBALION|$KEYWORDS_COFAGRIGUS|$KEYWORDS_COMBEE|$KEYWORDS_COMBUSKEN|$KEYWORDS_CONKELDURR|$KEYWORDS_CORPHISH|$KEYWORDS_CORSOLA|$KEYWORDS_COTTONEE|$KEYWORDS_CRADILY|$KEYWORDS_CRANIDOS|$KEYWORDS_CRAWDAUNT|$KEYWORDS_CRESSELIA|$KEYWORDS_CROAGUNK|$KEYWORDS_CROBAT|$KEYWORDS_CROCONAW|$KEYWORDS_CRUSTLE|$KEYWORDS_CRYOGONAL|$KEYWORDS_CUBCHOO|$KEYWORDS_CUBONE|$KEYWORDS_CYNDAQUIL"

if [ "$1" == "" ]; #Normal run
then

  debug_start "Pokemon C script"

  CACNEA=$(egrep -i "$KEYWORDS_CACNEA" "$NEWPAGES")
  CACTURNE=$(egrep -i "$KEYWORDS_CACTURNE" "$NEWPAGES")
  CAMERUPT=$(egrep -i "$KEYWORDS_CAMERUPT" "$NEWPAGES")
  CARBINK=$(egrep -i "$KEYWORDS_CARBINK" "$NEWPAGES")
  CARNIVINE=$(egrep -i "$KEYWORDS_CARNIVINE" "$NEWPAGES")
  CARRACOSTA=$(egrep -i "$KEYWORDS_CARRACOSTA" "$NEWPAGES")
  CARVANHA=$(egrep -i "$KEYWORDS_CARVANHA" "$NEWPAGES")
  CASCOON=$(egrep -i "$KEYWORDS_CASCOON" "$NEWPAGES")
  CASTFORM=$(egrep -i "$KEYWORDS_CASTFORM" "$NEWPAGES")
  CATERPIE=$(egrep -i "$KEYWORDS_CATERPIE" "$NEWPAGES")
  CELEBI=$(egrep -i "$KEYWORDS_CELEBI" "$NEWPAGES")
  CHANDELURE=$(egrep -i "$KEYWORDS_CHANDELURE" "$NEWPAGES")
  CHANSEY=$(egrep -i "$KEYWORDS_CHANSEY" "$NEWPAGES")
  CHARIZARD=$(egrep -i "$KEYWORDS_CHARIZARD" "$NEWPAGES")
  CHARMANDER=$(egrep -i "$KEYWORDS_CHARMANDER" "$NEWPAGES")
  CHARMELEON=$(egrep -i "$KEYWORDS_CHARMELEON" "$NEWPAGES")
  CHATOT=$(egrep -i "$KEYWORDS_CHATOT" "$NEWPAGES")
  CHERRIM=$(egrep -i "$KEYWORDS_CHERRIM" "$NEWPAGES")
  CHERUBI=$(egrep -i "$KEYWORDS_CHERUBI" "$NEWPAGES")
  CHESNAUGHT=$(egrep -i "$KEYWORDS_CHESNAUGHT" "$NEWPAGES")
  CHESPIN=$(egrep -i "$KEYWORDS_CHESPIN" "$NEWPAGES")
  CHIKORITA=$(egrep -i "$KEYWORDS_CHIKORITA" "$NEWPAGES")
  CHIMCHAR=$(egrep -i "$KEYWORDS_CHIMCHAR" "$NEWPAGES")
  CHIMECHO=$(egrep -i "$KEYWORDS_CHIMECHO" "$NEWPAGES")
  CHINCHOU=$(egrep -i "$KEYWORDS_CHINCHOU" "$NEWPAGES")
  CHINGLING=$(egrep -i "$KEYWORDS_CHINGLING" "$NEWPAGES")
  CINCCINO=$(egrep -i "$KEYWORDS_CINCCINO" "$NEWPAGES")
  CLAMPERL=$(egrep -i "$KEYWORDS_CLAMPERL" "$NEWPAGES")
  CLAUNCHER=$(egrep -i "$KEYWORDS_CLAUNCHER" "$NEWPAGES"| egrep -v "$KEYWORDS_CLAUNCHER_CASESENSITIVE_EXCLUDE") 
  CLAYDOL=$(egrep -i "$KEYWORDS_CLAYDOL" "$NEWPAGES")
  CLEFABLE=$(egrep -i "$KEYWORDS_CLEFABLE" "$NEWPAGES")
  CLEFAIRY=$(egrep -i "$KEYWORDS_CLEFAIRY" "$NEWPAGES")
  CLEFFA=$(egrep -i "$KEYWORDS_CLEFFA" "$NEWPAGES")
  CLOYSTER=$(egrep -i "$KEYWORDS_CLOYSTER" "$NEWPAGES")
  COBALION=$(egrep -i "$KEYWORDS_COBALION" "$NEWPAGES")
  COFAGRIGUS=$(egrep -i "$KEYWORDS_COFAGRIGUS" "$NEWPAGES")
  COMBEE=$(egrep -i "$KEYWORDS_COMBEE" "$NEWPAGES")
  COMBUSKEN=$(egrep -i "$KEYWORDS_COMBUSKEN" "$NEWPAGES")
  CONKELDURR=$(egrep -i "$KEYWORDS_CONKELDURR" "$NEWPAGES")
  CORPHISH=$(egrep -i "$KEYWORDS_CORPHISH" "$NEWPAGES")
  CORSOLA=$(egrep -i "$KEYWORDS_CORSOLA" "$NEWPAGES")
  COTTONEE=$(egrep -i "$KEYWORDS_COTTONEE" "$NEWPAGES")
  CRADILY=$(egrep -i "$KEYWORDS_CRADILY" "$NEWPAGES")
  CRANIDOS=$(egrep -i "$KEYWORDS_CRANIDOS" "$NEWPAGES")
  CRAWDAUNT=$(egrep -i "$KEYWORDS_CRAWDAUNT" "$NEWPAGES")
  CRESSELIA=$(egrep -i "$KEYWORDS_CRESSELIA" "$NEWPAGES")
  CROAGUNK=$(egrep -i "$KEYWORDS_CROAGUNK" "$NEWPAGES")
  CROBAT=$(egrep -i "$KEYWORDS_CROBAT" "$NEWPAGES")
  CROCONAW=$(egrep -i "$KEYWORDS_CROCONAW" "$NEWPAGES")
  CRUSTLE=$(egrep -i "$KEYWORDS_CRUSTLE" "$NEWPAGES")
  CRYOGONAL=$(egrep -i "$KEYWORDS_CRYOGONAL" "$NEWPAGES")
  CUBCHOO=$(egrep -i "$KEYWORDS_CUBCHOO" "$NEWPAGES")
  CUBONE=$(egrep -i "$KEYWORDS_CUBONE" "$NEWPAGES")
  CYNDAQUIL=$(egrep -i "$KEYWORDS_CYNDAQUIL" "$NEWPAGES")

  if [ "$CACNEA" != "" ];
  then
    printf "%s" "$CACNEA" > Cacnea.txt
    export CATFILE="Cacnea.txt"
    export CATNAME="Cacnea"
    $CATEGORIZE
    rm Cacnea.txt
    unset CACNEA
  fi

  if [ "$CACTURNE" != "" ];
  then
    printf "%s" "$CACTURNE" > Cacturne.txt
    export CATFILE="Cacturne.txt"
    export CATNAME="Cacturne"
    $CATEGORIZE
    rm Cacturne.txt
    unset CACTURNE
  fi

  if [ "$CAMERUPT" != "" ];
  then
    printf "%s" "$CAMERUPT" > Camerupt.txt
    export CATFILE="Camerupt.txt"
    export CATNAME="Camerupt"
    $CATEGORIZE
    rm Camerupt.txt
    unset CAMERUPT
  fi

  if [ "$CARBINK" != "" ];
  then
    printf "%s" "$CARBINK" > Carbink.txt
    export CATFILE="Carbink.txt"
    export CATNAME="Carbink"
    $CATEGORIZE
    rm Carbink.txt
    unset CARBINK
  fi

  if [ "$CARNIVINE" != "" ];
  then
    printf "%s" "$CARNIVINE" > Carnivine.txt
    export CATFILE="Carnivine.txt"
    export CATNAME="Carnivine"
    $CATEGORIZE
    rm Carnivine.txt
    unset CARNIVINE
  fi

  if [ "$CARRACOSTA" != "" ];
  then
    printf "%s" "$CARRACOSTA" > Carracosta.txt
    export CATFILE="Carracosta.txt"
    export CATNAME="Carracosta"
    $CATEGORIZE
    rm Carracosta.txt
    unset CARRACOSTA
  fi

  if [ "$CARVANHA" != "" ];
  then
    printf "%s" "$CARVANHA" > Carvanha.txt
    export CATFILE="Carvanha.txt"
    export CATNAME="Carvanha"
    $CATEGORIZE
    rm Carvanha.txt
    unset CARVANHA
  fi

  if [ "$CASCOON" != "" ];
  then
    printf "%s" "$CASCOON" > Cascoon.txt
    export CATFILE="Cascoon.txt"
    export CATNAME="Cascoon"
    $CATEGORIZE
    rm Cascoon.txt
    unset CASCOON
  fi

  if [ "$CASTFORM" != "" ];
  then
    printf "%s" "$CASTFORM" > Castform.txt
    export CATFILE="Castform.txt"
    export CATNAME="Castform"
    $CATEGORIZE
    rm Castform.txt
    unset CASTFORM
  fi

  if [ "$CATERPIE" != "" ];
  then
    printf "%s" "$CATERPIE" > Caterpie.txt
    export CATFILE="Caterpie.txt"
    export CATNAME="Caterpie"
    $CATEGORIZE
    rm Caterpie.txt
    unset CATERPIE
  fi

  if [ "$CELEBI" != "" ];
  then
    printf "%s" "$CELEBI" > Celebi.txt    
    export CATFILE="Celebi.txt"
    export CATNAME="Celebi"
    $CATEGORIZE
    rm Celebi.txt
    unset CELEBI
  fi

  if [ "$CHANDELURE" != "" ];
  then
    printf "%s" "$CHANDELURE" > Chandelure.txt
    export CATFILE="Chandelure.txt"
    export CATNAME="Chandelure"
    $CATEGORIZE
    rm Chandelure.txt
    unset CHANDELURE
  fi

  if [ "$CHANSEY" != "" ];
  then
    printf "%s" "$CHANSEY" > Chansey.txt
    export CATFILE="Chansey.txt"
    export CATNAME="Chansey"
    $CATEGORIZE
    rm Chansey.txt
    unset CHANSEY
  fi

  if [ "$CHARIZARD" != "" ];
  then
    printf "%s" "$CHARIZARD" > Charizard.txt
    export CATFILE="Charizard.txt"
    export CATNAME="Charizard"
    $CATEGORIZE
    rm Charizard.txt
    unset CHARIZARD
  fi

  if [ "$CHARMANDER" != "" ];
  then
    printf "%s" "$CHARMANDER" > Charmander.txt
    export CATFILE="Charmander.txt"
    export CATNAME="Charmander"
    $CATEGORIZE
    rm Charmander.txt
    unset CHARMANDER
  fi

  if [ "$CHARMELEON" != "" ];
  then
    printf "%s" "$CHARMELEON" > Charmeleon.txt
    export CATFILE="Charmeleon.txt"
    export CATNAME="Charmeleon"
    $CATEGORIZE
    rm Charmeleon.txt
    unset CHARMELEON
  fi

  if [ "$CHATOT" != "" ];
  then
    printf "%s" "$CHATOT" > Chatot.txt
    export CATFILE="Chatot.txt"
    export CATNAME="Chatot"
    $CATEGORIZE
    rm Chatot.txt
    unset CHATOT
  fi

  if [ "$CHERRIM" != "" ];
  then
    printf "%s" "$CHERRIM" > Cherrim.txt
    export CATFILE="Cherrim.txt"
    export CATNAME="Cherrim"
    $CATEGORIZE
    rm Cherrim.txt
    unset CHERRIM
  fi

  if [ "$CHERUBI" != "" ];
  then
    printf "%s" "$CHERUBI" > Cherubi.txt
    export CATFILE="Cherubi.txt"
    export CATNAME="Cherubi"
    $CATEGORIZE
    rm Cherubi.txt
    unset CHERUBI
  fi

  if [ "$CHESNAUGHT" != "" ];
  then
    printf "%s" "$CHESNAUGHT" > Chesnaught.txt
    export CATFILE="Chesnaught.txt"
    export CATNAME="Chesnaught"
    $CATEGORIZE
    rm Chesnaught.txt
    unset CHESNAUGHT
  fi

  if [ "$CHESPIN" != "" ];
  then
    printf "%s" "$CHESPIN" > Chespin.txt
    export CATFILE="Chespin.txt"
    export CATNAME="Chespin"
    $CATEGORIZE
    rm Chespin.txt
    unset CHESPIN
  fi

  if [ "$CHIKORITA" != "" ];
  then
    printf "%s" "$CHIKORITA" > Chikorita.txt
    export CATFILE="Chikorita.txt"
    export CATNAME="Chikorita"
    $CATEGORIZE
    rm Chikorita.txt
    unset CHIKORITA
  fi

  if [ "$CHIMCHAR" != "" ];
  then
    printf "%s" "$CHIMCHAR" > Chimchar.txt
    export CATFILE="Chimchar.txt"
    export CATNAME="Chimchar"
    $CATEGORIZE
    rm Chimchar.txt
    unset CHIMCHAR
  fi

  if [ "$CHIMECHO" != "" ];
  then
    printf "%s" "$CHIMECHO" > Chimecho.txt
    export CATFILE="Chimecho.txt"
    export CATNAME="Chimecho"
    $CATEGORIZE
    rm Chimecho.txt
    unset CHIMECHO
  fi

  if [ "$CHINCHOU" != "" ];
  then
    printf "%s" "$CHINCHOU" > Chinchou.txt
    export CATFILE="Chinchou.txt"
    export CATNAME="Chinchou"
    $CATEGORIZE
    rm Chinchou.txt
    unset CHINCHOU
  fi

  if [ "$CHINGLING" != "" ];
  then
    printf "%s" "$CHINGLING" > Chingling.txt
    export CATFILE="Chingling.txt"
    export CATNAME="Chingling"
    $CATEGORIZE
    rm Chingling.txt
    unset CHINGLING
  fi

  if [ "$CINCCINO" != "" ];
  then
    printf "%s" "$CINCCINO" > Cinccino.txt
    export CATFILE="Cinccino.txt"
    export CATNAME="Cinccino"
    $CATEGORIZE
    rm Cinccino.txt
    unset CINCCINO
  fi

  if [ "$CLAMPERL" != "" ];
  then
    printf "%s" "$CLAMPERL" > Clamperl.txt
    export CATFILE="Clamperl.txt"
    export CATNAME="Clamperl"
    $CATEGORIZE
    rm Clamperl.txt
    unset CLAMPERL
  fi

  if [ "$CLAUNCHER" != "" ];
  then
    printf "%s" "$CLAUNCHER" > Clauncher.txt
    export CATFILE="Clauncher.txt"
    export CATNAME="Clauncher"
    $CATEGORIZE
    rm Clauncher.txt
    unset CLAUNCHER
  fi

  if [ "$CLAYDOL" != "" ];
  then
    printf "%s" "$CLAYDOL" > Claydol.txt
    export CATFILE="Claydol.txt"
    export CATNAME="Claydol"
    $CATEGORIZE
    unset CLAYDOL
  fi

  if [ "$CLEFABLE" != "" ];
  then
    printf "%s" "$CLEFABLE" > Clefable.txt
    export CATFILE="Clefable.txt"
    export CATNAME="Clefable"
    $CATEGORIZE
    rm Clefable.txt
    unset CLEFABLE
  fi

  if [ "$CLEFAIRY" != "" ];
  then
    printf "%s" "$CLEFAIRY" > Clefairy.txt
    export CATFILE="Clefairy.txt"
    export CATNAME="Clefairy"
    $CATEGORIZE
    rm Clefairy.txt
    unset CLEFAIRY
  fi

  if [ "$CLEFFA" != "" ];
  then
    printf "%s" "$CLEFFA" > Cleffa.txt
    export CATFILE="Cleffa.txt"
    export CATNAME="Cleffa"
    $CATEGORIZE
    rm Cleffa.txt
    unset CLEFFA
  fi

  if [ "$CLOYSTER" != "" ];
  then
    printf "%s" "$CLOYSTER" > Cloyster.txt
    export CATFILE="Cloyster.txt"
    export CATNAME="Cloyster"
    $CATEGORIZE
    rm Cloyster.txt
    unset CLOYSTER
  fi

  if [ "$COBALION" != "" ];
  then
    printf "%s" "$COBALION" > Cobalion.txt
    export CATFILE="Cobalion.txt"
    export CATNAME="Cobalion"
    $CATEGORIZE
    rm Cobalion.txt
    unset COBALION
  fi

  if [ "$COFAGRIGUS" != "" ];
  then
    printf "%s" "$COFAGRIGUS" > Cofagrigus.txt
    export CATFILE="Cofagrigus.txt"
    export CATNAME="Cofagrigus"
    $CATEGORIZE
    rm Cofagrigus.txt
    unset COFAGRIGUS
  fi

  if [ "$COMBEE" != "" ];
  then
    printf "%s" "$COMBEE" > Combee.txt
    export CATFILE="Combee.txt"
    export CATNAME="Combee"
    $CATEGORIZE
    rm Combee.txt
    unset COMBEE
  fi

  if [ "$COMBUSKEN" != "" ];
  then
    printf "%s" "$COMBUSKEN" > Combusken.txt
    export CATFILE="Combusken.txt"
    export CATNAME="Combusken"
    $CATEGORIZE
    rm Combusken.txt
    unset COMBUSKEN
  fi

  if [ "$CONKELDURR" != "" ];
  then
    printf "%s" "$CONKELDURR" > Conkeldurr.txt
    export CATFILE="Conkeldurr.txt"
    export CATNAME="Conkeldurr"
    $CATEGORIZE
    rm Conkeldurr.txt
    unset CONKELDURR
  fi

  if [ "$CORPHISH" != "" ];
  then
    printf "%s" "$CORPHISH" > Corphish.txt
    export CATFILE="Corphish.txt"
    export CATNAME="Corphish"
    $CATEGORIZE
    rm Corphish.txt
    unset CORPHISH
  fi

  if [ "$CORSOLA" != "" ];
  then
    printf "%s" "$CORSOLA" > Corsola.txt
    export CATFILE="Corsola.txt"
    export CATNAME="Corsola"
    $CATEGORIZE
    rm Corsola.txt
    unset CORSOLA
  fi

  if [ "$COTTONEE" != "" ];
  then
    printf "%s" "$COTTONEE" > Cottonee.txt
    export CATFILE="Cottonee.txt"
    export CATNAME="Cottonee"
    $CATEGORIZE
    rm Cottonee.txt
    unset COTTONEE
  fi


  if [ "$CRADILY" != "" ];
    then
    printf "%s" "$CRADILY" > Cradily.txt
    export CATFILE="Cradily.txt"
    export CATNAME="Cradily"
    $CATEGORIZE
    rm Cradily.txt
    unset CRADILY
  fi

  if [ "$CRANIDOS" != "" ];
  then
    printf "%s" "$CRANIDOS" > Cranidos.txt
    export CATFILE="Cranidos.txt"
    export CATNAME="Cranidos"
    $CATEGORIZE
    rm Cranidos.txt
    unset CRANIDOS
  fi

  if [ "$CRAWDAUNT" != "" ];
  then
    printf "%s" "$CRAWDAUNT" > Crawdaunt.txt
    export CATFILE="Crawdaunt.txt"
    export CATNAME="Crawdaunt"
    $CATEGORIZE
    rm Crawdaunt.txt
    unset CRAWDAUNT
  fi

  if [ "$CRESSELIA" != "" ];
  then
    printf "%s" "$CRESSELIA" > Cresselia.txt
    export CATFILE="Cresselia.txt"
    export CATNAME="Cresselia"
    $CATEGORIZE
    rm Cresselia.txt
    unset CRESSELIA
  fi

  if [ "$CROAGUNK" != "" ];
  then
    printf "%s" "$CROAGUNK" > Croagunk.txt
    export CATFILE="Croagunk.txt"
    export CATNAME="Croagunk"
    $CATEGORIZE
    rm Croagunk.txt
    unset CROAGUNK
  fi

  if [ "$CROBAT" != "" ];
  then
    printf "%s" "$CROBAT" > Crobat.txt
    export CATFILE="Crobat.txt"
    export CATNAME="Crobat"
    $CATEGORIZE
    rm Crobat.txt
    unset CROBAT
  fi

  if [ "$CROCONAW" != "" ];
  then
    printf "%s" "$CROCONAW" > Croconaw.txt
    export CATFILE="Croconaw.txt"
    export CATNAME="Croconaw"
    $CATEGORIZE
    rm Croconaw.txt
    unset CROCONAW
  fi

  if [ "$CRUSTLE" != "" ];
  then
    printf "%s" "$CRUSTLE" > Crustle.txt
    export CATFILE="Crustle.txt"
    export CATNAME="Crustle"
    $CATEGORIZE
    rm Crustle.txt
    unset CRUSTLE
  fi

  if [ "$CRYOGONAL" != "" ];
  then
    printf "%s" "$CRYOGONAL" > Cryogonal.txt
    export CATFILE="Cryogonal.txt"
    export CATNAME="Cryogonal"
    $CATEGORIZE
    rm Cryogonal.txt
    unset CRYOGONAL
  fi

  if [ "$CUBCHOO" != "" ];
  then
    printf "%s" "$CUBCHOO" > Cubchoo.txt
    export CATFILE="Cubchoo.txt"
    export CATNAME="Cubchoo"
    $CATEGORIZE
    rm Cubchoo.txt
    unset CUBCHOO
  fi

  if [ "$CUBONE" != "" ];
  then
    printf "%s" "$CUBONE" > Cubone.txt
    export CATFILE="Cubone.txt"
    export CATNAME="Cubone"
    $CATEGORIZE
    rm Cubone.txt
    unset CUBONE
  fi

  if [ "$CYNDAQUIL" != "" ];
  then
    printf "%s" "$CYNDAQUIL" > Cyndaquil.txt
    export CATFILE="Cyndaquil.txt"
    export CATNAME="Cyndaquil"
    $CATEGORIZE
    rm Cyndaquil.txt
    unset CYNDAQUIL
  fi

  debug_end "Pokemon C script"

fi