#!/bin/bash

date > lastrun
#Export settings. Copy settings.conf.example to settings.conf as a starting point

while read x; do
  export $x
done < settings.conf
#Fetch new pages
if [ -e "$PIDFILE" ]; then
PID="$(cat "$PIDFILE")"
if kill -0 "$PID" > /dev/null 2>&1; then
printf 'Already running\n'
exit 1
else
rm "$PIDFILE"
fi
fi
echo $$ > "$PIDFILE"

export CATEGORIZE="./util/Categorize.sh"
#GET http://cfaj.freeshell.org/ipaddr.cgi > address.txt

debug_start(){
  local x="$1"
  if [ "$DEBUG" == "yes" ] || [ "$DEBUG" == "y" ]; 
  then
    printf "Starting %s\n" "$x"
  fi
}

debug_end(){
  local y="$1"
  if [ "$DEBUG" == "yes" ] || [ "$DEBUG" == "y" ]; 
  then
    printf "Finishing %s\n" "$y"
  fi
}

categorize(){
    local listpages=$(eval echo \$$1)
    printf "%s" "$listpages" > TEMPCATFILE.txt
    export CATFILE="TEMPCATFILE.txt"
    export CATNAME="$2"
    ./util/Categorize.sh
    rm TEMPCATFILE.txt
}

export -f debug_start
export -f debug_end 
export -f categorize  

echo "Generating pages"

python "$PYWIKIPEDIADIR"/pagegenerators.py -new:"$NPL" > newpages.txt
python "$PYWIKIPEDIADIR"/pagegenerators.py -usercontribs:"SpellBot;50" -pt:1 >> newpages.txt #catches pages that have been renamed by spelling bot

#This fetches pages that may be older but have been edited recently; a great way to play catchup
python "$PYWIKIPEDIADIR"/pagegenerators.py -recentchanges -ns:0 >> newpages.txt


#This checks to see if the list of new questions has changed since last run. If not, then do not running

touch MD5SUM #Just in case the file doesn't exist yet

OLDSUM="$(cat MD5SUM)"
NEWSUM="$(md5sum newpages.txt | cut -b-32)"

if [ "$OLDSUM" != "$NEWSUM" ]; #Lists have changed
then
 
  ./catscripts/Education/Education.sh
  ./catscripts/Entertainment/Entertainment.sh
  ./catscripts/Government/Government.sh
  ./catscripts/Language/Language.sh
  ./catscripts/Legal/Legal.sh
  ./catscripts/Lifestyle/Lifestyle.sh
  ./catscripts/Maintenance/Maintenance.sh
  ./catscripts/Math/Math.sh
  ./catscripts/Science/Science.sh
  ./catscripts/Technology/Technology.sh
  ./catscripts/Temp/Temp.sh
  ./catscripts/Transportation/Transportation.sh


  echo "$NEWSUM" > MD5SUM

fi

#Remove questions that have interrogative words from category 'Page titles lacking an interrogative word'

./util/noninterrogative.sh
./util/period.sh

rm "$PIDFILE"
