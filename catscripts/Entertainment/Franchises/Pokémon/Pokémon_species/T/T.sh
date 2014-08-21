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

  TAILLOW=$(egrep -i "$KEYWORDS_TAILLOW" "$NEWPAGES")
  TANGELA=$(egrep -i "$KEYWORDS_TANGELA" "$NEWPAGES")
  TANGROWTH=$(egrep -i "$KEYWORDS_TANGROWTH" "$NEWPAGES")
  TAUROS=$(egrep -i "$KEYWORDS_TAUROS" "$NEWPAGES")
  TEDDIURSA=$(egrep -i "$KEYWORDS_TEDDIURSA" "$NEWPAGES")
  TENTACOOL=$(egrep -i "$KEYWORDS_TENTACOOL" "$NEWPAGES")
  TENTACRUEL=$(egrep -i "$KEYWORDS_TENTACRUEL" "$NEWPAGES")
  TEPIG=$(egrep -i "$KEYWORDS_TEPIG" "$NEWPAGES")
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
  TROPIUS=$(egrep -i "$KEYWORDS_TROPIUS" "$NEWPAGES")
  TRUBBISH=$(egrep -i "$KEYWORDS_TRUBBISH" "$NEWPAGES")
  TURTWIG=$(egrep -i "$KEYWORDS_TURTWIG" "$NEWPAGES")
  TYMPOLE=$(egrep -i "$KEYWORDS_TYMPOLE" "$NEWPAGES")
  TYNAMO=$(egrep -i "$KEYWORDS_TYNAMO" "$NEWPAGES")
  TYPHLOSION=$(egrep -i "$KEYWORDS_TYPHLOSION" "$NEWPAGES")
  TYRANITAR=$(egrep -i "$KEYWORDS_TYRANITAR" "$NEWPAGES")
  TYROGUE=$(egrep -i "$KEYWORDS_TYROGUE" "$NEWPAGES")

  categorize "TAILLOW" "Taillow"
  categorize "TANGELA" "Tangela"
  categorize "TANGROWTH" "Tangrowth"
  categorize "TAUROS" "Tauros"
  categorize "TEDDIURSA" "Teddiursa"
  categorize "TENTACOOL" "Tentacool"
  categorize "TENTACRUEL" "Tentacruel"
  categorize "TEPIG" "Tepig"
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
  categorize "TROPIUS" "Tropius"
  categorize "TRUBBISH" "Trubbish"
  categorize "TYMPOLE" "Tympole"
  categorize "TYNAMO" "Tynamo"
  categorize "TYPHLOSION" "Typhlosion"
  categorize "TYRANITAR" "Tyranitar"
  categorize "TYROGUE" "Tyrogue"

  debug_end "Pokemon species T"

fi