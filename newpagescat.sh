#!/bin/bash

date > lastrun
#Export settings. Copy settings.sh.example to settings.sh as a starting point

. ./settings.sh

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

#Set TEMPDIR to safe value if not specified in settings.conf

if [ "$TEMPDIR" == "" ];
then
  export TEMPDIR="/tmp/$BOTNAME"
fi

if [ ! -d "$TEMPDIR" ];
then
  mkdir "$TEMPDIR"
fi

export NEWPAGES="$TEMPDIR/newpages.txt"

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
  if [ "${!1}" != "" ];
  then
    printf "%s" "${!1}" > "$TEMPDIR/CATFILE.txt"
    export CATFILE="$TEMPDIR/$1.txt"
    export CATNAME="$2"
    ./util/Categorize.sh
    rm "$CATFILE"
    unset "$1"
    unset CATNAME
  fi
}

export -f debug_start
export -f debug_end
export -f categorize

echo "Generating pages"

python "$PYWIKIPEDIADIR"/pagegenerators.py -new:"$NPL" > "$NEWPAGES" #Fetch new pages
python "$PYWIKIPEDIADIR"/pagegenerators.py -usercontribs:"SpellBot;50" -pt:1 >> "$NEWPAGES" #catches pages that have been renamed by spelling bot

#This fetches pages that may be older but have been edited recently; a great way to play catchup
python "$PYWIKIPEDIADIR"/pagegenerators.py -recentchanges -ns:0 >> "$NEWPAGES"


#This checks to see if the list of new questions has changed since last run. If not, then do not running


SUMFILE="$TEMPDIR/MD5SUM"
touch "$SUMFILE" #Just in case the file doesn't exist yet
OLDSUM=$(cat "$SUMFILE")
NEWSUM=$(md5sum "$NEWPAGES" | cut -b-32)

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


  echo "$NEWSUM" > "$SUMFILE"

fi

#Remove questions that have interrogative words from category 'Page titles lacking an interrogative word'

./util/noninterrogative.sh
./util/period.sh

rm "$PIDFILE"
