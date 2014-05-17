#!/bin/bash

egrep -i 'Melbourne' newpages.txt | egrep -iv 'Melbourne(|,) Fl' >> Melbourne.txt

MELBOURNE=$(stat --print=%s Melbourne.txt)

if [ $MELBOURNE -ne 0 ];
then
  export CATFILE="Melbourne.txt"
  export CATNAME="Melbourne, Australia"
  $CATEGORIZE
fi

rm Melbourne.txt