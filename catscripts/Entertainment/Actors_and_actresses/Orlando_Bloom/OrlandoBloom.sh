export KEYWORDS_ACTOR_ORLANDOBLOOM="Orlando(| )Bloom"

egrep -i "$KEYWORDS_ACTOR_ORLANDOBLOOM" newpages.txt >> OrlandoBloom.txt

ORLANDOBLOOM=`stat --print=%s OrlandoBloom.txt`

if [ $ORLANDOBLOOM -ne 0 ];
then
  export CATFILE="OrlandoBloom.txt"
  export CATNAME="Orlando Bloom"
  $CATEGORIZE
fi

rm OrlandoBloom.txt