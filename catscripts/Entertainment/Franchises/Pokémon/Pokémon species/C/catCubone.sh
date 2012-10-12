#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Cubone.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Cubone"
send "\r"
expect EOF
