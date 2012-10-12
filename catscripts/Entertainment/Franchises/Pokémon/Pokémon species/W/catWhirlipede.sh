#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Whirlipede.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Whirlipede"
send "\r"
expect EOF
