#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:YouTube.txt -ns:0
expect "Category to add (do not give namespace)*"
send "YouTube"
send "\r"
expect EOF
