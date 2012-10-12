#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:SoundCards.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Sound cards"
send "\r"
expect EOF
