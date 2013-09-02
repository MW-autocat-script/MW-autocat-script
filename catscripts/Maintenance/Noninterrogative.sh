#!/bin/bash

egrep -iv "\bwho(|s)\b" newpages.txt| egrep -iv "\bwhat" | egrep -iv "\bwhere\b" | egrep -iv "\bwhen\b" | egrep -iv "(^|\[\[|(\.|,) )Whens\b" | egrep -iv "\bwhy" | egrep -iv "\bhow\b" | egrep -iv "(^|\[\[|(\.|,) )Do " | egrep -iv "(^|\[\[|(\.|,) )has\b" | egrep -iv "(^|\[\[|\. |, )does\b" | egrep -iv "(^|\[\[|\. |, )did\b" | egrep -iv "(^|\[\[|\. |, )Will\b" | egrep -iv "(^|\[\[|(\.|,) )Is\b" | egrep -iv "(^|\[\[|(\.|,) )Are\b" | egrep -iv "(^|\[\[|(\.|,) )Aren't\b" | egrep -iv "(^|\[\[|(\.|,) )were\b" | egrep -iv '(^|\[\[|(\.|,) )was\b' | egrep -iv "(^|\[\[|(\.|,) )which\b" | egrep -iv "(^|\[\[|(\.|,) )could" | egrep -iv "(^|\[\[|(\.|,) )should\b" | egrep -iv "(^|\[\[|(\.|,) )shouldn(|')t" | egrep -iv "(^|\[\[|(\.|,) )would" | egrep -iv "(^|\[\[|\. |, )can\b" | egrep -iv "(^|\[\[|(\.|,) )Has\b" | egrep -iv "(^|\[\[|(\.|,) )Hasn't" | egrep -iv "\bAm I\b" | egrep -iv "(^|\[\[|(\.|,) )Have(|n(|')t)\b" | egrep -iv "(^|\[\[|(\.|,) )(Isn(|')t)" | egrep -iv "(^|\[\[|(\.|,) )Doesn(|')t\b" | egrep -iv "(^|\[\[|(\.|,) )Can('|)t" | egrep -iv "(^|\[\[|(\.|,) )Didn(|')t" >> noninterrogative.txt

NONINT=`stat --print=%s noninterrogative.txt`

if [ $NONINT -ne 0 ];
then
  export CATFILE="noninterrogative.txt"
  export CATNAME="Page titles lacking an interrogative word"
  $CATEGORIZE
fi

rm noninterrogative.txt