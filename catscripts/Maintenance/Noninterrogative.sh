#!/bin/bash


KEYWORDS_WHO="\bwho(|s)\b"
KEYWORDS_WHAT="\bwhat"
KEYWORDS_WHERE="\bwhere\b"
KEYWORDS_WHEN="\bwhen\b|(^|(\.|,) )Whens\b"
KEYWORDS_WHY="\bwhy(|')(s|d|)\b"
KEYWORDS_WHOSE="^Whose\b"
KEYWORDS_HOW="\bhow\b"
KEYWORDS_DO="(^|(\.|,) )Do "
KEYWORDS_DOESNT="(^|(\.|,) )Doesn(|')t\b"
KEYWORDS_HAS="(^|(\.|,) )has\b"
KEYWORDS_HASNT="(^|(\.|,) )Hasn(|')t"
KEYWORDS_DOES="(^|\. |, )does\b"
KEYWORDS_DID="(^|\. |, )did\b"
KEYWORDS_DIDNT="(^|(\.|,) )Didn(|')t"
KEYWORDS_WILL="(^|\. |, )Will\b"
KEYWORDS_IS="(^|(\.|,) )Is\b"
KEYWORDS_ISNT="(^|(\.|,) )(Isn(|')t)"
KEYWORDS_ARE="(^|(\.|,) )Are\b"
KEYWORDS_ARENT="(^|(\.|,) )Aren(|')t\b"
KEYWORDS_WERE="(^|(\.|,) )were\b"
KEYWORDS_WAS="(^|(\.|,) )was\b"
KEYWORDS_WHICH="(^|(\.|,) )which\b"
KEYWORDS_COULD="(^|(\.|,) )could"
KEYWORDS_SHOULD="(^|(\.|,) )should\b"
KEYWORDS_SHOULDNT="(^|(\.|,) )shouldn(|')t"
KEYWORDS_WOULD="(^|(\.|,) )would"
KEYWORDS_CAN="(^|\. |, )can\b"
KEYWORDS_CANT="(^|(\.|,) )Can('|)t"
KEYWORDS_AMI="\bAm I\b"
KEYWORDS_HAVE="(^|(\.|,) )Have(|n(|')t)\b"

KEYWORDS_INTERROGATIVE="$KEYWORDS_WHO|$KEYWORDS_WHAT|$KEYWORDS_WHERE|$KEYWORDS_WHEN|$KEYWORDS_WHOSE|$KEYWORDS_WHY|$KEYWORDS_HOW|$KEYWORDS_DO|$KEYWORDS_HAS|$KEYWORDS_HASNT|$KEYWORDS_DOES|$KEYWORDS_DOESNT|$KEYWORDS_DID|$KEYWORDS_DIDNT|$KEYWORDS_WILL|$KEYWORDS_IS|$KEYWORDS_ISNT|$KEYWORDS_ARE|$KEYWORDS_ARENT|$KEYWORDS_WERE|$KEYWORDS_WAS|$KEYWORDS_WHICH|$KEYWORDS_COULD|$KEYWORDS_SHOULD|$KEYWORDS_SHOULDNT|$KEYWORDS_WOULD|$KEYWORDS_CAN|$KEYWORDS_CANT|$KEYWORDS_AMI|$KEYWORDS_HAVE"


if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Non-interrogative question search"

  NONINT=$(egrep -iv "$KEYWORDS_INTERROGATIVE" "$NEWPAGES")

  categorize "NONINT" "Page titles lacking an interrogative word"

  debug_end "Non-interrogative question search"

fi