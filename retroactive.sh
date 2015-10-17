#!/bin/bash

date > lastrun

#Export settings. Copy settings.sh.example to settings.sh as a starting point

. ./settings.sh

PIDFILE="pidfile.lock"

if [ -e "$PIDFILE" ]; then
  PID=$(cat $PIDFILE)
  if kill -0 "$PID" > /dev/null 2>&1; then
    printf 'Already running\n'
    exit 1
  else
    rm $PIDFILE
  fi
fi

echo $$ > $PIDFILE

#Set TEMPDIR to safe value if not specified in settings.conf

if [ "$TEMPDIR" == "" ];
then
  export TEMPDIR="/tmp/$BOTNAME"
fi

if [ ! -d "$TEMPDIR" ];
then
  mkdir "$TEMPDIR"
fi

export NEWPAGES="$TEMPDIR/allpages.txt"

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

printf "Fetching all pages from wiki. This may take a long time on larger wikis.\n"

python "$PYWIKIPEDIADIR/pagegenerators.py" -start:'.' -pt:1  > "$NEWPAGES"

printf "List complete; beginning categorization\n"

topcats=( Maintenance Education Entertainment Government Language Lifestyle Math Science Technology Temp Transportation)

for category in "${topcats[@]}"
do
	./catscripts/$category/$category.sh
done 

rm $PIDFILE
rm "$NEWPAGES"

printf "Script has completed\n"
