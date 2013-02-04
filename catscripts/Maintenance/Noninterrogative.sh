#1/bin/bash

egrep -iv "\bwho|\bwhat|where\b|\bwhen\b|\[\[Whens\b|\bwhy|how\b|\bdo\b|\shas\b|does\b|did\b|will\b|is\b|\[\[Are\b|\[\[Aren't\b|\bwere\b|\bwas\b|\bwhich\b|\bcould|should\b|shouldn't|\bwould|can\b|\[\[Has\b|\[\[Hasn't|[0-9]{1,}(| )(-|\+|x|/|\*|%|\^)|\bAm I\b|\[\[Have(|n(|')t)\b" newpages.txt >> noninterrogative.txt

NONINT=`stat --print=%s noninterrogative.txt`

if [ $NONINT -ne 0 ];
then
  export CATFILE="noninterrogative.txt"
  export CATNAME="Page titles lacking an interrogative word"
  ./catscripts/Categorize.sh
fi

rm noninterrogative.txt