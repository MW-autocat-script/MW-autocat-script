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

  EPISODEI=$(egrep -i "$KEYWORDS_PHANTOMMENACE" "$NEWPAGES")
  EPISODEII=$(egrep -i "$KEYWORDS_ATTACKCLONES" "$NEWPAGES")
  EPISODEIII=$(egrep -i "$KEYWORDS_REVENGESITH" "$NEWPAGES")
  EPISODEIV=$(egrep -i "$KEYWORDS_NEWHOPE" "$NEWPAGES")
  EPISODEV=$(egrep -i "$KEYWORDS_EMPIRESTRIKES" "$NEWPAGES")
  EPISODEVI=$(egrep -i "$KEYWORDS_RETURNJEDI" "$NEWPAGES")

  categorize "EPISODEI" "Star Wars Episode I: The Phantom Menace"
  categorize "EPISODEII" "Star Wars Episode II: Attack of the Clones"
  categorize "EPISODEIII" "Star Wars Episode III: Revenge of the Sith"
  categorize "EPISODEIV" "Star Wars Episode IV: A New Hope"
  categorize "EPISODEV" "Star Wars Episode V: The Empire Strikes Back"
  categorize "EPISODEVI" "Star Wars Episode VI: Return of the Jedi"

  debug_end "Star Wars movies"

fi
