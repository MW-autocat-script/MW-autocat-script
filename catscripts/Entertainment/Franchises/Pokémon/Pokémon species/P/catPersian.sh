#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Persian.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Persian"
send "\r"
expect EOF
