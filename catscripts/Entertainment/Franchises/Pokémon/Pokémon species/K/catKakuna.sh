#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Kakuna.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Kakuna"
send "\r"
expect EOF
