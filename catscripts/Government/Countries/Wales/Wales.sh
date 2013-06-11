#!/bin/bash

egrep -i 'Wales' newpages.txt | egrep -iv 'Jim(|bo|my)(| )Wales|New South Wales' >> Wales.txt

WALES=`stat --print=%s Wales.txt`

if [ $WALES -ne 0 ];
then
  export CATFILE="Wales.txt"
  export CATNAME="Wales"
  $CATEGORIZE
fi

rm Wales.txt