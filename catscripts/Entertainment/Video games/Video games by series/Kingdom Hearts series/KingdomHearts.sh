#!/bin/bash

cat newpages.txt | egrep -i 'roxas|ventus|vanitas|xion|xenahort|sora.+kairi|kairi.+sora|sora.+riku|riku.+sora|kingdom hearts|keyblade' | egrep -iv 'hearts (II|2)|kh(2|3|4|II|III)|kh (2|3|4|II|III)|final mix|chain of memories|\bcom\b|358|birth by sleep|khbbs|\bbbs\b' >> KingdomHeartsSeries.txt

cat newpages.txt | egrep -i 'Kingdom Hearts (2|II\b)|Kingdom Hearts(2|II\b)|KH(2|II\b)|KH (2|II\b)' >> KingdomHeartsII.txt

cat newpages.txt | egrep -i 'Kingdom Hearts (3|III\b)|Kingdom Hearts(3|III\b)|KH(3|III\b)|KH (3|III\b)' >> KingdomHeartsIII.txt

cat newpages.txt | egrep -i 'Chain of Memories|KH:COM|\bKHCOM\b|\bKH COM\b' >> ChainOfMemories.txt

cat newpages.txt | egrep -i 'Birth by Sleep|KH:BBS|KHBBS|KH BBS' >> BirthBySleep.txt
  
KINGDOMHEARTSSERIES=`stat --print=%s KingdomHeartsSeries.txt`
KINGDOMHEARTSII=`stat --print=%s KingdomHeartsII.txt`
KINGDOMHEARTSIII=`stat --print=%s KingdomHeartsIII.txt`
CHAINOFMEMORIES=`stat --print=%s ChainOfMemories.txt`
BIRTHBYSLEEP=`stat --print=%s BirthBySleep.txt`

if [ $KINGDOMHEARTSSERIES -ne 0 ];
then
  ./catscripts/Entertainment/Video\ games/Video\ games\ by\ series/Kingdom\ Hearts\ series/catKingdomHeartsSeries.sh
fi

if [ $KINGDOMHEARTSII -ne 0 ];
then
  ./catscripts/Entertainment/Video\ games/Video\ games\ by\ series/Kingdom\ Hearts\ series/catKingdomHeartsII.sh
fi

if [ $KINGDOMHEARTSIII -ne 0 ];
then
  ./catscripts/Entertainment/Video\ games/Video\ games\ by\ series/Kingdom\ Hearts\ series/catKingdomHeartsIII.sh
fi

if [ $CHAINOFMEMORIES -ne 0 ];
then
  ./catscripts/Entertainment/Video\ games/Video\ games\ by\ series/Kingdom\ Hearts\ series/catChainOfMemories.sh
fi

if [ $BIRTHBYSLEEP -ne 0 ];
then
  ./catscripts/Entertainment/Video\ games/Video\ games\ by\ series/Kingdom\ Hearts\ series/catBirthBySleep.sh
fi

rm KingdomHeartsSeries.txt
rm KingdomHeartsII.txt
rm KingdomHeartsIII.txt
rm ChainOfMemories.txt
rm BirthBySleep.txt