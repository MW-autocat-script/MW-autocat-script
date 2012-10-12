#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:KingdomHeartsIII.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Kingdom Hearts III"
send "\r"
expect EOF
