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

  debug_start "Pokemon B script"

  BAGON=$(egrep -i "$KEYWORDS_BAGON" "$NEWPAGES")
  BALTOY=$(egrep -i "$KEYWORDS_BALTOY" "$NEWPAGES")
  BANETTE=$(egrep -i "$KEYWORDS_BANETTE" "$NEWPAGES")
  BARBOACH=$(egrep -i "$KEYWORDS_BARBOACH" "$NEWPAGES")
  BASCULIN=$(egrep -i "$KEYWORDS_BASCULIN" "$NEWPAGES")
  BASTIODON=$(egrep -i "$KEYWORDS_BASTIODON" "$NEWPAGES")
  BAYLEEF=$(egrep -i "$KEYWORDS_BAYLEEF" "$NEWPAGES")
  BEARTIC=$(egrep -i "$KEYWORDS_BEARTIC" "$NEWPAGES")
  BEAUTIFLY=$(egrep -i "$KEYWORDS_BEAUTIFLY" "$NEWPAGES")
  BEEDRILL=$(egrep -i "$KEYWORDS_BEEDRILL" "$NEWPAGES")
  BEHEEYEM=$(egrep -i "$KEYWORDS_BEHEEYEM" "$NEWPAGES")
  BELDUM=$(egrep -i "$KEYWORDS_BELDUM" "$NEWPAGES")
  BELLOSSOM=$(egrep -i "$KEYWORDS_BELLOSSOM" "$NEWPAGES")
  BELLSPROUT=$(egrep -i "$KEYWORDS_BELLSPROUT" "$NEWPAGES")
  BIBAREL=$(egrep -i "$KEYWORDS_BIBAREL" "$NEWPAGES")
  BIDOOF=$(egrep -i "$KEYWORDS_BIDOOF" "$NEWPAGES")
  BISHARP=$(egrep -i "$KEYWORDS_BISHARP" "$NEWPAGES")
  BLASTOISE=$(egrep -i "$KEYWORDS_BLASTOISE" "$NEWPAGES")
  BLAZIKEN=$(egrep -i "$KEYWORDS_BLAZIKEN" "$NEWPAGES")
  BLISSEY=$(egrep -i "$KEYWORDS_BLISSEY" "$NEWPAGES")
  BLITZLE=$(egrep -i "$KEYWORDS_BLITZLE" "$NEWPAGES")
  BOLDORE=$(egrep -i "$KEYWORDS_BOLDORE" "$NEWPAGES")
  BONSLY=$(egrep -i "$KEYWORDS_BONSLY" "$NEWPAGES")
  BOUFFALANT=$(egrep -i "$KEYWORDS_BOUFFALANT" "$NEWPAGES")
  BRAVIARY=$(egrep -i "$KEYWORDS_BRAVIARY" "$NEWPAGES")
  BRELOOM=$(egrep -i "$KEYWORDS_BRELOOM" "$NEWPAGES")
  BRONZONG=$(egrep -i "$KEYWORDS_BRONZONG" "$NEWPAGES")
  BRONZOR=$(egrep -i "$KEYWORDS_BRONZOR" "$NEWPAGES")
  BUDEW=$(egrep -i "$KEYWORDS_BUDEW" "$NEWPAGES")
  BUIZEL=$(egrep -i "$KEYWORDS_BUIZEL" "$NEWPAGES")
  BULBASAUR=$(egrep -i "$KEYWORDS_BULBASAUR" "$NEWPAGES")
  BUNEARY=$(egrep -i "$KEYWORDS_BUNEARY" "$NEWPAGES")
  BURMY=$(egrep -i "$KEYWORDS_BURMY" "$NEWPAGES")
  BUTTERFREE=$(egrep -i "$KEYWORDS_BUTTERFREE" "$NEWPAGES")


  if [ "$BAGON" != "" ];
  then
    printf "%s" "$BAGON" > Bagon.txt
    export CATFILE="Bagon.txt"
    export CATNAME="Bagon"
    $CATEGORIZE
    rm Bagon.txt
    unset BAGON
  fi

  if [ "$BALTOY" != "" ];
  then
    printf "%s" "$BALTOY" > Baltoy.txt
    export CATFILE="Baltoy.txt"
    export CATNAME="Baltoy"
    $CATEGORIZE
    rm Baltoy.txt
    unset BALTOY
  fi

  if [ "$BANETTE" != "" ];
  then
    printf "%s" "$BANETTE" > Banette.txt
    export CATFILE="Banette.txt"
    export CATNAME="Banette"
    $CATEGORIZE
    rm Banette.txt
    unset BANETTE
  fi

  if [ "$BARBOACH" != "" ];
  then
    printf "%s" "$BARBOACH" > Barboach.txt
    export CATFILE="Barboach.txt"
    export CATNAME="Barboach"
    $CATEGORIZE
    rm Barboach.txt
    unset BARBOACH
  fi

  if [ "$BASCULIN" != "" ];
  then
    printf "%s" "$BASCULIN" > Basculin.txt
    export CATFILE="Basculin.txt"
    export CATNAME="Basculin"
    $CATEGORIZE
    rm Basculin.txt
    unset BASCULIN
  fi

  if [ "$BASTIODON" != "" ];
  then
    printf "%s" "$BASTIODON" > Bastiodon.txt
    export CATFILE="Bastiodon.txt"
    export CATNAME="Bastiodon"
    $CATEGORIZE
    rm Bastiodon.txt
    unset BASTIODON
  fi

  if [ "$BAYLEEF" != "" ];
  then
    printf "%s" "$BAYLEEF" > Bayleef.txt
    export CATFILE="Bayleef.txt"
    export CATNAME="Bayleef"
    $CATEGORIZE
    rm Bayleef.txt
    unset BAYLEEF
  fi

  if [ "$BEARTIC" != "" ];
  then
    printf "%s" "$BEARTIC" > Beartic.txt
    export CATFILE="Beartic.txt"
    export CATNAME="Beartic"
    $CATEGORIZE
    rm Beartic.txt
    unset BEARTIC
  fi

  if [ "$BEAUTIFLY" != "" ];
  then
    printf "%s" "$BEAUTIFLY" > Beautifly.txt
    export CATFILE="Beautifly.txt"
    export CATNAME="Beautifly"
    $CATEGORIZE
    rm Beautifly.txt
    unset BEAUTIFLY
  fi

  if [ "$BEEDRILL" != "" ];
  then
    printf "%s" "$BEEDRILL" > Beedrill.txt
    export CATFILE="Beedrill.txt"
    export CATNAME="Beedrill"
    $CATEGORIZE
    rm Beedrill.txt
    unset BEEDRILL
  fi

  if [ "$BEHEEYEM" != "" ];
  then
    printf "%s" "$BEHEEYEM" > Beheeyem.txt
    export CATFILE="Beheeyem.txt"
    export CATNAME="Beheeyem"
    $CATEGORIZE
    rm Beheeyem.txt
    unset BEHEEYEM
  fi

  if [ "$BELDUM" != "" ];
  then
    printf "%s" "$BELDUM" > Beldum.txt
    export CATFILE="Beldum.txt"
    export CATNAME="Beldum"
    $CATEGORIZE
    rm Beldum.txt
    unset BELDUM
  fi

  if [ "$BELLOSSOM" != "" ];
  then
    printf "%s" "$BELLOSSOM" > Bellossom.txt
    export CATFILE="Bellossom.txt"
    export CATNAME="Bellossom"
    $CATEGORIZE
    rm Bellossom.txt
    unset BELLOSSOM
  fi

  if [ "$BELLSPROUT" != "" ];
  then
    printf "%s" "$BELLSPROUT" > Bellsprout.txt
    export CATFILE="Bellsprout.txt"
    export CATNAME="Bellsprout"
    $CATEGORIZE
    rm Bellsprout.txt
    unset BELLSPROUT
  fi

  if [ "$BIBAREL" != "" ];
  then
    printf "%s" "$BIBAREL" > Bibarel.txt
    export CATFILE="Bibarel.txt"
    export CATNAME="Bibarel"
    $CATEGORIZE
    rm Bibarel.txt
    unset BIBAREL
  fi

  if [ "$BIDOOF" != "" ];
  then
    printf "%s" "$BIDOOF" > Bidoof.txt
    export CATFILE="Bidoof.txt"
    export CATNAME="Bidoof"
    $CATEGORIZE
    rm Bidoof.txt
    unset BIDOOF
  fi

  if [ "$BISHARP" != "" ];
  then
    printf "%s" "$BISHARP" > Bisharp.txt
    export CATFILE="Bisharp.txt"
    export CATNAME="Bisharp"
    $CATEGORIZE
    rm Bisharp.txt
    unset BISHARP
  fi

  if [ "$BLASTOISE" != "" ];
  then
    printf "%s" "$BLASTOISE" > Blastoise.txt
    export CATFILE="Blastoise.txt"
    export CATNAME="Blastoise"
    $CATEGORIZE
    rm Blastoise.txt
    unset BLASTOISE
  fi

  if [ "$BLAZIKEN" != "" ];
  then
    printf "%s" "$BLAZIKEN" > Blaziken.txt
    export CATFILE="Blaziken.txt"
    export CATNAME="Blaziken"
    $CATEGORIZE
    rm Blaziken.txt
    unset BLAZIKEN
  fi

  if [ "$BLISSEY" != "" ];
  then
    printf "%s" "$BLISSEY" > Blissey.txt
    export CATFILE="Blissey.txt"
    export CATNAME="Blissey"
    $CATEGORIZE
    rm Blissey.txt
    unset BLISSEY
  fi

  if [ "$BLITZLE" != "" ];
  then
    printf "%s" "$BLITZLE" > Blitzle.txt
    export CATFILE="Blitzle.txt"
    export CATNAME="Blitzle"
    $CATEGORIZE
    rm Blitzle.txt
    unset BLITZLE
  fi

  if [ "$BOLDORE" != "" ];
  then
    printf "%s" "$BOLDORE" > Boldore.txt
    export CATFILE="Boldore.txt"
    export CATNAME="Boldore"
    $CATEGORIZE
    rm Boldore.txt
    unset BOLDORE
  fi

  if [ "$BONSLY" != "" ];
  then
    printf "%s" "$BONSLY" > Bonsly.txt
    export CATFILE="Bonsly.txt"
    export CATNAME="Bonsly"
    $CATEGORIZE
    rm Bonsly.txt
    unset BONSLY
  fi

  if [ "$BOUFFALANT" != "" ];
  then
    printf "%s" "$BOUFFALANT" > Bouffalant.txt
    export CATFILE="Bouffalant.txt"
    export CATNAME="Bouffalant"
    $CATEGORIZE
    rm Bouffalant.txt
    unset BOUFFALANT
  fi

  if [ "$BRAVIARY" != "" ];
  then
    printf "%s" "$BRAVIARY" > Braviary.txt
    export CATFILE="Braviary.txt"
    export CATNAME="Braviary"
    $CATEGORIZE
    rm Braviary.txt
    unset BRAVIARY
  fi

  if [ "$BRELOOM" != "" ];
  then
    printf "%s" "$BRELOOM" > Breloom.txt
    export CATFILE="Breloom.txt"
    export CATNAME="Breloom"
    $CATEGORIZE
    rm Breloom.txt
    unset BRELOOM
  fi

  if [ "$BRONZONG" != "" ];
  then
    printf "%s" "$BRONZONG" > Bronzong.txt
    export CATFILE="Bronzong.txt"
    export CATNAME=""
    $CATEGORIZE
    rm Bronzong.txt
    unset BRONZONG
  fi

  if [ "$BRONZOR" != "" ];
  then
    printf "%s" "$BRONZOR" > Bronzor.txt
    export CATFILE="Bronzor.txt"
    export CATNAME="Bronzor"
    $CATEGORIZE
    rm Bronzor.txt
    unset BRONZOR
  fi

  if [ "$BUDEW" != "" ];
  then
    printf "%s" "$BUDEW" > Budew.txt
    export CATFILE="Budew.txt"
    export CATNAME="Budew"
    $CATEGORIZE
    rm Budew.txt
    unset BUDEW
  fi

  if [ "$BUIZEL" != "" ];
  then
    printf "%s" "$BUIZEL" > Buizel.txt
    export CATFILE="Buizel.txt"
    export CATNAME="Buizel"
    $CATEGORIZE
    rm Buizel.txt
    unset BUIZEL
  fi

  if [ "$BULBASAUR" != "" ];
  then
    printf "%s" "$BULBASAUR" > Bulbasaur.txt
    export CATFILE="Bulbasaur.txt"
    export CATNAME="Bulbasaur"
    $CATEGORIZE
    rm Bulbasaur.txt
    unset BULBASAUR
  fi

  if [ "$BUNEARY" != "" ];
  then
    printf "%s" "$BUNEARY" > Buneary.txt
    export CATFILE="Buneary.txt"
    export CATNAME="Buneary"
    $CATEGORIZE
    rm Buneary.txt
    unset BUNEARY
  fi

  if [ "$BURMY" != "" ];
  then
    printf "%s" "$BURMY" > Burmy.txt
    export CATFILE="Burmy.txt"
    export CATNAME="Burmy"
    $CATEGORIZE
    rm Burmy.txt
    unset BURMY
  fi

  if [ "$BUTTERFREE" != "" ];
  then
    printf "%s" "$BUTTERFREE" > Butterfree.txt
    export CATFILE="Butterfree.txt"
    export CATNAME="Butterfree"
    $CATEGORIZE
    rm Butterfree.txt
    unset BUTTERFREE
  fi

  debug_end "Pokemon B script"

fi