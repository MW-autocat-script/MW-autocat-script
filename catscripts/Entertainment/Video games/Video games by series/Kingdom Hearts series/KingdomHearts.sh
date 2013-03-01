#!/bin/bash

egrep -i 'roxas|ventus|vanitas|xion|xenahort|sora.+kairi|kairi.+sora|sora.+riku|riku.+sora|kingdom hearts|keyblade' newpages.txt | egrep -iv 'hearts (II|2)|kh(2|3|4|II|III)|kh (2|3|4|II|III)|final mix|chain of memories|\bcom\b|358|birth by sleep|khbbs|\bbbs\b' >> KingdomHeartsSeries.txt
egrep -i 'Kingdom Hearts (2|II\b)|Kingdom Hearts(2|II\b)|KH(2|II\b)|KH (2|II\b)' newpages.txt >> KingdomHeartsII.txt
egrep -i 'Kingdom Hearts (3\b|III\b)|Kingdom Hearts(3\b|III\b)|KH(3\b|III\b)|KH (3\b|III\b)' newpages.txt >> KingdomHeartsIII.txt
egrep -i 'Chain of Memories|KH:COM|\bKHCOM\b|\bKH COM\b' newpages.txt >> ChainOfMemories.txt
egrep -i 'Birth by Sleep|KH:BBS|KHBBS|KH BBS' newpages.txt >> BirthBySleep.txt
  
KINGDOMHEARTSSERIES=`stat --print=%s KingdomHeartsSeries.txt`
KINGDOMHEARTSII=`stat --print=%s KingdomHeartsII.txt`
KINGDOMHEARTSIII=`stat --print=%s KingdomHeartsIII.txt`
CHAINOFMEMORIES=`stat --print=%s ChainOfMemories.txt`
BIRTHBYSLEEP=`stat --print=%s BirthBySleep.txt`

if [ $KINGDOMHEARTSSERIES -ne 0 ];
then
  export CATFILE="KingdomHeartsSeries.txt"
  export CATNAME="Kingdom Hearts series"
  ./catscripts/Categorize.sh
fi

if [ $KINGDOMHEARTSII -ne 0 ];
then
  export CATFILE="KingdomHeartsII.txt"
  export CATNAME="Kingdom Hearts II"
  ./catscripts/Categorize.sh
fi

if [ $KINGDOMHEARTSIII -ne 0 ];
then
  export CATFILE="KingdomHeartsIII.txt"
  export CATNAME="Kingdom Hearts III"
  ./catscripts/Categorize.sh
fi

if [ $CHAINOFMEMORIES -ne 0 ];
then
  export CATFILE="ChainOfMemories.txt"
  export CATNAME="Kingdom Hearts: Chain of Memories"
  ./catscripts/Categorize.sh
fi

if [ $BIRTHBYSLEEP -ne 0 ];
then
  export CATFILE="BirthBySleep.txt"
  export CATNAME="Kingdom Hearts Birth by Sleep"
  ./catscripts/Categorize.sh
fi

rm KingdomHeartsSeries.txt
rm KingdomHeartsII.txt
rm KingdomHeartsIII.txt
rm ChainOfMemories.txt
rm BirthBySleep.txt