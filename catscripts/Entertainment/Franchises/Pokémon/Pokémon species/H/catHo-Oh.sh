#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Ho-Oh.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Ho-Oh"
send "\r"
expect EOF
