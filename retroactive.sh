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

export CATEGORIZE="./util/Categorize.sh"
#GET http://cfaj.freeshell.org/ipaddr.cgi > address.txt

printf "Fetching all pages from wiki. This may take a long time on larger wikis.\n"

python $PYWIKIPEDIADIR/pagegenerators.py -start:. -pt:1 |sed s'|  [0-9][0-9][0-9][0-9][0-9][0-9]: ||'|sed s'|  [0-9][0-9][0-9][0-9][0-9]: ||'|sed s'|  [0-9][0-9][0-9][0-9]: ||'  | sed s'|  [0-9][0-9][0-9]: ||' | sed s'|  [0-9][0-9]: ||' | sed s'|  [0-9]: ||' > newpages.txt

printf "List complete; beginning categorization\n"
 
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

printf "Script has completed\n"