#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Facebook.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Facebook"
send "\r"
expect EOF
