#!/bin/bash

KEYWORDS_TAILLOW="Taillow"
KEYWORDS_TANGELA="Tangela"
KEYWORDS_TANGROWTH="Tangrowth"
KEYWORDS_TAUROS="Tauros"
KEYWORDS_TEDDIURSA="Teddiursa"
KEYWORDS_TENTACOOL="Tentacool"
KEYWORDS_TENTACRUEL="Tentacruel"
KEYWORDS_TEPIG="Tepig"
KEYWORDS_THROH="Throh"
KEYWORDS_THUNDURUS="Thundurus"
KEYWORDS_TIMBURR="Timburr"
KEYWORDS_TIRTOUGA="Tirtouga"
KEYWORDS_TOGEKISS="Togekiss"
KEYWORDS_TOGEPI="Togepi"
KEYWORDS_TOGETIC="Togetic"
KEYWORDS_TORCHIC="Torchic"
KEYWORDS_TORKOAL="Torkoal"
KEYWORDS_TORNADUS="Tornadus"
KEYWORDS_TORTERRA="Torterra"
KEYWORDS_TOTODILE="Totodile"
KEYWORDS_TOXICROAK="Toxicroak"
KEYWORDS_TRANQUILL="Tranquill"
KEYWORDS_TRAPINCH="Trapinch"
KEYWORDS_TREECKO="Treecko"
KEYWORDS_TROPIUS="Tropius"
KEYWORDS_TRUBBISH="Trubbish"
KEYWORDS_TURTWIG="Turtwig"
KEYWORDS_TYMPOLE="Tympole"
KEYWORDS_TYNAMO="Tynamo"
KEYWORDS_TYPHLOSION="Typhlosion"
KEYWORDS_TYRANITAR="Tyranitar"
KEYWORDS_TYROGUE="Tyrogue"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pokemon species T"

  TAILLOW=$(egrep -i "$KEYWORDS_TAILLOW" newpages.txt)
  TANGELA=$(egrep -i "$KEYWORDS_TANGELA" newpages.txt)
  TANGROWTH=$(egrep -i "$KEYWORDS_TANGROWTH" newpages.txt)
  TAUROS=$(egrep -i "$KEYWORDS_TAUROS" newpages.txt)
  TEDDIURSA=$(egrep -i "$KEYWORDS_TEDDIURSA" newpages.txt)
  TENTACOOL=$(egrep -i "$KEYWORDS_TENTACOOL" newpages.txt)
  TENTACRUEL=$(egrep -i "$KEYWORDS_TENTACRUEL" newpages.txt)
  TEPIG=$(egrep -i "$KEYWORDS_TEPIG" newpages.txt)
  THROH=$(egrep -i "$KEYWORDS_THROH" newpages.txt)
  THUNDURUS=$(egrep -i "$KEYWORDS_THUNDURUS" newpages.txt)
  TIMBURR=$(egrep -i "$KEYWORDS_TIMBURR" newpages.txt)
  TIRTOUGA=$(egrep -i "$KEYWORDS_TIRTOUGA" newpages.txt)
  TOGEKISS=$(egrep -i "$KEYWORDS_TOGEKISS" newpages.txt)
  TOGEPI=$(egrep -i "$KEYWORDS_TOGEPI" newpages.txt)
  TOGETIC=$(egrep -i "$KEYWORDS_TOGETIC" newpages.txt)
  TORCHIC=$(egrep -i "$KEYWORDS_TORCHIC" newpages.txt)
  TORKOAL=$(egrep -i "$KEYWORDS_TORKOAL" newpages.txt)
  TORNADUS=$(egrep -i "$KEYWORDS_TORNADUS" newpages.txt)
  TORTERRA=$(egrep -i "$KEYWORDS_TORTERRA" newpages.txt)
  TOTODILE=$(egrep -i "$KEYWORDS_TOTODILE" newpages.txt)
  TOXICROAK=$(egrep -i "$KEYWORDS_TOXICROAK" newpages.txt)
  TRANQUILL=$(egrep -i "$KEYWORDS_TRANQUILL" newpages.txt)
  TRAPINCH=$(egrep -i "$KEYWORDS_TRAPINCH" newpages.txt)
  TREECKO=$(egrep -i "$KEYWORDS_TREECKO" newpages.txt)
  TROPIUS=$(egrep -i "$KEYWORDS_TROPIUS" newpages.txt)
  TRUBBISH=$(egrep -i "$KEYWORDS_TRUBBISH" newpages.txt)
  TURTWIG=$(egrep -i "$KEYWORDS_TURTWIG" newpages.txt)
  TYMPOLE=$(egrep -i "$KEYWORDS_TYMPOLE" newpages.txt)
  TYNAMO=$(egrep -i "$KEYWORDS_TYNAMO" newpages.txt)
  TYPHLOSION=$(egrep -i "$KEYWORDS_TYPHLOSION" newpages.txt)
  TYRANITAR=$(egrep -i "$KEYWORDS_TYRANITAR" newpages.txt)
  TYROGUE=$(egrep -i "$KEYWORDS_TYROGUE" newpages.txt)

  if [ "$TAILLOW" != "" ];
  then
    printf "%s" "$TAILLOW" > Taillow.txt
    export CATFILE="Taillow.txt"
    export CATNAME="Taillow"
    $CATEGORIZE
    rm Taillow.txt
    unset TAILLOW
  fi

  if [ "$TANGELA" != "" ];
  then
    printf "%s" "$TANGELA" > Tangela.txt
    export CATFILE="Tangela.txt"
    export CATNAME="Tangela"
    $CATEGORIZE
    rm Tangela.txt
    unset TANGELA
  fi

  if [ "$TANGROWTH" != "" ];
  then
    printf "%s" "$TANGROWTH" > Tangrowth.txt
    export CATFILE="Tangrowth.txt"
    export CATNAME="Tangrowth"
    $CATEGORIZE
    rm Tangrowth.txt
    unset TANGROWTH
  fi

  if [ "$TAUROS" != "" ];
  then
    printf "%s" "$TAUROS" > Tauros.txt
    export CATFILE="Tauros.txt"
    export CATNAME="Tauros"
    $CATEGORIZE
    rm Tauros.txt
    unset TAUROS
  fi

  if [ "$TEDDIURSA" != "" ];
  then
    printf "%s" "$TEDDIURSA" > Teddiursa.txt
    export CATFILE="Teddiursa.txt"
    export CATNAME="Teddiursa"
    $CATEGORIZE
    rm Teddiursa.txt
    unset TEDDIURSA
  fi

  if [ "$TENTACOOL" != "" ];
  then
    printf "%s" "$TENTACOOL" > Tentacool.txt
    export CATFILE="Tentacool.txt"
    export CATNAME="Tentacool"
    $CATEGORIZE
    rm Tentacool.txt
    unset TENTACOOL
  fi

  if [ "$TENTACRUEL" != "" ];
  then
    printf "%s" "$TENTACRUEL" > Tentacruel.txt
    export CATFILE="Tentacruel.txt"
    export CATNAME="Tentacruel"
    $CATEGORIZE
    rm Tentacruel.txt
    unset TENTACRUEL
  fi

  if [ "$TEPIG" != "" ];
  then
    printf "%s" "$TEPIG" > Tepig.txt
    export CATFILE="Tepig.txt"
    export CATNAME="Tepig"
    $CATEGORIZE
    rm Tepig.txt
    unset TEPIG
  fi

  if [ "$THROH" != "" ];
  then
    printf "%s" "$THROH" > Throh.txt
    export CATFILE="Throh.txt"
    export CATNAME="Throh"
    $CATEGORIZE
    rm Throh.txt
    unset THROH
  fi

  if [ "$THUNDURUS" != "" ];
  then
    printf "%s" "$THUNDURUS" > Thundurus.txt
    export CATFILE="Thundurus.txt"
    export CATNAME="Thundurus"
    $CATEGORIZE
    rm Thundurus.txt
    unset THUNDURUS
  fi

  if [ "$TIMBURR" != "" ];
  then
    printf "%s" "$TIMBURR" > Timburr.txt
    export CATFILE="Timburr.txt"
    export CATNAME="Timburr"
    $CATEGORIZE
    rm Timburr.txt
    unset TIMBURR
  fi

  if [ "$TIRTOUGA" != "" ];
  then
    printf "%s" "$TIRTOUGA" > Tirtouga.txt
    export CATFILE="Tirtouga.txt"
    export CATNAME="Tirtouga"
    $CATEGORIZE
    rm Tirtouga.txt
    unset TIRTOUGA
  fi

  if [ "$TOGEKISS" != "" ];
  then
    printf "%s" "$TOGEKISS" > Togekiss.txt
    export CATFILE="Togekiss.txt"
    export CATNAME="Togekiss"
    $CATEGORIZE
    rm Togekiss.txt
    unset TOGEKISS
  fi

  if [ "$TOGEPI" != "" ];
  then
    printf "%s" "$TOGEPI" > Togepi.txt
    export CATFILE="Togepi.txt"
    export CATNAME="Togepi"
    $CATEGORIZE
    rm Togepi.txt
    unset TOGEPI
  fi

  if [ "$TOGETIC" != "" ];
  then
    printf "%s" "$TOGETIC" > Togetic.txt
    export CATFILE="Togetic.txt"
    export CATNAME="Togetic"
    $CATEGORIZE
    rm Togetic.txt
    unset TOGETIC
  fi

  if [ "$TORCHIC" != "" ];
  then
    printf "%s" "$TORCHIC" > Torchic.txt
    export CATFILE="Torchic.txt"
    export CATNAME="Torchic"
    $CATEGORIZE
    rm Torchic.txt
    unset TORCHIC
  fi

  if [ "$TORKOAL" != "" ];
  then
    printf "%s" "$TORKOAL" > Torkoal.txt
    export CATFILE="Torkoal.txt"
    export CATNAME="Torkoal"
    $CATEGORIZE
    rm Torkoal.txt
    unset TORKOAL
  fi

  if [ "$TORNADUS" != "" ];
  then
    printf "%s" "$TORNADUS" > Tornadus.txt
    export CATFILE="Tornadus.txt"
    export CATNAME="Tornadus"
    $CATEGORIZE
    rm Tornadus.txt
    unset TORNADUS
  fi

  if [ "$TORTERRA" != "" ];
  then
    printf "%s" "$TORTERRA" > Torterra.txt
    export CATFILE="Torterra.txt"
    export CATNAME="Torterra"
    $CATEGORIZE
    rm Torterra.txt
    unset TORTERRA
  fi

  if [ "$TOTODILE" != "" ];
  then
    printf "%s" "$TOTODILE" > Totodile.txt
    export CATFILE="Totodile.txt"
    export CATNAME="Totodile"
    $CATEGORIZE
    rm Totodile.txt
    unset TOTODILE
  fi

  if [ "$TOXICROAK" != "" ];
  then
    printf "%s" "$TOXICROAK" > Toxicroak.txt
    export CATFILE="Toxicroak.txt"
    export CATNAME="Toxicroak"
    $CATEGORIZE
    rm Toxicroak.txt
    unset TOXICROAK
  fi

  if [ "$TRANQUILL" != "" ];
  then
    printf "%s" "$TRANQUILL" > Tranquill.txt
    export CATFILE="Tranquill.txt"
    export CATNAME="Tranquill"
    $CATEGORIZE
    rm Tranquill.txt
    unset TRANQUILL
  fi

  if [ "$TRAPINCH" != "" ];
  then
    printf "%s" "$TRAPINCH" > Trapinch.txt
    export CATFILE="Trapinch.txt"
    export CATNAME="Trapinch"
    $CATEGORIZE
    rm Trapinch.txt
    unset TRAPINCH
  fi

  if [ "$TREECKO" != "" ];
  then
    printf "%s" "$TREECKO" > Treecko.txt
    export CATFILE="Treecko.txt"
    export CATNAME="Treecko"
    $CATEGORIZE
    rm Treecko.txt
    unset TREECKO
  fi

  if [ "$TROPIUS" != "" ];
  then
    printf "%s" "$TROPIUS" > Tropius.txt
    export CATFILE="Tropius.txt"
    export CATNAME="Tropius"
    $CATEGORIZE
    rm Tropius.txt
    unset TROPIUS
  fi

  if [ "$TRUBBISH" != "" ];
  then
    printf "%s" "$TRUBBISH" > Trubbish.txt
    export CATFILE="Trubbish.txt"
    export CATNAME="Trubbish"
    $CATEGORIZE
    unset TRUBBISH
  fi

  if [ "$TURTWIG" != "" ];
  then
    printf "%s" "$TURTWIG" > Turtwig.txt
    export CATFILE="Turtwig.txt"
    export CATNAME="Turtwig"
    $CATEGORIZE
    rm Turtwig.txt
    unset TURTWIG
  fi

  if [ "$TYMPOLE" != "" ];
  then
    printf "%s" "$TYMPOLE" > Tympole.txt
    export CATFILE="Tympole.txt"
    export CATNAME="Tympole"
    $CATEGORIZE
    rm Tympole.txt
    unset TYMPOLE
  fi

  if [ "$TYNAMO" != "" ];
  then
    printf "%s" "$TYNAMO" > Tynamo.txt
    export CATFILE="Tynamo.txt"
    export CATNAME="Tynamo"
    $CATEGORIZE
    rm Tynamo.txt
    unset TYNAMO
  fi

  if [ "$TYPHLOSION" != "" ];
  then
    printf "%s" "$TYPHLOSION" > Typhlosion.txt
    export CATFILE="Typhlosion.txt"
    export CATNAME="Typhlosion"
    $CATEGORIZE
    rm Typhlosion.txt
    unset TYPHLOSION
  fi

  if [ "$TYRANITAR" != "" ];
  then
    printf "%s" "$TYRANITAR" > Tyranitar.txt
    export CATFILE="Tyranitar.txt"
    export CATNAME="Tyranitar"
    $CATEGORIZE
    rm Tyranitar.txt
    unset TYRANITAR
  fi

  if [ "$TYROGUE" != "" ];
  then
    printf "%s" "$TYROGUE" > Tyrogue.txt
    export CATFILE="Tyrogue.txt"
    export CATNAME="Tyrogue"
    $CATEGORIZE
    rm Tyrogue.txt
    unset TYROGUE
  fi

  debug_end "Pokemon species T"

fi