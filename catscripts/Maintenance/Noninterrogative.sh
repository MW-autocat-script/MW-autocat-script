#!/bin/bash

egrep -iv "\bwho" newpages.txt| egrep -iv "\bwhat" | egrep -iv "where\b" | egrep -iv "\bwhen\b" | egrep -iv "(^|\[\[)Whens\b" | egrep -iv "\bwhy" | egrep -iv "\bhow\b" | egrep -iv "\bdo\b" | egrep -iv "\shas\b" | egrep -iv "does\b" | egrep -iv "did\b" | egrep -iv "(^|\[\[|, )Will\b" | egrep -iv "(^|\[\[)Is\b" | egrep -iv "\. Is\b" | egrep -iv "(^|\[\[)Are\b" | egrep -iv "(^|\[\[)Aren't\b" | egrep -iv "(^|\[\[)were\b" | egrep -iv "\bwas\b" | egrep -iv "\bwhich\b" | egrep -iv "\bcould" | egrep -iv "should\b" | egrep -iv "shouldn't" | egrep -iv "\bwould" | egrep -iv "(^|\[\[|, )can\b" | egrep -iv "(^|\[\[)Has\b" | egrep -iv "(^|\[\[)Hasn't" | egrep -iv "\bAm I\b" | egrep -iv "(^|\[\[)Have(|n(|')t)\b" | egrep -iv "(^|\[\[)(Isn't|Isnt)" | egrep -iv "(^|\[\[)(Doesn't|Doesnt)\b" | egrep -iv "(^|\[\[)Didn(|')t" >> noninterrogative.txt

NONINT=`stat --print=%s noninterrogative.txt`

if [ $NONINT -ne 0 ];
then
  export CATFILE="noninterrogative.txt"
  export CATNAME="Page titles lacking an interrogative word"
  $CATEGORIZE
fi

rm noninterrogative.txt