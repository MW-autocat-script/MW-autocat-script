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

export CATEGORIZE="./catscripts/Categorize.sh"
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
 
./catscripts/Entertainment/Entertainment.sh
./catscripts/Government/Government.sh
./catscripts/Language/Language.sh
./catscripts/Lifestyle/Lifestyle.sh
./catscripts/Maintenance/Maintenance.sh
./catscripts/Math/Math.sh
./catscripts/Science/Science.sh
./catscripts/Technology/Technology.sh
./catscripts/Temp/Temp.sh
./catscripts/Transportation/Transportation.sh

rm $PIDFILE
