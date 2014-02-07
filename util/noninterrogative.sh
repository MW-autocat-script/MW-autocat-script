#!/bin/bash

KEYWORDS_WHO="(^|\b)Who\b"
KEYWORDS_WHO_EXCLUDE="Doctor Who"
KEYWORDS_WHAT="\bWhat|^What"
KEYWORDS_WHERE="\bWhere\b"
KEYWORDS_WHEN="\bWhen\b|^Whens\b"
KEYWORDS_WHY="\bwhy\b"
KEYWORDS_HOW="\bHow\b"
KEYWORDS_DO="((\.|,) |^)Do\b"
KEYWORDS_DOES="((\.|,) |^)Does\b"
KEYWORDS_DOESNT="((\.|,) |^)Doesn't\b"
KEYWORDS_DID="((\.|,) |^)Did\b"
KEYWORDS_DIDNT="((\.|,) |^)Didn(|')t\b"
KEYWORDS_WILL="((\.|,) |^)Will\b"
KEYWORDS_IS="((\.|,) |^)Is\b"
KEYWORDS_ISNT="((\.|,) |^)Isn(|')t\b"
KEYWORDS_ARE="((\.|,) |^)Are\b"
KEYWORDS_ARENT="((\.|,) |^)Aren(|')t\b"
KEYWORDS_WERE="((\.|,) |^)Were\b"
KEYWORDS_WERENT="((\.|,) |^)Weren(|')t\b"
KEYWORDS_WAS="((\.|,) |^)Was\b"
KEYWORDS_WHICH="^Which\b"
KEYWORDS_COULD="((\.|,) |^)Could\b"
KEYWORDS_COULDNT="((\.|,) |^)Couldn(|')t\b"
KEYWORDS_SHOULD="((\.|,) |^)Should\b"
KEYWORDS_SHOULDNT="((\.|,) |^)Shouldn(|')t\b"
KEYWORDS_WOULD="((\.|,) |^)Would\b"
KEYWORDS_WOULDNT="((\.|,) |^)Wouldn(|')t\b"
KEYWORDS_CAN="((\.|,) |^)Can\b"
KEYWORDS_CANT="((\.|,) |^)Can(|')t\b"
KEYWORDS_HAS="((\.|,) |^)Has\b"
KEYWORDS_HASNT="((\.|,) |^)Hasn(|')t\b"
KEYWORDS_AMI="\bAm I\b"

if [ "$1" == "" ];
then

  debug_start "Non-interrogative removal script"

  remove_cat_nonint () {
    python "$PYWIKIPEDIADIR/replace.py" -file:"$1.txt" -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches $1)" -always
  }

  python "$PYWIKIPEDIADIR/pagegenerators.py" -category:"Page titles lacking an interrogative word" > nonint.txt

  NONINT="$(cat nonint.txt)"

  if [ "$NONINT" != "" ];
  then

    WHO="$(egrep -i "$KEYWORDS_WHO" nonint.txt | egrep -iv "$KEYWORDS_WHO_EXCLUDE")"
    WHAT="$(egrep -i "$KEYWORDS_WHAT" nonint.txt)"
    WHERE="$(egrep -i "$KEYWORDS_WHERE" nonint.txt)"
    WHEN="$(egrep -i "$KEYWORDS_WHEN" nonint.txt)"
    WHY="$(egrep -i "$KEYWORDS_WHY" nonint.txt)"
    HOW="$(egrep -i "$KEYWORDS_HOW" nonint.txt)"
    DO="$(egrep -i "$KEYWORDS_DO" nonint.txt)"
    DOES="$(egrep -i "$KEYWORDS_DOES" nonint.txt)"
    DOESNT="$(egrep -i "$KEYWORDS_DOESNT" nonint.txt)"
    DID="$(egrep -i "$KEYWORDS_DID" nonint.txt)"
    DIDNT="$(egrep -i "$KEYWORDS_DIDNT" nonint.txt)"
    WILL="$(egrep -i "$KEYWORDS_WILL" nonint.txt)"
    IS="$(egrep -i "$KEYWORDS_IS" nonint.txt)"
    ISNT="$(egrep -i "$KEYWORDS_ISNT" nonint.txt)"
    ARE="$(egrep -i "$KEYWORDS_ARE" nonint.txt)"
    ARENT="$(egrep -i "$KEYWORDS_ARENT" nonint.txt)"
    WERE="$(egrep -i "$KEYWORDS_WERE" nonint.txt)"
    WERENT="$(egrep -i "$KEYWORDS_WERENT" nonint.txt)"
    WAS="$(egrep -i "$KEYWORDS_WAS" nonint.txt)"
    WHICH="$(egrep -i "$KEYWORDS_WHICH" nonint.txt)"
    COULD="$(egrep -i "$KEYWORDS_COULD" nonint.txt)"
    COULDNT="$(egrep -i "$KEYWORDS_COULDNT" nonint.txt)"
    SHOULD="$(egrep -i "$KEYWORDS_SHOULD" nonint.txt)"
    SHOULDNT="$(egrep -i "$KEYWORDS_SHOULDNT" nonint.txt)"
    WOULD="$(egrep -i "$KEYWORDS_WOULD" nonint.txt)"
    WOULDNT="$(egrep -i "$KEYWORDS_WOULDNT" nonint.txt)"
    CAN="$(egrep -i "$KEYWORDS_CAN" nonint.txt)"
    CANT="$(egrep -i "$KEYWORDS_CANT" nonint.txt)"
    HAS="$(egrep -i "$KEYWORDS_HAS" nonint.txt)"
    HASNT="$(egrep -i "$KEYWORDS_HASNT" nonint.txt)"
    AMI="$(egrep -i "$KEYWORDS_AMI" nonint.txt)"

    if [ "$WHO" != "" ];
    then
      printf "%s" "$WHO" > Who.txt
      remove_cat_nonint "Who"
      rm Who.txt
      unset WHO
    fi

    if [ "$WHAT" != "" ];
    then
      printf "%s" "$WHAT" > What.txt
      remove_cat_nonint "What"
      rm What.txt
      unset WHAT
    fi

    if [ "$WHERE" != "" ];
    then
      printf "%s" "$WHERE" > Where.txt
      remove_cat_nonint "Where"
      rm Where.txt
      unset WHERE
    fi

    if [ "$WHEN" != "" ];
    then
      printf "%s" "$WHEN" > When.txt
      remove_cat_nonint "When"
      rm When.txt
      unset WHEN
    fi

    if [ "$WHY" != "" ];
    then
      printf "%s" "$WHY" > Why.txt
      remove_cat_nonint "Why"
      rm Why.txt
      unset WHY
    fi

    if [ "$HOW" != "" ];
    then
      printf "%s" "$HOW" > How.txt
      remove_cat_nonint "How"
      rm How.txt
      unset HOW
    fi

    if [ "$DO" != "" ];
    then
      printf "%s" "$DO" > Do.txt
      remove_cat_nonint "Do"
      rm Do.txt
      unset DO
    fi

    if [ "$DOES" != "" ];
    then
      printf "%s" "$DOES" > Does.txt
      remove_cat_nonint "Does"
      rm Does.txt
      unset DOES
    fi

    if [ "$DOESNT" != "" ];
    then
      printf "%s" "$DOESNT" > "Doesn't.txt"
      remove_cat_nonint "Doesn't"
      rm "Doesn't.txt"
      unset DOESNT
    fi

    if [ "$DID" != "" ];
    then
      printf  "%s" "$DID" > Did.txt
      remove_cat_nonint "Did"
      rm Did.txt
      unset DID
    fi

    if [ "$DIDNT" != "" ];
    then
      printf "%s" "$DIDNT" > "Didn't.txt"
      remove_cat_nonint "Didn't"
      rm "Didn't.txt"
      unset DIDNT
    fi

    if [ "$WILL" != "" ];
    then
      printf "%s" "$WILL" > Will.txt
      remove_cat_nonint "Will"
      rm Will.txt
      unset WILL
    fi

    if [ "$IS" != "" ];
    then
      printf "%s" "$IS" > Is.txt
      remove_cat_nonint "Is"
      rm Is.txt
      unset IS
    fi

    if [ "$ISNT" != "" ];
    then
      printf "%s" "$ISNT" > "Isn't.txt"
      remove_cat_nonint "Isn't.txt"
      rm "Isn't.txt"
      unset ISNT
    fi

    if [ "$ARE" != "" ];
    then
      printf "%s" "$ARE" > Are.txt
      remove_cat_nonint "Are.txt"
      rm Are.txt
      unset ARE
    fi

    if [ "$ARENT" != "" ];
    then
      printf "%s" "$ARENT" > "Aren't.txt"
      remove_cat_nonint "Aren't"
      rm "Aren't.txt"
      unset ARENT
    fi

    if [ "$WERE" != "" ];
    then
      printf "%s" "$WERE" > Were.txt
      remove_cat_nonint "Were"
      rm Were.txt
      unset WERE
    fi

    if [ "$WERENT" != "" ];
    then
      printf "%s" "$WERENT" > "Weren't.txt"
      remove_cat_nonint "Weren't"
      rm "Weren't.txt"
      unset WERENT
    fi

    if [ "$WAS" != "" ];
    then
      printf "%s" "$WAS" > Was.txt
      remove_cat_nonint "Was"
      rm Was.txt
      unset WAS
    fi

    if [ "$WHICH" != "" ];
    then
      printf "%s" "$WHICH" > Which.txt
      remove_cat_nonint "Which"
      rm Which.txt
      unset WHICH
    fi

    if [ "$COULD" != "" ];
    then
      printf "%s" "$COULD" > Could.txt
      remove_cat_nonint "Could"
      rm Could.txt
      unset COULD
    fi

    if [ "$COULDNT" != "" ];
    then
      printf "%s" "$COULDNT" > "Couldn't.txt"
      remove_cat_nonint "Couldn't"
      rm "Couldn't.txt"
      unset COULDNT
    fi

    if [ "$SHOULD" != "" ];
    then
      printf "%s" "$SHOULD" > Should.txt
      remove_cat_nonint "Should"
      rm Should.txt
      unset SHOULD
    fi

    if [ "$SHOULDNT" != "" ];
    then
      printf "%s" "$SHOULDNT" > "Shouldn't.txt"
      remove_cat_nonint "Shouldn't"
      rm "Shouldn't.txt"
      unset SHOULDNT
    fi

    if [ "$WOULD" != "" ];
    then
      printf "%s" "$WOULD" > Would.txt
      remove_cat_nonint "Would"
      rm Would.txt
      unset WOULD
    fi

    if [ "$WOULDNT" != "" ];
    then
      printf "%s" "$WOULDNT" > "Wouldn't.txt"
      remove_cat_nonint "Wouldn't"
      rm "Wouldn't.txt"
      unset WOULDNT
    fi

    if [ "$CAN" != "" ];
    then
      printf "%s" "$CAN" > Can.txt
      remove_cat_nonint "Can"
      rm Can.txt
      unset CAN
    fi

    if [ "$CANT" != "" ];
    then
      printf "%s" "$CANT" > "Can't.txt"
      remove_cat_nonint "Can't"
      rm "Can't.txt"
      unset CANT
    fi

    if [ "$HAS" != "" ];
    then
      printf "%s" "$HAS" > Has.txt
      remove_cat_nonint "Has"
      rm Has.txt
      unset HAS
    fi

    if [ "$HASNT" != "" ];
    then
      printf "%s" "$HASNT" > "Hasn't.txt"
      remove_cat_nonint "Hasn't"
      rm "Hasn't.txt"
      unset HASNT
    fi

    if [ "$AMI" != "" ];
    then
      printf "%s" "$AMI" > "Am I.txt"
      remove_cat_nonint "Am I"
      rm "Am I.txt"
      unset AMI
    fi

  rm nonint.txt

  fi

  debug_end "Non-interrogative removal script"

fi