#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Beautifly.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Beautifly"
send "\r"
expect EOF
