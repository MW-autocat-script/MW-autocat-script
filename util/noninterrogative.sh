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

  NOINTTXT="$TEMPDIR/nonint.txt"

  remove_cat_nonint () {
    python "$PYWIKIPEDIADIR/replace.py" -file:"$TEMPDIR/$1.txt" -regex '\[\[[cC]ategory:Page titles lacking an interrogative word\]\]' '' -pt:1 -summary:"Bot - removing questions that have had an interrogative word added (matches $1)" -always
  }

  python "$PYWIKIPEDIADIR/pagegenerators.py" -category:"Page titles lacking an interrogative word" > "$NOINTTXT"

  NONINT=$(python "$PYWIKIPEDIADIR/pagegenerators.py" -category:"Page titles lacking an interrogative word")

  if [ "$NONINT" != "" ];
  then

    printf "%s" "$NONINT" > "$NOINTTXT"

    WHO=$(egrep -i "$KEYWORDS_WHO" "$NOINTTXT" | egrep -iv "$KEYWORDS_WHO_EXCLUDE")
    WHAT=$(egrep -i "$KEYWORDS_WHAT" "$NOINTTXT")
    WHERE=$(egrep -i "$KEYWORDS_WHERE" "$NOINTTXT")
    WHEN=$(egrep -i "$KEYWORDS_WHEN" "$NOINTTXT")
    WHY=$(egrep -i "$KEYWORDS_WHY" "$NOINTTXT")
    HOW=$(egrep -i "$KEYWORDS_HOW" "$NOINTTXT")
    DO=$(egrep -i "$KEYWORDS_DO" "$NOINTTXT")
    DOES=$(egrep -i "$KEYWORDS_DOES" "$NOINTTXT")
    DOESNT=$(egrep -i "$KEYWORDS_DOESNT" "$NOINTTXT")
    DID=$(egrep -i "$KEYWORDS_DID" "$NOINTTXT")
    DIDNT=$(egrep -i "$KEYWORDS_DIDNT" "$NOINTTXT")
    WILL=$(egrep -i "$KEYWORDS_WILL" "$NOINTTXT")
    IS=$(egrep -i "$KEYWORDS_IS" "$NOINTTXT")
    ISNT=$(egrep -i "$KEYWORDS_ISNT" "$NOINTTXT")
    ARE=$(egrep -i "$KEYWORDS_ARE" "$NOINTTXT")
    ARENT=$(egrep -i "$KEYWORDS_ARENT" "$NOINTTXT")
    WERE=$(egrep -i "$KEYWORDS_WERE" "$NOINTTXT")
    WERENT=$(egrep -i "$KEYWORDS_WERENT" "$NOINTTXT")
    WAS=$(egrep -i "$KEYWORDS_WAS" "$NOINTTXT")
    WHICH=$(egrep -i "$KEYWORDS_WHICH" "$NOINTTXT")
    COULD=$(egrep -i "$KEYWORDS_COULD" "$NOINTTXT")
    COULDNT=$(egrep -i "$KEYWORDS_COULDNT" "$NOINTTXT")
    SHOULD=$(egrep -i "$KEYWORDS_SHOULD" "$NOINTTXT")
    SHOULDNT=$(egrep -i "$KEYWORDS_SHOULDNT" "$NOINTTXT")
    WOULD=$(egrep -i "$KEYWORDS_WOULD" "$NOINTTXT")
    WOULDNT=$(egrep -i "$KEYWORDS_WOULDNT" "$NOINTTXT")
    CAN=$(egrep -i "$KEYWORDS_CAN" "$NOINTTXT")
    CANT=$(egrep -i "$KEYWORDS_CANT" "$NOINTTXT")
    HAS=$(egrep -i "$KEYWORDS_HAS" "$NOINTTXT")
    HASNT=$(egrep -i "$KEYWORDS_HASNT" "$NOINTTXT")
    AMI=$(egrep -i "$KEYWORDS_AMI" "$NOINTTXT")

    if [ "$WHO" != "" ];
    then
      printf "%s" "$WHO" > "$TEMPDIR/Who.txt"
      remove_cat_nonint "Who"
      rm "$TEMPDIR/Who.txt"
      unset WHO
    fi

    if [ "$WHAT" != "" ];
    then
      printf "%s" "$WHAT" > "$TEMPDIR/What.txt"
      remove_cat_nonint "What"
      rm "$TEMPDIR/What.txt"
      unset WHAT
    fi

    if [ "$WHERE" != "" ];
    then
      printf "%s" "$WHERE" > "$TEMPDIR/Where.txt"
      remove_cat_nonint "Where"
      rm "$TEMPDIR/Where.txt"
      unset WHERE
    fi

    if [ "$WHEN" != "" ];
    then
      printf "%s" "$WHEN" > "$TEMPDIR/When.txt"
      remove_cat_nonint "When"
      rm "$TEMPDIR/When.txt"
      unset WHEN
    fi

    if [ "$WHY" != "" ];
    then
      printf "%s" "$WHY" > "$TEMPDIR/Why.txt"
      remove_cat_nonint "Why"
      rm "$TEMPDIR/Why.txt"
      unset WHY
    fi

    if [ "$HOW" != "" ];
    then
      printf "%s" "$HOW" > "$TEMPDIR/How.txt"
      remove_cat_nonint "How"
      rm "$TEMPDIR/How.txt"
      unset HOW
    fi

    if [ "$DO" != "" ];
    then
      printf "%s" "$DO" > "$TEMPDIR/Do.txt"
      remove_cat_nonint "Do"
      rm "$TEMPDIR/Do.txt"
      unset DO
    fi

    if [ "$DOES" != "" ];
    then
      printf "%s" "$DOES" > "$TEMPDIR/Does.txt"
      remove_cat_nonint "Does"
      rm "$TEMPDIR/Does.txt"
      unset DOES
    fi

    if [ "$DOESNT" != "" ];
    then
      printf "%s" "$DOESNT" > "$TEMPDIR/Doesn't.txt"
      remove_cat_nonint "Doesn't"
      rm "Doesn't.txt"
      unset DOESNT
    fi

    if [ "$DID" != "" ];
    then
      printf  "%s" "$DID" > "$TEMPDIR/Did.txt"
      remove_cat_nonint "Did"
      rm "$TEMPDIR/Did.txt"
      unset DID
    fi

    if [ "$DIDNT" != "" ];
    then
      printf "%s" "$DIDNT" > "$TEMPDIR/Didn't.txt"
      remove_cat_nonint "Didn't"
      rm "Didn't.txt"
      unset DIDNT
    fi

    if [ "$WILL" != "" ];
    then
      printf "%s" "$WILL" > "$TEMPDIR/Will.txt"
      remove_cat_nonint "Will"
      rm "$TEMPDIR/Will.txt"
      unset WILL
    fi

    if [ "$IS" != "" ];
    then
      printf "%s" "$IS" > "$TEMPDIR/Is.txt"
      remove_cat_nonint "Is"
      rm "$TEMPDIR/Is.txt"
      unset IS
    fi

    if [ "$ISNT" != "" ];
    then
      printf "%s" "$ISNT" > "$TEMPDIR/Isn't.txt"
      remove_cat_nonint "Isn't"
      rm "Isn't.txt"
      unset ISNT
    fi

    if [ "$ARE" != "" ];
    then
      printf "%s" "$ARE" > "$TEMPDIR/Are.txt"
      remove_cat_nonint "Are"
      rm "$TEMPDIR/Are.txt"
      unset ARE
    fi

    if [ "$ARENT" != "" ];
    then
      printf "%s" "$ARENT" > "$TEMPDIR/Aren't.txt"
      remove_cat_nonint "Aren't"
      rm "Aren't.txt"
      unset ARENT
    fi

    if [ "$WERE" != "" ];
    then
      printf "%s" "$WERE" > "$TEMPDIR/Were.txt"
      remove_cat_nonint "Were"
      rm "$TEMPDIR/Were.txt"
      unset WERE
    fi

    if [ "$WERENT" != "" ];
    then
      printf "%s" "$WERENT" > "$TEMPDIR/Weren't.txt"
      remove_cat_nonint "Weren't"
      rm "Weren't.txt"
      unset WERENT
    fi

    if [ "$WAS" != "" ];
    then
      printf "%s" "$WAS" > "$TEMPDIR/Was.txt"
      remove_cat_nonint "Was"
      rm "$TEMPDIR/Was.txt"
      unset WAS
    fi

    if [ "$WHICH" != "" ];
    then
      printf "%s" "$WHICH" > "$TEMPDIR/Which.txt"
      remove_cat_nonint "Which"
      rm "$TEMPDIR/Which.txt"
      unset WHICH
    fi

    if [ "$COULD" != "" ];
    then
      printf "%s" "$COULD" > "$TEMPDIR/Could.txt"
      remove_cat_nonint "Could"
      rm "$TEMPDIR/Could.txt"
      unset COULD
    fi

    if [ "$COULDNT" != "" ];
    then
      printf "%s" "$COULDNT" > "$TEMPDIR/Couldn't.txt"
      remove_cat_nonint "Couldn't"
      rm "Couldn't.txt"
      unset COULDNT
    fi

    if [ "$SHOULD" != "" ];
    then
      printf "%s" "$SHOULD" > "$TEMPDIR/Should.txt"
      remove_cat_nonint "Should"
      rm "$TEMPDIR/Should.txt"
      unset SHOULD
    fi

    if [ "$SHOULDNT" != "" ];
    then
      printf "%s" "$SHOULDNT" > "$TEMPDIR/Shouldn't.txt"
      remove_cat_nonint "Shouldn't"
      rm "Shouldn't.txt"
      unset SHOULDNT
    fi

    if [ "$WOULD" != "" ];
    then
      printf "%s" "$WOULD" > "$TEMPDIR/Would.txt"
      remove_cat_nonint "Would"
      rm "$TEMPDIR/Would.txt"
      unset WOULD
    fi

    if [ "$WOULDNT" != "" ];
    then
      printf "%s" "$WOULDNT" > "$TEMPDIR/Wouldn't.txt"
      remove_cat_nonint "Wouldn't"
      rm "Wouldn't.txt"
      unset WOULDNT
    fi

    if [ "$CAN" != "" ];
    then
      printf "%s" "$CAN" > "$TEMPDIR/Can.txt"
      remove_cat_nonint "Can"
      rm "$TEMPDIR/Can.txt"
      unset CAN
    fi

    if [ "$CANT" != "" ];
    then
      printf "%s" "$CANT" > "$TEMPDIR/Can't.txt"
      remove_cat_nonint "Can't"
      rm "Can't.txt"
      unset CANT
    fi

    if [ "$HAS" != "" ];
    then
      printf "%s" "$HAS" > "$TEMPDIR/Has.txt"
      remove_cat_nonint "Has"
      rm "$TEMPDIR/Has.txt"
      unset HAS
    fi

    if [ "$HASNT" != "" ];
    then
      printf "%s" "$HASNT" > "$TEMPDIR/Hasn't.txt"
      remove_cat_nonint "Hasn't"
      rm "Hasn't.txt"
      unset HASNT
    fi

    if [ "$AMI" != "" ];
    then
      printf "%s" "$AMI" > "Am "$TEMPDIR/I.txt""
      remove_cat_nonint "Am I"
      rm "Am "$TEMPDIR/I.txt""
      unset AMI
    fi

  rm "$NOINTTXT"

  fi

  debug_end "Non-interrogative removal script"

fi