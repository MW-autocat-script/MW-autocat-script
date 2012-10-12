#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Twitter.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Twitter"
send "\r"
expect EOF
