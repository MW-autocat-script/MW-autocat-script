#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Donphan.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Donphan"
send "\r"
expect EOF
