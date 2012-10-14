#!/bin/bash
cat newpages.txt | egrep -i 'Zangoose' >> Zangoose.txt
cat newpages.txt | egrep -i 'Zapdos' >> Zapdos.txt
cat newpages.txt | egrep -i 'Zebstrika' >> Zebstrika.txt
cat newpages.txt | egrep -i 'Zekrom' >> Zekrom.txt
cat newpages.txt | egrep -i 'Zigzagoon' >> Zigzagoon.txt
cat newpages.txt | egrep -i 'Zoroark' >> Zoroark.txt
cat newpages.txt | egrep -i 'Zorua' >> Zorua.txt
cat newpages.txt | egrep -i 'Zweilous' >> Zweilous.txt
cat newpages.txt | egrep -i 'Zubat' >> Zubat.txt

Zangoose=`stat --print=%s Zangoose.txt`
Zapdos=`stat --print=%s Zapdos.txt`
Zebstrika=`stat --print=%s Zebstrika.txt`
Zekrom=`stat --print=%s Zekrom.txt`
Zigzagoon=`stat --print=%s Zigzagoon.txt`
Zoroark=`stat --print=%s Zoroark.txt`
Zorua=`stat --print=%s Zorua.txt`
Zweilous=`stat --print=%s Zweilous.txt`
Zubat=`stat --print=%s Zubat.txt`

if [ $Zangoose -ne 0 ];
then
  export CATFILE="Zangoose.txt"
  export CATNAME="Zangoose"
  ./catscripts/Categorize.sh
fi

if [ $Zapdos -ne 0 ];
then
  export CATFILE="Zapdos.txt"
  export CATNAME="Zapdos"
  ./catscripts/Categorize.sh
fi

if [ $Zebstrika -ne 0 ];
then
  export CATFILE="Zebstrika.txt"
  export CATNAME="Zebstrika"
  ./catscripts/Categorize.sh
fi

if [ $Zekrom -ne 0 ];
then
  export CATFILE="Zekrom.txt"
  export CATNAME="Zekrom"
  ./catscripts/Categorize.sh
fi

if [ $Zigzagoon -ne 0 ];
then
  export CATFILE="Zigzagoon.txt"
  export CATNAME="Zigzagoon"
  ./catscripts/Categorize.sh
fi

if [ $Zoroark -ne 0 ];
then
  export CATFILE="Zoroark.txt"
  export CATNAME="Zoroark"
  ./catscripts/Categorize.sh
fi

if [ $Zorua -ne 0 ];
then
  export CATFILE="Zorua.txt"
  export CATNAME="Zorua"
  ./catscripts/Categorize.sh
fi

if [ $Zweilous -ne 0 ];
then
  export CATFILE="Zweilous.txt"
  export CATNAME="Zweilous"
  ./catscripts/Categorize.sh
fi

if [ $Zubat -ne 0 ];
then
  export CATFILE="Zubat.txt"
  export CATNAME="Zubat"
  ./catscripts/Categorize.sh
fi


rm Zangoose.txt
rm Zapdos.txt
rm Zebstrika.txt
rm Zekrom.txt
rm Zigzagoon.txt
rm Zoroark.txt
rm Zorua.txt
rm Zweilous.txt
rm Zubat.txt