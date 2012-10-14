#!/bin/bash

cat newpages.txt | egrep -i 'Cad Bane|Cadbane' >> CadBane.txt
cat newpages.txt | egrep -i 'Chewbacca' >> Chewbacca.txt
cat newpages.txt | egrep -i 'Boba Fett|Bobafett' >> BobaFett.txt
cat newpages.txt | egrep -i 'Jango Fett|Jangofett' >> JangoFett.txt
cat newpages.txt | egrep -i 'Jabba the Hutt|\bJabba\b' >> JabbaTheHutt.txt
cat newpages.txt | egrep -i 'Obi-Wan|Obiwan|Kenobi' >> Obi-WanKenobi.txt
cat newpages.txt | egrep -i 'Anakin Skywalker|Anakinskywalker|Darth Vader|\bVader\b' >> DarthVader.txt
cat newpages.txt | egrep -i 'Luke Skywalker|Lukeskywalker' >> LukeSkywalker.txt
cat newpages.txt | egrep -i 'Mara Jade|Marajade|Mara Skywalker' >> MaraJadeSkywalker.txt
cat newpages.txt | egrep -i 'Anakin Solo|Anakinsolo' >> AnakinSolo.txt
cat newpages.txt | egrep -i 'Han Solo|Hansolo' >> HanSolo.txt
cat newpages.txt | egrep -i 'Jacen Solo|Jacensolo|\bCaedus\b|Darthcaedus' >> DarthCaedus.txt
cat newpages.txt | egrep -i 'Leia Organa|Leiaorgana|Leia Solo|Leiasolo|Princess Leia|Princessleia' >> LeiaOrganaSolo.txt
cat newpages.txt | egrep -i 'Ahsoka Tano|Ahsokatano|Asoka Tano|Asokatano|Ashoka Tano|Ashokatano' >> AhsokaTano.txt
cat newpages.txt | egrep -i '\bYoda\b' >> Yoda.txt

CADBANE=`stat --print=%s CadBane.txt`
CHEWBACCA=`stat --print=%s Chewbacca.txt`
BOBAFETT=`stat --print=%s BobaFett.txt`
JANGOFETT=`stat --print=%s JangoFett.txt`
JABBA=`stat --print=%s JabbaTheHutt.txt`
KENOBI=`stat --print=%s Obi-WanKenobi.txt`
VADER=`stat --print=%s DarthVader.txt`
LUKE=`stat --print=%s LukeSkywalker.txt`
MARA=`stat --print=%s MaraJadeSkywalker.txt
ANAKINSOLO=`stat --print=%s AnakinSolo.txt`
HANSOLO=`stat --print=%s HanSolo.txt`
JACEN=`stat --print=%s DarthCaedus.txt`
LEIA=`stat --print=%s LeiaOrganaSolo.txt`
AHSOKA=`stat --print=%s AhsokaTano.txt`
YODA=`stat --print=%s Yoda.txt`

if [ $CADBANE -ne 0 ];
then
  export CATFILE="CadBane.txt"
  export CATNAME="Cad Bane"
  ./catscripts/Categorize.sh
fi

if [ $CHEWBACCA -ne 0 ];
then
  export CATFILE="Chewbacca.txt"
  export CATNAME="Chewbacca"
  ./catscripts/Categorize.sh
fi

if [ $BOBAFETT -ne 0 ];
then
  export CATFILE="BobaFett.txt"
  export CATNAME="Boba Fett"
  ./catscripts/Categorize.sh
fi

if [ $JANGOFETT -ne 0 ];
then
  export CATFILE="JangoFett.txt"
  export CATNAME="Jango Fett"
  ./catscripts/Categorize.sh
fi

if [ $JABBA -ne 0 ];
then
  export CATFILE="JabbaTheHutt.txt"
  export CATNAME="Jabba the Hutt"
  ./catscripts/Categorize.sh
fi

if [ $KENOBI -ne 0 ];
then
  export CATFILE="Obi-WanKenobi.txt"
  export CATNAME="Obi-Wan Kenobi"
  ./catscripts/Categorize.sh
fi

if [ $VADER -ne 0 ];
then
  export CATFILE="DarthVader.txt"
  export CATNAME="Anakin Skywalker / Darth Vader"
  ./catscripts/Categorize.sh
fi

if [ $LUKE -ne 0 ];
then
  export CATFILE="LukeSkywalker.txt"
  export CATNAME="Luke Skywalker"
  ./catscripts/Categorize.sh
fi

if [ $MARA -ne 0 ];
then
  export CATFILE="MaraJadeSkywalker.txt"
  export CATNAME="Mara Jade Skywalker"
  ./catscripts/Categorize.sh
fi

if [ $ANAKINSOLO -ne 0 ];
then
  export CATFILE="AnakinSolo.txt"
  export CATNAME="Anakin Solo"
  ./catscripts/Categorize.sh
fi

if [ $HANSOLO -ne 0 ];
then
  export CATFILE="HanSolo.txt"
  export CATNAME="Han Solo"
  ./catscripts/Categorize.sh
fi

if [ $JACEN -ne 0 ];
then
  export CATFILE="DarthCaedus.txt"
  export CATNAME="Jacen Solo / Darth Caedus"
  ./catscripts/Categorize.sh
fi

if [ $LEIA -ne 0 ];
then
  export CATFILE="LeiaOrganaSolo.txt"
  export CATNAME="Leia Organa Solo"
  ./catscripts/Categorize.sh
fi

if [ $AHSOKA -ne 0 ];
then
  export CATFILE="AhsokaTano.txt"
  export CATNAME="Ahsoka Tano"
  ./catscripts/Categorize.sh
fi

if [ $YODA -ne 0 ];
then
  export CATFILE="Yoda.txt"
  export CATNAME="Yoda"
  ./catscripts/Categorize.sh
fi

rm CadBane.txt
rm Chewbacca.txt
rm BobaFett.txt
rm JangoFett.txt
rm JabbaTheHutt.txt
rm Obi-WanKenobi.txt
rm DarthVader.txt
rm LukeSkywalker.txt
rm MaraJadeSkywalker.txt
rm AnakinSolo.txt
rm HanSolo.txt
rm DarthCaedus.txt
rm LeiaOrganaSolo.txt
rm AhsokaTano.txt
rm Yoda.txt