#!/bin/bash 
#Pokemon species by name, starting with the letter B

KEYWORDS_BAGON="Bagon"
KEYWORDS_BALTOY="Baltoy"
KEYWORDS_BANETTE="Banette"
KEYWORDS_BARBOACH="Barboach"
KEYWORDS_BASCULIN="Basculin"
KEYWORDS_BASTIODON="Bastiodon"
KEYWORDS_BAYLEEF="Bayleef"
KEYWORDS_BEARTIC="Beartic"
KEYWORDS_BEAUTIFLY="Beautifly"
KEYWORDS_BEEDRILL="Beedrill"
KEYWORDS_BEHEEYEM="Beheyeem"
KEYWORDS_BELDUM="Beldum"
KEYWORDS_BELLOSSOM="Bellossom"
KEYWORDS_BELLSPROUT="Bellsprout"
KEYWORDS_BIBAREL="Bibarel"
KEYWORDS_BIDOOF="Bidoof"
KEYWORDS_BISHARP="Bisharp"
KEYWORDS_BLASTOISE="Blastoise"
KEYWORDS_BLAZIKEN="Blaziken"
KEYWORDS_BLISSEY="Blissey"
KEYWORDS_BLITZLE="Blitzle"
KEYWORDS_BOLDORE="Boldore"
KEYWORDS_BONSLY="Bonsly"
KEYWORDS_BOUFFALANT="Bouf(|f)alant"
KEYWORDS_BRAVIARY="Braviary"
KEYWORDS_BRELOOM="Breloom"
KEYWORDS_BRONZONG="Bronzong"
KEYWORDS_BRONZOR="Bronzor"
KEYWORDS_BUDEW="Budew"
KEYWORDS_BUIZEL="Buizel"
KEYWORDS_BULBASAUR="Bulbasaur"
KEYWORDS_BUNEARY="Buneary"
KEYWORDS_BURMY="Burmy"
KEYWORDS_BUTTERFREE="Butterfree"
KEYWORDS_POKEMONSPECIES_B="$KEYWORDS_BAGON|$KEYWORDS_BALTOY|$KEYWORDS_BANETTE|$KEYWORDS_BARBOACH|$KEYWORDS_BASCULIN|$KEYWORDS_BASTIODON|$KEYWORDS_BAYLEEF|$KEYWORDS_BEARTIC|$KEYWORDS_BEAUTIFLY|$KEYWORDS_BEEDRILL|$KEYWORDS_BEHEEYEM|$KEYWORDS_BELDUM|$KEYWORDS_BELLOSSOM|$KEYWORDS_BELLSPROUT|$KEYWORDS_BIBAREL|$KEYWORDS_BIDOOF|$KEYWORDS_BISHARP|$KEYWORDS_BLASTOISE|$KEYWORDS_BLAZIKEN|$KEYWORDS_BLISSEY|$KEYWORDS_BLITZLE|$KEYWORDS_BOLDORE|$KEYWORDS_BOLDORE|$KEYWORDS_BONSLY|$KEYWORDS_BOUFFALANT|$KEYWORDS_BRAVIARY|$KEYWORDS_BRELOOM|$KEYWORDS_BRONZONG|$KEYWORDS_BRONZOR|$KEYWORDS_BUDEW|$KEYWORDS_BUIZEL|$KEYWORDS_BULBASAUR|$KEYWORDS_BUNEARY|$KEYWORDS_BURMY|$KEYWORDS_BUTTERFREE"

if [ "$1" == "" ]; #Normal operation
then

  BAGON=$(egrep -i "$KEYWORDS_BAGON" newpages.txt)
  BALTOY=$(egrep -i "$KEYWORDS_BALTOY" newpages.txt)
  BANETTE=$(egrep -i "$KEYWORDS_BANETTE" newpages.txt)
  BARBOACH=$(egrep -i "$KEYWORDS_BARBOACH" newpages.txt)
  BASCULIN=$(egrep -i "$KEYWORDS_BASCULIN" newpages.txt)
  BASTIODON=$(egrep -i "$KEYWORDS_BASTIODON" newpages.txt)
  BAYLEEF=$(egrep -i "$KEYWORDS_BAYLEEF" newpages.txt)
  BEARTIC=$(egrep -i "$KEYWORDS_BEARTIC" newpages.txt)
  BEAUTIFLY=$(egrep -i "$KEYWORDS_BEAUTIFLY" newpages.txt)
  BEEDRILL=$(egrep -i "$KEYWORDS_BEEDRILL" newpages.txt)
  BEHEEYEM=$(egrep -i "$KEYWORDS_BEHEEYEM" newpages.txt)
  BELDUM=$(egrep -i "$KEYWORDS_BELDUM" newpages.txt)
  BELLOSSOM=$(egrep -i "$KEYWORDS_BELLOSSOM" newpages.txt)
  BELLSPROUT=$(egrep -i "$KEYWORDS_BELLSPROUT" newpages.txt)
  BIBAREL=$(egrep -i "$KEYWORDS_BIBAREL" newpages.txt)
  BIDOOF=$(egrep -i "$KEYWORDS_BIDOOF" newpages.txt)
  BISHARP=$(egrep -i "$KEYWORDS_BISHARP" newpages.txt)
  BLASTOISE=$(egrep -i "$KEYWORDS_BLASTOISE" newpages.txt)
  BLAZIKEN=$(egrep -i "$KEYWORDS_BLAZIKEN" newpages.txt)
  BLISSEY=$(egrep -i "$KEYWORDS_BLISSEY" newpages.txt)
  BLITZLE=$(egrep -i "$KEYWORDS_BLITZLE" newpages.txt)
  BOLDORE=$(egrep -i "$KEYWORDS_BOLDORE" newpages.txt)
  BONSLY=$(egrep -i "$KEYWORDS_BONSLY" newpages.txt)
  BOUFFALANT=$(egrep -i "$KEYWORDS_BOUFFALANT" newpages.txt)
  BRAVIARY=$(egrep -i "$KEYWORDS_BRAVIARY" newpages.txt)
  BRELOOM=$(egrep -i "$KEYWORDS_BRELOOM" newpages.txt)
  BRONZONG=$(egrep -i "$KEYWORDS_BRONZONG" newpages.txt)
  BRONZOR=$(egrep -i "$KEYWORDS_BRONZOR" newpages.txt)
  BUDEW=$(egrep -i "$KEYWORDS_BUDEW" newpages.txt)
  BUIZEL=$(egrep -i "$KEYWORDS_BUIZEL" newpages.txt)
  BULBASAUR=$(egrep -i "$KEYWORDS_BULBASAUR" newpages.txt)
  BUNEARY=$(egrep -i "$KEYWORDS_BUNEARY" newpages.txt)
  BURMY=$(egrep -i "$KEYWORDS_BURMY" newpages.txt)
  BUTTERFREE=$(egrep -i "$KEYWORDS_BUTTERFREE" newpages.txt)


  if [ "$BAGON" != "" ];
  then
    printf "$BAGON" > Bagon.txt
    export CATFILE="Bagon.txt"
    export CATNAME="Bagon"
    $CATEGORIZE
    rm Bagon.txt
    unset BAGON
  fi

  if [ "$BALTOY" != "" ];
  then
    printf "$BALTOY" > Baltoy.txt
    export CATFILE="Baltoy.txt"
    export CATNAME="Baltoy"
    $CATEGORIZE
    rm Baltoy.txt
    unset BALTOY
  fi

  if [ "$BANETTE" != "" ];
  then
    printf "$BANETTE" > Banette.txt
    export CATFILE="Banette.txt"
    export CATNAME="Banette"
    $CATEGORIZE
    rm Banette.txt
    unset BANETTE
  fi

  if [ "$BARBOACH" != "" ];
  then
    printf "$BARBOACH" > Barboach.txt
    export CATFILE="Barboach.txt"
    export CATNAME="Barboach"
    $CATEGORIZE
    rm Barboach.txt
    unset BARBOACH
  fi

  if [ "$BASCULIN" != "" ];
  then
    printf "$BASCULIN" > Basculin.txt
    export CATFILE="Basculin.txt"
    export CATNAME="Basculin"
    $CATEGORIZE
    rm Basculin.txt
    unset BASCULIN
  fi

  if [ "$BASTIODON" != "" ];
  then
    printf "$BASTIODON" > Bastiodon.txt
    export CATFILE="Bastiodon.txt"
    export CATNAME="Bastiodon"
    $CATEGORIZE
    rm Bastiodon.txt
    unset BASTIODON
  fi

  if [ "$BAYLEEF" != "" ];
  then
    printf "$BAYLEEF" > Bayleef.txt
    export CATFILE="Bayleef.txt"
    export CATNAME="Bayleef"
    $CATEGORIZE
    rm Bayleef.txt
    unset BAYLEEF
  fi

  if [ "$BEARTIC" != "" ];
  then
    printf "$BEARTIC" > Beartic.txt
    export CATFILE="Beartic.txt"
    export CATNAME="Beartic"
    $CATEGORIZE
    rm Beartic.txt
    unset BEARTIC
  fi

  if [ "$BEAUTIFLY" != "" ];
  then
    printf "$BEAUTIFLY" > Beautifly.txt
    export CATFILE="Beautifly.txt"
    export CATNAME="Beautifly"
    $CATEGORIZE
    rm Beautifly.txt
    unset BEAUTIFLY
  fi

  if [ "$BEEDRILL" != "" ];
  then
    printf "$BEEDRILL" > Beedrill.txt
    export CATFILE="Beedrill.txt"
    export CATNAME="Beedrill"
    $CATEGORIZE
    rm Beedrill.txt
    unset BEEDRILL
  fi

  if [ "$BEHEEYEM" != "" ];
  then
    printf "$BEHEEYEM" > Beheeyem.txt
    export CATFILE="Beheeyem.txt"
    export CATNAME="Beheeyem"
    $CATEGORIZE
    rm Beheeyem.txt
    unset BEHEEYEM
  fi

  if [ "$BELDUM" != "" ];
  then
    printf "$BELDUM" > Beldum.txt
    export CATFILE="Beldum.txt"
    export CATNAME="Beldum"
    $CATEGORIZE
    rm Beldum.txt
    unset BELDUM
  fi

  if [ "$BELLOSSOM" != "" ];
  then
    printf "$BELLOSSOM" > Bellossom.txt
    export CATFILE="Bellossom.txt"
    export CATNAME="Bellossom"
    $CATEGORIZE
    rm Bellossom.txt
    unset BELLOSSOM
  fi

  if [ "$BELLSPROUT" != "" ];
  then
    printf "$BELLSPROUT" > Bellsprout.txt
    export CATFILE="Bellsprout.txt"
    export CATNAME="Bellsprout"
    $CATEGORIZE
    rm Bellsprout.txt
    unset BELLSPROUT
  fi

  if [ "$BIBAREL" != "" ];
  then
    printf "$BIBAREL" > Bibarel.txt
    export CATFILE="Bibarel.txt"
    export CATNAME="Bibarel"
    $CATEGORIZE
    rm Bibarel.txt
    unset BIBAREL
  fi

  if [ "$BIDOOF" != "" ];
  then
    printf "$BIDOOF" > Bidoof.txt
    export CATFILE="Bidoof.txt"
    export CATNAME="Bidoof"
    $CATEGORIZE
    rm Bidoof.txt
    unset BIDOOF
  fi

  if [ "$BISHARP" != "" ];
  then
    printf "$BISHARP" > Bisharp.txt
    export CATFILE="Bisharp.txt"
    export CATNAME="Bisharp"
    $CATEGORIZE
    rm Bisharp.txt
    unset BISHARP
  fi

  if [ "$BLASTOISE" != "" ];
  then
    printf "$BLASTOISE" > Blastoise.txt
    export CATFILE="Blastoise.txt"
    export CATNAME="Blastoise"
    $CATEGORIZE
    rm Blastoise.txt
    unset BLASTOISE
  fi

  if [ "$BLAZIKEN" != "" ];
  then
    printf "$BLAZIKEN" > Blaziken.txt
    export CATFILE="Blaziken.txt"
    export CATNAME="Blaziken"
    $CATEGORIZE
    rm Blaziken.txt
    unset BLAZIKEN
  fi

  if [ "$BLISSEY" != "" ];
  then
    printf "$BLISSEY" > Blissey.txt
    export CATFILE="Blissey.txt"
    export CATNAME="Blissey"
    $CATEGORIZE
    rm Blissey.txt
    unset BLISSEY
  fi

  if [ "$BLITZLE" != "" ];
  then
    printf "$BLITZLE" > Blitzle.txt
    export CATFILE="Blitzle.txt"
    export CATNAME="Blitzle"
    $CATEGORIZE
    rm Blitzle.txt
    unset BLITZLE
  fi

  if [ "$BOLDORE" != "" ];
  then
    printf "$BOLDORE" > Boldore.txt
    export CATFILE="Boldore.txt"
    export CATNAME="Boldore"
    $CATEGORIZE
    rm Boldore.txt
    unset BOLDORE
  fi

  if [ "$BONSLY" != "" ];
  then
    printf "$BONSLY" > Bonsly.txt
    export CATFILE="Bonsly.txt"
    export CATNAME="Bonsly"
    $CATEGORIZE
    rm Bonsly.txt
    unset BONSLY
  fi

  if [ "$BOUFFALANT" != "" ];
  then
    printf "$BOUFFALANT" > Bouffalant.txt
    export CATFILE="Bouffalant.txt"
    export CATNAME="Bouffalant"
    $CATEGORIZE
    rm Bouffalant.txt
    unset BOUFFALANT
  fi

  if [ "$BRAVIARY" != "" ];
  then
    printf "$BRAVIARY" > Braviary.txt
    export CATFILE="Braviary.txt"
    export CATNAME="Braviary"
    $CATEGORIZE
    rm Braviary.txt
    unset BRAVIARY
  fi

  if [ "$BRELOOM" != "" ];
  then
    printf "$BRELOOM" > Breloom.txt
    export CATFILE="Breloom.txt"
    export CATNAME="Breloom"
    $CATEGORIZE
    rm Breloom.txt
    unset BRELOOM
  fi

  if [ "$BRONZONG" != "" ];
  then
    printf "$BRONZONG" > Bronzong.txt
    export CATFILE="Bronzong.txt"
    export CATNAME=""
    $CATEGORIZE
    rm Bronzong.txt
    unset BRONZONG
  fi

  if [ "$BRONZOR" != "" ];
  then
    printf "$BRONZOR" > Bronzor.txt
    export CATFILE="Bronzor.txt"
    export CATNAME="Bronzor"
    $CATEGORIZE
    rm Bronzor.txt
    unset BRONZOR
  fi

  if [ "$BUDEW" != "" ];
  then
    printf "$BUDEW" > Budew.txt
    export CATFILE="Budew.txt"
    export CATNAME="Budew"
    $CATEGORIZE
    rm Budew.txt
    unset BUDEW
  fi

  if [ "$BUIZEL" != "" ];
  then
    printf "$BUIZEL" > Buizel.txt
    export CATFILE="Buizel.txt"
    export CATNAME="Buizel"
    $CATEGORIZE
    rm Buizel.txt
    unset BUIZEL
  fi

  if [ "$BULBASAUR" != "" ];
  then
    printf "$BULBASAUR" > Bulbasaur.txt
    export CATFILE="Bulbasaur.txt"
    export CATNAME="Bulbasaur"
    $CATEGORIZE
    rm Bulbasaur.txt
    unset BULBASAUR
  fi

  if [ "$BUNEARY" != "" ];
  then
    printf "$BUNEARY" > Buneary.txt
    export CATFILE="Buneary.txt"
    export CATNAME="Buneary"
    $CATEGORIZE
    rm Buneary.txt
    unset BUNEARY
  fi

  if [ "$BURMY" != "" ];
  then
    printf "$BURMY" > Burmy.txt
    export CATFILE="Burmy.txt"
    export CATNAME="Burmy"
    $CATEGORIZE
    rm Burmy.txt
    unset BURMY
  fi

  if [ "$BUTTERFREE" != "" ];
  then
    printf "$BUTTERFREE" > Butterfree.txt
    export CATFILE="Butterfree.txt"
    export CATNAME="Butterfree"
    $CATEGORIZE
    rm Butterfree.txt
    unset BUTTERFREE
  fi

fi