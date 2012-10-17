#1/bin/bash

cat newpages.txt | egrep -iv "\bwho|\bwhat|where\b|\bwhen\b|\bwhy|how\b|\bdo\b|\shas\b|does\b|did\b|will\b|is\b|are\b|\bwere\b|\bwas\b|\bwhich\b|\bcould|should\b|shouldn't|\bwould|can\b|\[\[Has\b|\[\[Hasn't|[0-9]{1,}" >> noninterrogative.txt

NONINT=`stat --print=%s noninterrogative.txt`

if [ $NONINT -ne 0 ];
then
  export CATFILE="noninterrogative.txt"
  export CATNAME="Page titles lacking an interrogative word"
  ./catscripts/Categorize.sh
fi

rm noninterrogative.txt