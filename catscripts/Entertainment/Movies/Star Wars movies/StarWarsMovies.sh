#!/bin/bash

egrep -i 'Star Wars.+Episode (1|I\b)|Phantom Menace' newpages.txt >> EpisodeI.txt
egrep -i 'Star Wars.+Episode (2|II\b)|Attack of the Clones' newpages.txt >> EpisodeII.txt
egrep -i 'Star Wars.+Episode (3|III\b)|Revenge of the Sith' newpages.txt >>  EpisodeIII.txt
egrep -i 'Star Wars.+Episode (4|IV\b)|A New Hope' newpages.txt >>  EpisodeIV.txt
egrep -i 'Star Wars.+Episode (5|\bV\b)|Empire Strikes Back' newpages.txt >>  EpisodeV.txt
egrep -i 'Star Wars.+Episode (6|\bVI\b)|Return of the Jedi|\bROTJ\b' newpages.txt >>  EpisodeVI.txt

EPISODEI=`stat --print=%s EpisodeI.txt`
EPISODEII=`stat --print=%s EpisodeII.txt`
EPISODEIII=`stat --print=%s EpisodeIII.txt`
EPISODEIV=`stat --print=%s EpisodeIV.txt`
EPISODEV=`stat --print=%s EpisodeV.txt`
EPISODEVI=`stat --print=%s EpisodeVI.txt`

if [ $EPISODEI -ne 0 ];
then
  export CATFILE="EpisodeI.txt"
  export CATNAME="Star Wars Episode I: The Phantom Menace"
  $CATEGORIZE
fi

if [ $EPISODEII -ne 0 ];
then
  export CATFILE="EpisodeII.txt"
  export CATNAME="Star Wars Episode II: Attack of the Clones"
  $CATEGORIZE
fi

if [ $EPISODEIII -ne 0 ];
then
  export CATFILE="EpisodeIII.txt"
  export CATNAME="Star Wars Episode III: Revenge of the Sith"
  $CATEGORIZE
fi

if [ $EPISODEIV -ne 0 ];
then
  export CATFILE="EpisodeIV.txt"
  export CATNAME="Star Wars Episode IV: A New Hope"
  $CATEGORIZE
fi

if [ $EPISODEV -ne 0 ];
then
  export CATFILE="EpisodeV.txt"
  export CATNAME="Star Wars Episode V: The Empire Strikes Back"
  $CATEGORIZE
fi

if [ $EPISODEVI -ne 0 ];
then
  export CATFILE="EpisodeVI.txt"
  export CATNAME="Star Wars Episode VI: Return of the Jedi"
  $CATEGORIZE
fi

rm EpisodeI.txt
rm EpisodeII.txt
rm EpisodeIII.txt
rm EpisodeIV.txt
rm EpisodeV.txt
rm EpisodeVI.txt
