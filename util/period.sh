#!/bin/bash


PERIOD=$(python $PYWIKIPEDIADIR/pagegenerators.py -category:"Page titles ending in a period" -pt:"$GBT")


if [ "$PERIOD" != "" ];
then

  NOPERIOD=$(printf "%s" "$PERIOD" | egrep -iv "\.$")

  if [ "$NOPERIOD" != "" ];
  then
    printf "%s" "$NOPERIOD" > "$TEMPDIR/Noperiod.txt"
    python "$PYWIKIPEDIADIR/replace.py" -file:"$TEMPDIR/Noperiod.txt" -nocase -regex '\[\[Category:Page titles ending in a period\]\]' '' -pt:"$GBT" -always -summary:'Bot - removing questions that have had the period removed from the end'
    unset NOPERIOD
  fi

 FINDRIGHT=$(printf "%s" "$PERIOD" | egrep -i "\b(J|S)r\.$|\bD\.C\.$") #Jr, Sr, and Washington, D.C.

  if [ "$FINDRIGHT" != "" ];
  then
    printf "%s" "$FINDRIGHT" > "$TEMPDIR/Findright.txt"
    python "$PYWIKIPEDIADIR/replace.py" -file:"$TEMPDIR/Findright.txt" -nocase -regex '\[\[Category:Page titles ending in a period\]\]' '' -pt:"$GBT" -always -summary:'Bot - removing questions that have had an acceptable abbreviation placed at the end (in liewu of removing the period)'
    unset FINDRIGHT
  fi

  unset PERIOD

fi
