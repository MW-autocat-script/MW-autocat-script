#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Braviary.txt -ns:0 -pt:$::env(GBT)
expect "Category to add (do not give namespace)*"
send "Braviary"
send "\r"
expect EOF
