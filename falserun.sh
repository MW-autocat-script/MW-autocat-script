#!/bin/bash

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

export -f debug_start
export -f debug_end   

#Force debug on
DEBUG="yes"

echo "Creating empty test file"

cat /dev/null > newpages.txt


OLDSUM="A"
NEWSUM="B"

if [ "$OLDSUM" != "$NEWSUM" ]; 
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

fi

rm "$PIDFILE"
