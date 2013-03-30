#!/bin/bash

egrep -i 'Cad Bane|Cadbane' newpages.txt >> CadBane.txt
egrep -i 'C-3PO|C3PO' newpages.txt >> C-3PO.txt
egrep -i 'Chewbacca' newpages.txt >> Chewbacca.txt
egrep -i 'Boba Fett|Bobafett' newpages.txt >> BobaFett.txt
egrep -i 'Jango Fett|Jangofett' newpages.txt >> JangoFett.txt
egrep -i 'Jabba the Hutt|\bJabba\b' newpages.txt >> JabbaTheHutt.txt
egrep -i 'Obi-Wan|Obiwan|Kenobi' newpages.txt >> Obi-WanKenobi.txt
egrep -i 'Darth Maul' newpages.txt >> DarthMaul.txt
egrep -i 'Palpatine|Darth Sidious' newpages.txt >> DarthSidious.txt
egrep -i 'Plo Koon' newpages.txt >> PloKoon.txt
egrep -i 'R2-D2|R2D2' newpages.txt >> R2-D2.txt
egrep -i '\bRevan' newpages.txt >> Revan.txt
egrep -i 'Anakin Skywalker|Anakinskywalker|Darth Vader|\bVader\b' newpages.txt >> DarthVader.txt
egrep -i 'Luke Skywalker|Lukeskywalker' newpages.txt >> LukeSkywalker.txt
egrep -i 'Mara Jade|Marajade|Mara Skywalker' newpages.txt >> MaraJadeSkywalker.txt
egrep -i 'Anakin Solo|Anakinsolo' newpages.txt >> AnakinSolo.txt
egrep -i 'Han Solo|Hansolo' newpages.txt >> HanSolo.txt
egrep -i 'Jacen Solo|Jacensolo|\bCaedus\b|Darthcaedus' newpages.txt >> DarthCaedus.txt
egrep -i 'Leia Organa|Leiaorgana|Leia Solo|Leiasolo|Princess Leia|Princessleia' newpages.txt >> LeiaOrganaSolo.txt
egrep -i 'Ahsoka Tano|Ahsokatano|Asoka Tano|Asokatano|Ashoka Tano|Ashokatano' newpages.txt >> AhsokaTano.txt
egrep -i '\bWindu\b|Mace Windu' newpages.txt >> MaceWindu.txt
egrep -i '\bYoda\b' newpages.txt >> Yoda.txt

CADBANE=`stat --print=%s CadBane.txt`
C3PO=`stat --print=%s C-3PO.txt`
CHEWBACCA=`stat --print=%s Chewbacca.txt`
BOBAFETT=`stat --print=%s BobaFett.txt`
JANGOFETT=`stat --print=%s JangoFett.txt`
JABBA=`stat --print=%s JabbaTheHutt.txt`
KENOBI=`stat --print=%s Obi-WanKenobi.txt`
MAUL=`stat --print=%s DarthMaul.txt`
SIDIOUS=`stat --print=%s Sidious.txt`
KOON=`stat --print=%s PloKoon.txt`
R2D2=`stat --print=%s R2-D2.txt`
REVAN=`stat --print=%s Revan.txt`
VADER=`stat --print=%s DarthVader.txt`
LUKE=`stat --print=%s LukeSkywalker.txt`
MARA=`stat --print=%s MaraJadeSkywalker.txt`
ANAKINSOLO=`stat --print=%s AnakinSolo.txt`
HANSOLO=`stat --print=%s HanSolo.txt`
JACEN=`stat --print=%s DarthCaedus.txt`
LEIA=`stat --print=%s LeiaOrganaSolo.txt`
AHSOKA=`stat --print=%s AhsokaTano.txt`
WINDU=`stat --print=%s MaceWindu.txt`
YODA=`stat --print=%s Yoda.txt`

if [ $CADBANE -ne 0 ];
then
  export CATFILE="CadBane.txt"
  export CATNAME="Cad Bane"
  $CATEGORIZE
fi

if [ $C3PO -ne 0 ];
then
  export CATFILE="C-3PO.txt"
  export CATNAME="C-3PO"
  $CATEGORIZE
fi

if [ $CHEWBACCA -ne 0 ];
then
  export CATFILE="Chewbacca.txt"
  export CATNAME="Chewbacca"
  $CATEGORIZE
fi

if [ $BOBAFETT -ne 0 ];
then
  export CATFILE="BobaFett.txt"
  export CATNAME="Boba Fett"
  $CATEGORIZE
fi

if [ $JANGOFETT -ne 0 ];
then
  export CATFILE="JangoFett.txt"
  export CATNAME="Jango Fett"
  $CATEGORIZE
fi

if [ $JABBA -ne 0 ];
then
  export CATFILE="JabbaTheHutt.txt"
  export CATNAME="Jabba the Hutt"
  $CATEGORIZE
fi

if [ $KENOBI -ne 0 ];
then
  export CATFILE="Obi-WanKenobi.txt"
  export CATNAME="Obi-Wan Kenobi"
  $CATEGORIZE
fi

if [ $KOON -ne 0 ];
then
  export CATFILE="PloKoon.txt"
  export CATNAME="Plo Koon"
  $CATEGORIZE
fi

if [ $MAUL -ne 0 ];
then
  export CATFILE="DarthMaul.txt"
  export CATNAME="Darth Maul"
  $CATEGORIZE
fi

if [ $SIDIOUS -ne 0 ];
then
  export CATFILE="DarthSidious.txt"
  export CATNAME="Darth Sidious"
  $CATEGORIZE
fi

if [ $R2D2 -ne 0 ];
then
  export CATFILE="R2-D2.txt"
  export CATNAME="R2-D2"
  $CATEGORIZE
fi

if [ $REVAN -ne 0 ];
then
  export CATFILE="Revan.txt"
  export CATNAME="Revan"
  $CATEGORIZE
fi

if [ $VADER -ne 0 ];
then
  export CATFILE="DarthVader.txt"
  export CATNAME="Anakin Skywalker / Darth Vader"
  $CATEGORIZE
fi

if [ $LUKE -ne 0 ];
then
  export CATFILE="LukeSkywalker.txt"
  export CATNAME="Luke Skywalker"
  $CATEGORIZE
fi

if [ $MARA -ne 0 ];
then
  export CATFILE="MaraJadeSkywalker.txt"
  export CATNAME="Mara Jade Skywalker"
  $CATEGORIZE
fi

if [ $ANAKINSOLO -ne 0 ];
then
  export CATFILE="AnakinSolo.txt"
  export CATNAME="Anakin Solo"
  $CATEGORIZE
fi

if [ $HANSOLO -ne 0 ];
then
  export CATFILE="HanSolo.txt"
  export CATNAME="Han Solo"
  $CATEGORIZE
fi

if [ $JACEN -ne 0 ];
then
  export CATFILE="DarthCaedus.txt"
  export CATNAME="Jacen Solo / Darth Caedus"
  $CATEGORIZE
fi

if [ $LEIA -ne 0 ];
then
  export CATFILE="LeiaOrganaSolo.txt"
  export CATNAME="Leia Organa Solo"
  $CATEGORIZE
fi

if [ $AHSOKA -ne 0 ];
then
  export CATFILE="AhsokaTano.txt"
  export CATNAME="Ahsoka Tano"
  $CATEGORIZE
fi

if [ $WINDU -ne 0 ];
then
  export CATFILE="MaceWindu.txt"
  export CATNAME="Mace Windu"
  $CATEGORIZE
fi

if [ $YODA -ne 0 ];
then
  export CATFILE="Yoda.txt"
  export CATNAME="Yoda"
  $CATEGORIZE
fi

rm CadBane.txt
rm C-3PO.txt
rm Chewbacca.txt
rm BobaFett.txt
rm JangoFett.txt
rm JabbaTheHutt.txt
rm Obi-WanKenobi.txt
rm PloKoon.txt
rm DarthMaul.txt
rm DarthSidious.txt
rm R2-D2.txt
rm Revan.txt
rm DarthVader.txt
rm LukeSkywalker.txt
rm MaraJadeSkywalker.txt
rm AnakinSolo.txt
rm HanSolo.txt
rm DarthCaedus.txt
rm LeiaOrganaSolo.txt
rm AhsokaTano.txt
rm MaceWindu.txt
rm Yoda.txt