#!/bin/bash

python $PYWIKIPEDIADIR/pagegenerators.py -category:"Page titles lacking an interrogative word" |sed s'| [0-9][0-9][0-9][0-9][0-9][0-9]: ||'|sed s'| [0-9][0-9][0-9][0-9][0-9]: ||'|sed s'| [0-9][0-9][0-9][0-9]: ||'  | sed s'| [0-9][0-9][0-9]: ||' | sed s'| [0-9][0-9]: ||' | sed s'|[0-9]: ||' > nonint.txt

egrep -i '^Who\b' nonint.txt >> Who.txt
egrep -i '\bwho\b' nonint.txt | egrep -iv 'Doctor Who' >> Who.txt
egrep -i '\bWhat' nonint.txt >> What.txt
egrep -i '\bWhere\b' nonint.txt >> Where.txt
egrep -i '\bWhen\b' nonint.txt >> When.txt
egrep -i '^Whens\b' nonint.txt >> When.txt
egrep -i '\bwhy\b' nonint.txt >> Why.txt
egrep -i '\bHow\b' nonint.txt >> How.txt
egrep -i '^Do\b' nonint.txt >> Do.txt
egrep -i '^Does\b' nonint.txt >> Does.txt
egrep -i "^Doesn't\b" nonint.txt >> Doesnt.txt
egrep -i '^Did\b' nonint.txt >> Did.txt
egrep -i "^Didn't\b|^Didnt\b" nonint.txt >> Didnt.txt
egrep -i '^Will\b' nonint.txt >> Will.txt
egrep -i '^Is\b' nonint.txt >> Is.txt
egrep -i "^Isn't\b|^Isnt\b" nonint.txt >> Isnt.txt
egrep -i '^Are\b' nonint.txt >> Are.txt
egrep -i "^Aren't\b|^Arent\b" nonint.txt >> Arent.txt
egrep -i '^Were\b' nonint.txt  >> Were.txt
egrep -i "^Weren't\b|^Werent\b" nonint.txt >> Werent.txt
egrep -i '^Was\b' nonint.txt >> Was.txt
egrep -i '^Which\b' nonint.txt >> Which.txt
egrep -i '^Could\b' nonint.txt >> Could.txt
egrep -i "^Couldn't\b|^Couldnt\b" nonint.txt >> Couldnt.txt
egrep -i '^Should\b' nonint.txt >> Should.txt
egrep -i "^Shouldn't\b|^Shouldnt\b" nonint.txt >> Shouldnt.txt
egrep -i '^Would\b' nonint.txt >> Would.txt
egrep -i "^Wouldn't\b|^Wouldnt\b" nonint.txt >> Wouldnt.txt
egrep -i '^Can\b' nonint.txt >> Can.txt
egrep -i "^Can't\b|^Cant\b" nonint.txt >> Cant.txt
egrep -i '^Has\b' nonint.txt >> Has.txt
egrep -i "^Hasn't\b|^Hasnt\b" nonint.txt >> Hasnt.txt
egrep -i '\bAm I\b' nonint.txt >> AmI.txt

WHO=`stat --print=%s Who.txt`
WHAT=`stat --print=%s What.txt`
WHERE=`stat --print=%s Where.txt`
WHEN=`stat --print=%s When.txt`
WHY=`stat --print=%s Why.txt`
HOW=`stat --print=%s How.txt`
DO=`stat --print=%s Do.txt`
DOES=`stat --print=%s Does.txt`
DOESNT=`stat --print=%s Doesnt.txt`
DID=`stat --print=%s Did.txt`
DIDNT=`stat --print=%s Didnt.txt`
WILL=`stat --print=%s Will.txt`
IS=`stat --print=%s Is.txt`
ISNT=`stat --print=%s Isnt.txt`
ARE=`stat --print=%s Are.txt`
ARENT=`stat --print=%s Arent.txt`
WERE=`stat --print=%s Were.txt`
WERENT=`stat --print=%s Werent.txt`
WAS=`stat --print=%s Was.txt`
WHICH=`stat --print=%s Which.txt`
COULD=`stat --print=%s Could.txt`
COULDNT=`stat --print=%s Couldnt.txt`
SHOULD=`stat --print=%s Should.txt`
SHOULDNT=`stat --print=%s Shouldnt.txt`
WOULD=`stat --print=%s Would.txt`
WOULDNT=`stat --print=%s Wouldnt.txt`
CAN=`stat --print=%s Can.txt`
CANT=`stat --print=%s Cant.txt`
HAS=`stat --print=%s Has.txt`
HASNT=`stat --print=%s Hasnt.txt`
AMI=`stat --print=%s AmI.txt`

if [ $WHO -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Who.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Who)" -always
fi

if [ $WHAT -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:What.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches What)" -always
fi

if [ $WHERE -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Where.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Where)" -always
fi

if [ $WHEN -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:When.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches When)" -always
fi

if [ $WHY -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Why.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Why)" -always
fi

if [ $HOW -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:How.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches How)" -always
fi

if [ $DO -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Do.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Do)" -always
fi

if [ $DOES -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Does.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Does)" -always
fi

if [ $DOESNT -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Doesnt.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Doesn't)" -always
fi

if [ $DID -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Did.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Did)" -always
fi

if [ $DIDNT -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Didnt.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Didn't)" -always
fi

if [ $WILL -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Will.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Will)" -always
fi

if [ $IS -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Is.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Is)" -always
fi

if [ $ISNT -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Isnt.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Isn't)" -always
fi

if [ $ARE -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Are.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Are)" -always
fi

if [ $ARENT -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Arent.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Aren't)" -always
fi

if [ $WERE -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Were.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Were)" -always
fi

if [ $WERENT -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Werent.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Weren't)" -always
fi

if [ $WAS -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Was.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Was)" -always
fi

if [ $WHICH -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Which.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Which)" -always
fi

if [ $COULD -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Could.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Could)" -always
fi

if [ $COULDNT -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Couldnt.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Couldn't)" -always
fi

if [ $SHOULD -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Should.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Should)" -always
fi

if [ $SHOULDNT -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Shouldnt.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Shouldn't)" -always
fi

if [ $WOULD -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Would.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Would)" -always
fi

if [ $WOULDNT -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Wouldnt.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Wouldn't)" -always
fi

if [ $CAN -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Can.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Can)" -always
fi

if [ $CANT -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Cant.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Can't)" -always
fi

if [ $HAS -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Has.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Has)" -always
fi

if [ $HASNT -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:Hasnt.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Hasn't)" -always
fi

if [ $AMI -ne 0 ];
then
  python $PYWIKIPEDIADIR/replace.py -file:AmI.txt -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches Am I)" -always
fi

rm Who.txt
rm What.txt
rm Where.txt
rm When.txt
rm Why.txt
rm How.txt
rm Do.txt
rm Does.txt
rm Doesnt.txt
rm Did.txt
rm Didnt.txt
rm Will.txt
rm Is.txt
rm Isnt.txt
rm Are.txt
rm Arent.txt
rm Were.txt
rm Werent.txt
rm Was.txt
rm Which.txt
rm Could.txt
rm Couldnt.txt
rm Should.txt
rm Shouldnt.txt
rm Would.txt
rm Wouldnt.txt
rm Can.txt
rm Cant.txt
rm Has.txt
rm Hasnt.txt
rm AmI.txt
rm nonint.txt