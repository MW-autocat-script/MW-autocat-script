#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:3WNQ.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Page titles lacking an interrogative word"
send "\r"
expect EOF
