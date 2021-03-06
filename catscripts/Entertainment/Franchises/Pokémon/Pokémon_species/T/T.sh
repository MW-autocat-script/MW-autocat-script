#!/bin/bash

KEYWORDS_TAILLOW="Taillow"
KEYWORDS_TALONFLAME="Talon(| )flame"
KEYWORDS_TANGELA="Tangela"
KEYWORDS_TANGROWTH="Tangrowth"
KEYWORDS_TAUROS="Tauros"
KEYWORDS_TEDDIURSA="Teddiursa"
KEYWORDS_TENTACOOL="Tentacool"
KEYWORDS_TENTACRUEL="Tentacruel"
KEYWORDS_TEPIG="Tepig"
KEYWORDS_TERRAKION="Terrakion"
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
KEYWORDS_TREVENANT="Trevenant"
KEYWORDS_TROPIUS="Tropius"
KEYWORDS_TRUBBISH="Trubbish"
KEYWORDS_TURTWIG="Turtwig"
KEYWORDS_TYMPOLE="Tympole"
KEYWORDS_TYNAMO="Tynamo"
KEYWORDS_TYPHLOSION="Typhlosion"
KEYWORDS_TYRANITAR="Tyranitar"
KEYWORDS_TYRANTRUM="Tyrantrum"
KEYWORDS_TYROGUE="Tyrogue"
KEYWORDS_TYRUNT="Tyrunt"

KEYWORDS_POKEMONSPECIES_T="$KEYWORDS_TAILLOW|$KEYWORDS_TALONFLAME|$KEYWORDS_TANGELA|$KEYWORDS_TAUROS|$KEYWORDS_TEDDIURSA|$KEYWORDS_TENTACOOL|$KEYWORDS_TENTACRUEL|$KEYWORDS_TEPIG|$KEYWORDS_TERRAKION|$KEYWORDS_THROH|$KEYWORDS_THUNDURUS|$KEYWORDS_TIMBURR|$KEYWORDS_TIRTOUGA|$KEYWORDS_TOGEKISS|$KEYWORDS_TOGEPI|$KEYWORDS_TOGETIC|$KEYWORDS_TORCHIC|$KEYWORDS_TORKOAL|$KEYWORDS_TORNADUS|$KEYWORDS_TORTERRA|$KEYWORDS_TOTODILE|$KEYWORDS_TOXICROAK|$KEYWORDS_TRANQUILL|$KEYWORDS_TRAPINCH|$KEYWORDS_TREECKO|$KEYWORDS_TREVENANT|$KEYWORDS_TROPIUS|$KEYWORDS_TRUBBISH|$KEYWORDS_TURTWIG|$KEYWORDS_TYMPOLE|$KEYWORDS_TYNAMO|$KEYWORDS_TYPHLOSION|$KEYWORDS_TYRANITAR|$KEYWORDS_TYRANTRUM|$KEYWORDS_TYROGUE|$KEYWORDS_TYRUNT"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pokemon species T"

  TAILLOW=$(egrep -i "$KEYWORDS_TAILLOW" "$NEWPAGES")
  TALONFLAME=$(egrep -i "$KEYWORDS_TALONFLAME" "$NEWPAGES")
  TANGELA=$(egrep -i "$KEYWORDS_TANGELA" "$NEWPAGES")
  TANGROWTH=$(egrep -i "$KEYWORDS_TANGROWTH" "$NEWPAGES")
  TAUROS=$(egrep -i "$KEYWORDS_TAUROS" "$NEWPAGES")
  TEDDIURSA=$(egrep -i "$KEYWORDS_TEDDIURSA" "$NEWPAGES")
  TENTACOOL=$(egrep -i "$KEYWORDS_TENTACOOL" "$NEWPAGES")
  TENTACRUEL=$(egrep -i "$KEYWORDS_TENTACRUEL" "$NEWPAGES")
  TEPIG=$(egrep -i "$KEYWORDS_TEPIG" "$NEWPAGES")
  TERRAKION=$(egrep -i "$KEYWORDS_TERRAKION" "$NEWPAGES")
  THROH=$(egrep -i "$KEYWORDS_THROH" "$NEWPAGES")
  THUNDURUS=$(egrep -i "$KEYWORDS_THUNDURUS" "$NEWPAGES")
  TIMBURR=$(egrep -i "$KEYWORDS_TIMBURR" "$NEWPAGES")
  TIRTOUGA=$(egrep -i "$KEYWORDS_TIRTOUGA" "$NEWPAGES")
  TOGEKISS=$(egrep -i "$KEYWORDS_TOGEKISS" "$NEWPAGES")
  TOGEPI=$(egrep -i "$KEYWORDS_TOGEPI" "$NEWPAGES")
  TOGETIC=$(egrep -i "$KEYWORDS_TOGETIC" "$NEWPAGES")
  TORCHIC=$(egrep -i "$KEYWORDS_TORCHIC" "$NEWPAGES")
  TORKOAL=$(egrep -i "$KEYWORDS_TORKOAL" "$NEWPAGES")
  TORNADUS=$(egrep -i "$KEYWORDS_TORNADUS" "$NEWPAGES")
  TORTERRA=$(egrep -i "$KEYWORDS_TORTERRA" "$NEWPAGES")
  TOTODILE=$(egrep -i "$KEYWORDS_TOTODILE" "$NEWPAGES")
  TOXICROAK=$(egrep -i "$KEYWORDS_TOXICROAK" "$NEWPAGES")
  TRANQUILL=$(egrep -i "$KEYWORDS_TRANQUILL" "$NEWPAGES")
  TRAPINCH=$(egrep -i "$KEYWORDS_TRAPINCH" "$NEWPAGES")
  TREECKO=$(egrep -i "$KEYWORDS_TREECKO" "$NEWPAGES")
  TREVENANT=$(egrep -i "$KEYWORDS_TREVENANT" "$NEWPAGES")
  TROPIUS=$(egrep -i "$KEYWORDS_TROPIUS" "$NEWPAGES")
  TRUBBISH=$(egrep -i "$KEYWORDS_TRUBBISH" "$NEWPAGES")
  TURTWIG=$(egrep -i "$KEYWORDS_TURTWIG" "$NEWPAGES")
  TYMPOLE=$(egrep -i "$KEYWORDS_TYMPOLE" "$NEWPAGES")
  TYNAMO=$(egrep -i "$KEYWORDS_TYNAMO" "$NEWPAGES")
  TYPHLOSION=$(egrep -i "$KEYWORDS_TYPHLOSION" "$NEWPAGES")
  TYRANITAR=$(egrep -i "$KEYWORDS_TYRANITAR" "$NEWPAGES")
  TYRANTRUM=$(egrep -i "$KEYWORDS_TYRANTRUM" "$NEWPAGES")
  TYROGUE=$(egrep -i "$KEYWORDS_TYROGUE" "$NEWPAGES")
  TYRUNT=$(egrep -i "$KEYWORDS_TYRUNT" "$NEWPAGES")

  categorize "TAILLOW" "Taillow"
  categorize "TALONFLAME" "Talonflame"
  categorize "TANGELA" "Tangela"
  categorize "TANGROWTH" "Tangrowth"
  categorize "TAUROS" "Tauros"
  categorize "TEDDIURSA" "Teddiursa"
  categorize "TENTACOOL" "Tentacool"
  categorize "TENTACRUEL" "Tentacruel"
  categorize "TEPIG" "Tepig"
  categorize "TERRAKION" "Terrakion"
  categorize "THROH" "Throh"
  categorize "THUNDURUS" "Thundurus"
  categorize "TIMBURR" "Timburr"
  categorize "TIRTOUGA" "Tirtouga"
  categorize "TOGEKISS" "Togekiss"
  categorize "TOGEPI" "Togepi"
  categorize "TOGETIC" "Togetic"
  categorize "TORCHIC" "Torchic"
  categorize "TORKOAL" "Torkoal"
  categorize "TORNADUS" "Tornadus"
  categorize "TORTERRA" "Torterra"
  categorize "TOTODILE" "Totodile"
  categorize "TOXICROAK" "Toxicroak"
  categorize "TRANQUILL" "Tranquill"
  categorize "TRAPINCH" "Trapinch"
  categorize "TREECKO" "Treecko"
  categorize "TREVENANT" "Trevenant"
  categorize "TROPIUS" "Tropius"
  categorize "TRUBBISH" "Trubbish"
  categorize "TYMPOLE" "Tympole"
  categorize "TYNAMO" "Tynamo"
  categorize "TYPHLOSION" "Typhlosion"
  categorize "TYRANITAR" "Tyranitar"
  categorize "TYRANTRUM" "Tyrantrum"
  categorize "TYROGUE" "Tyrogue"
  categorize "TYRUNT" "Tyrunt"

  debug_end "Pokemon species T"

fi