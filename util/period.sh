#!/bin/bash


PERIOD="$(python $PYWIKIPEDIADIR/pagegenerators.py -category:"Page titles ending in a period")"


if [ "$PERIOD" != "" ];
then

  NOPERIOD="$(printf "%s" "$PERIOD" | egrep -iv "\.$")"

  if [ "$NOPERIOD" != "" ];
  then
    printf "%s" "$NOPERIOD" > Noperiod.txt
    python "$PYWIKIPEDIADIR/replace.py" -file:Noperiod.txt -nocase -regex '\[\[Category:Page titles ending in a period\]\]' '' -pt:"$GBT" -always -summary:'Bot - removing questions that have had the period removed from the end'
    unset NOPERIOD
  fi

 FINDRIGHT="$(printf "%s" "$PERIOD" | egrep -i "\b(J|S)r\.$|\bD\.C\.$")" #Jr, R, and Washington, 

  if [ "$FINDRIGHT" != "" ];
  then
    printf "%s" "$FINDRIGHT" > Findright.txt
    python "$PYWIKIPEDIADIR/replace.py" -file:Findright.txt -nocase -regex '\[\[Category:Page titles ending in a period\]\]' '' -pt:"$GBT" -always -summary:'Bot - removing questions that have had an acceptable abbreviation placed at the end (in liewu of removing the period)'
    unset FINDRIGHT
  fi

  unset PERIOD

fi
