#!/bin/bash

egrep -i 'Lebanon' newpages.txt | egrep -iv 'New Jersey|\bNJ\b|bologna|baloney' >> Lebanon.txt

LEBANON=$(stat --print=%s Lebanon.txt)

if [ $LEBANON -ne 0 ];
then
  export CATFILE="Lebanon.txt"
  export CATNAME="Lebanon"
  $CATEGORIZE
fi

rm Lebanon.txt