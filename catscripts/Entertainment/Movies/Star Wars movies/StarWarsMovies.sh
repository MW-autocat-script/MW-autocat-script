#!/bin/bash

KEYWORDS_PHANTOMMENACE="Star(| )Wars.+Episode(| )(1|I\b)|Phantom(| )Menace"
KEYWORDS_ATTACKCLONES="Star(| )Wars.+Episode(| )(2|II\b)|Attack(| )of(| )the(| )Clones"
KEYWORDS_REVENGESITH="Star(| )Wars.+Episode(| )(3|III\b)|Revenge(| )of(| )the(| )Sith"
KEYWORDS_NEWHOPE="Star(| )Wars.+Episode(| )(4|IV\b)|A(| )New(| )Hope"
KEYWORDS_EMPIRESTRIKES="Star(| )Wars.+Episode(| )(5|\bV\b)|Empire(| )Strikes(| )Back"
KEYWORDS_RETURNJEDI="Star(| )Wars.+Episode(| )(6|\bVI\b)|Return(| )of(| )the(| )Jedi|\bROTJ\b"

if [ "$1" == "" ];
then

  debug_start "Star Wars movies"

  EPISODEI=$(egrep -i "$KEYWORDS_PHANTOMMENACE" newpages.txt)
  EPISODEII=$(egrep -i "$KEYWORDS_ATTACKCLONES" newpages.txt)
  EPISODEIII=$(egrep -i "$KEYWORDS_REVENGESITH" newpages.txt)
  EPISODEIV=$(egrep -i "$KEYWORDS_NEWHOPE" newpages.txt)
  EPISODEV=$(egrep -i "$KEYWORDS_EMPIRESTRIKES" newpages.txt)
  EPISODEVI=$(egrep -i "$KEYWORDS_RETURNJEDI" newpages.txt)

  if [ "$EPISODEI" != "" ];
  then
    printf "%s" "$EPISODEI" > EpisodeI.txt
    export CATFILE="EpisodeI.txt"
    export CATNAME="Star Wars Episode I: The Phantom Menace"
    $CATEGORIZE
    rm EpisodeI.txt
    unset EPISODEI
  fi

  if [ "$EPISODEII" != "" ];
  then
    printf "%s" "$EPISODEII" > EpisodeII.txt
    export CATFILE="EpisodeII.txt"
    export CATNAME="Star Wars Episode II: Attack of the Clones"
    $CATEGORIZE
    rm EpisodeII.txt
    unset EPISODEII
  fi

  if [ "$EPISODEIII" != "" ];
  then
    printf "%s" "$EPISODEIII" > EpisodeIII.txt
    export CATFILE="EpisodeIII.txt"
    export CATNAME="Star Wars Episode III: Revenge of the Sith"
    $CATEGORIZE
    rm EpisodeIII.txt
    unset EPISODEIII
  fi

  if [ "$EPISODEIV" != "" ];
  then
    printf "%s" "$EPISODEIV" > EpisodeIV.txt
    export CATFILE="EpisodeIV.txt"
    export CATNAME="Star Wars Episode IV: A New Hope"
    $CATEGORIZE
    rm EpisodeIV.txt
    unset EPISODEIV
  fi

  if [ "$EPISODEV" != "" ];
  then
    printf "%s" "$EPISODEV" > EpisodeV.txt
    export CATFILE="EpisodeV.txt"
    export CATNAME="Star Wars Episode V: The Empire Strikes Back"
    $CATEGORIZE
    rm EpisodeV.txt
    unset EPISODEV
  fi

  if [ "$EPISODEVI" != "" ];
  then
    printf "%s" "$EPISODEVI" > EpisodeVI.txt
    export CATFILE="EpisodeVI.txt"
    export CATNAME="Star Wars Episode VI: Return of the Jedi"
    $CATEGORIZE
    rm EpisodeVI.txt
    unset EPISODEVI
  fi

  debug_end "Star Wars movies"

fi
