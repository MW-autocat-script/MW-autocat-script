#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:_placeholder_.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "_placeholder_"
send "\r"
expect EOF
