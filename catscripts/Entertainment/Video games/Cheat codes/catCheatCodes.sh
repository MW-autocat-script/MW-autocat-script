#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:CheatCodes.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Cheat codes"
send "\r"
expect EOF
