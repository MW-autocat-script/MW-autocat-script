#!/bin/bash

debug_start "Authors"

AUTHORSDIR="./catscripts/Entertainment/Literature/Authors"

  . $AUTHORSDIR/Dr_Seuss/DrSeuss.sh #KEYWORDS_DRSEUSS
  . $AUTHORSDIR/Lewis_Carroll/LewisCarroll.sh #KEYWORDS_LEWISCARROLL
  . $AUTHORSDIR/Mark_Twain/MarkTwain.sh #KEYWORDS_MARKTWAIN
  . $AUTHORSDIR/William_Shakespeare/WilliamShakespeare.sh
  . $AUTHORSDIR/Stephenie_Meyer/StephenieMeyer.sh #KEYWORDS_STEPHENIEMEYER
  . $AUTHORSDIR/Roald_Dahl/RoaldDahl.sh #KEYWORDS_ROALDDAHL

debug_end "Authors"