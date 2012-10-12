#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Inventions.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Inventions"
send "\r"
expect EOF
 
