#!/bin/bash


date > lastrun
#Export settings. Copy settings.conf.example to settings.conf as a starting point

while read x; do
  export $x
done < settings.conf
#Fetch new pages
PIDFILE="pidfile.lock"
if [ -e "$PIDFILE" ]; then
PID=`cat $PIDFILE`
if kill -0 $PID > /dev/null 2>&1; then
printf 'Already running\n'
exit 1
else
rm $PIDFILE
fi
fi
echo $$ > $PIDFILE

#GET http://cfaj.freeshell.org/ipaddr.cgi > address.txt

#while read y; do
#  python $PYWIKIPEDIADIR/add_text.py -page:"User:$BOTNAME" -text:$y -except:$y -always
#done < address.txt  

echo "Generating pages"

python $PYWIKIPEDIADIR/pagegenerators.py -new:$NPL|sed 's|[0-9][0-9][0-9]: |\* \[\[|'| sed 's|[0-9][0-9]: |\* \[\[|' | sed 's|[0-9]: |\* \[\[|' | sed 's:$:]]:' > newpages.txt

#This fetches pages that may be older but have been edited recently; a great way to play catchup
python $PYWIKIPEDIADIR/pagegenerators.py -recentchanges -ns:0|sed 's|[0-9][0-9][0-9]: |\* \[\[|'| sed 's|[0-9][0-9]: |\* \[\[|' | sed 's|[0-9]: |\* \[\[|' | sed 's:$:]]:' >> newpages.txt

#This fetches a random redirect and checks its target. Inefficient, but better than nothing ATM
python $PYWIKIPEDIADIR/pagegenerators.py -randomredirect:1 -ns:0|sed 's|[0-9][0-9][0-9]: |\* \[\[|'| sed 's|[0-9][0-9]: |\* \[\[|' | sed 's|[0-9]: |\* \[\[|' | sed 's:$:]]:' >> newpages.txt
 
#grep keywords from list


##Poptropica

cat newpages.txt | egrep -i 'poptropica|potropica|poptopica' > Poptropica.txt

##Moshi Monsters

cat newpages.txt | egrep -i 'Moshi Monsters|moshimonsters|moshling|furnando|furando|meowford|dustbin beaver|dustbinbeaver|dustin beaver|meowford' > MoshiMonsters.txt

##PNPA

cat newpages.txt | egrep -i 'PNPA' > PNPA.txt
cat newpages.txt | egrep -i '(pnp\b.+neuro|neuro.+pnp)' >> PNPA.txt


#Size test

POPTROPICA=`stat --print=%s Poptropica.txt`
MOSHIMONSTERS=`stat --print=%s MoshiMonsters.txt`
PNPA=`stat --print=%s PNPA.txt`


if [ $POPTROPICA -ne 0 ];
then
  export CATFILE="Poptropica.txt"
  export CATNAME="Poptropica"
  ./catscripts/Categorize.sh
fi

if [ $MOSHIMONSTERS -ne 0 ];
then
  export CATFILE="MoshiMonsters.txt"
  export CATNAME="Moshi Monsters"
  ./catscripts/Categorize.sh
fi

if [ $PNPA -ne 0 ];
then
  export CATFILE="PNPA.txt"
  export CATNAME="PNPA"
  ./catscripts/Categorize.sh
fi

./catscripts/Entertainment/Entertainment.sh
./catscripts/Government/Government.sh
./catscripts/Language/Language.sh
./catscripts/Lifestyle/Lifestyle.sh
./catscripts/Maintenance/Maintenance.sh
./catscripts/Math/Math.sh
./catscripts/Science/Science.sh
./catscripts/Technology/Technology.sh
./catscripts/Transportation/Transportation.sh


#Cleanup

echo "Cleanup"

rm Poptropica.txt
rm MoshiMonsters.txt
rm PNPA.txt

rm $PIDFILE
