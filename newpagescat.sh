#!/bin/bash

date > lastrun
#Export settings. Copy settings.sh.example to settings.sh as a starting point

. ./settings.sh

exec 666> $PIDFILE
flock -n 666 || exit 1 #Exits if already running
PID=$$
echo $PID 1>&666

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
    printf "%s" "${!1}" > "$TEMPDIR/$1.txt"
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


#This checks to see if the list of new questions has changed since last run. If not, then do not run


SUMFILE="$TEMPDIR/MD5SUM"
touch "$SUMFILE" #Just in case the file doesn't exist yet
OLDSUM=$(cat "$SUMFILE")
NEWSUM=$(md5sum "$NEWPAGES" | cut -b-32)

if [ "$OLDSUM" != "$NEWSUM" ]; #Lists have changed
then

categories=( "Maintenance" "Education" "Entertainment" "Government" "Language" "Legal" "Lifestyle" "Math" "Science" "Technology" "Temp" "Transportation" )

for category in "${categories[@]}"
do
  ./catscripts/$category/$category.sh
done

  echo "$NEWSUM" > "$SUMFILE"

fi

#Remove questions that have interrogative words from category 'Page titles lacking an interrogative word'

./util/noninterrogative.sh
./util/period.sh

