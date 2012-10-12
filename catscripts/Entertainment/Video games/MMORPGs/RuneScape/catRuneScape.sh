#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:RuneScape.txt -ns:0
expect "Category to add (do not give namespace)*"
send "RuneScape"
send "\r"
expect EOF
