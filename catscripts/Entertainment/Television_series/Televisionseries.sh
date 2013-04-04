#!/bin/bash

egrep -i 'television (series|show)' newpages.txt \
| egrep -iv 'iCarly' \
>> Series.txt

SERIES=`stat --print=%s Series.txt`

if [ $SERIES -ne 0 ];
then
  export CATFILE="Series.txt"
  export CATNAME="Television series"
  $CATEGORIZE
fi

rm Series.txt
