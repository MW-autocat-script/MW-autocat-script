#!/bin/bash

debug_start "Authors"

AUTHORSDIR="./catscripts/Entertainment/Literature/Authors"

  . $AUTHORSDIR/Charles_Dickens/CharlesDickens.sh #KEYWORDS_CHARLESDICKENS
  . $AUTHORSDIR/Dr_Seuss/DrSeuss.sh #KEYWORDS_DRSEUSS
  . $AUTHORSDIR/Edgar_Allan_Poe/Poe.sh #KEYWORDS_POE
  . $AUTHORSDIR/Emily_Dickinson/EmilyDickinson.sh #KEYWORDS_EMILYDICKINSON
  . $AUTHORSDIR/J_K_Rowling/JKRowling.sh #KEYWORDS_JKROWLING
  . $AUTHORSDIR/Lewis_Carroll/LewisCarroll.sh #KEYWORDS_LEWISCARROLL
  . $AUTHORSDIR/Mark_Twain/MarkTwain.sh #KEYWORDS_MARKTWAIN
  . $AUTHORSDIR/Maya_Angelou/MayaAngelou.sh #KEYWORDS_MAYAANGELOU
  . $AUTHORSDIR/William_Shakespeare/WilliamShakespeare.sh
  . $AUTHORSDIR/Stephenie_Meyer/StephenieMeyer.sh #KEYWORDS_STEPHENIEMEYER
  . $AUTHORSDIR/Roald_Dahl/RoaldDahl.sh #KEYWORDS_ROALDDAHL
  . $AUTHORSDIR/Robert_Frost/RobertFrost.sh #KEYWORDS_ROBERTFROST

debug_end "Authors"