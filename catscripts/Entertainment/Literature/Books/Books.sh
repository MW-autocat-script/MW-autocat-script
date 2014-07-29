#!/bin/bash

BOOKSDIR="./catscripts/Entertainment/Literature/Books"

if [ "$1" == "" ];
then

  debug_start "Books"

  . $BOOKSDIR/Artemis_Fowl/ArtemisFowl.sh #KEYWORDS_ARTEMISFOWL
  . $BOOKSDIR/Black_Beauty/BlackBeauty.sh #KEYWORDS_BLACKBEAUTY
  . $BOOKSDIR/Diary_of_a_Wimpy_Kid/WimpyDiary.sh #KEYWORDS_WIMPYDIARY
  . $BOOKSDIR/Dracula/Dracula.sh #KEYWORDS_DRACULA
  . $BOOKSDIR/Dune/Dune.sh #KEYWORDS_DUNE_ALL
  . $BOOKSDIR/Fahrenheit_451/Fahrenheit451.sh #KEYWORDS_FAHRENHEIT451
  . $BOOKSDIR/Lord_of_the_Flies/LordoftheFlies.sh #KEYWORDS_LORDOFTHEFLIES
  . $BOOKSDIR/Moby_Dick/MobyDick.sh #KEYWORDS_MOBYDICK
  . $BOOKSDIR/Of_Mice_and_Men/OfMiceAndMen.sh #KEYWORDS_MICEANDMEN
  . $BOOKSDIR/Percy_Jackson/PercyJackson.sh #KEYWORDS_PERCYJACKSON
  . $BOOKSDIR/Redwall/Redwall.sh #KEYWORDS_REDWALL
  . $BOOKSDIR/The_39_Clues/The39Clues.sh #KEYWORDS_THE39CLUES
  . $BOOKSDIR/The_Giver/TheGiver.sh #KEYWORDS_THEGIVER
  . $BOOKSDIR/The_Wizard_of_Oz/TheWizardofOz.sh #KEYWORDS_WIZARDOFOZ
  . $BOOKSDIR/To_Kill_a_Mockingbird/ToKillAMockingbird.sh #KEYWORDS_TOKILLAMOCKINGBIRD

  debug_end "Books"

fi