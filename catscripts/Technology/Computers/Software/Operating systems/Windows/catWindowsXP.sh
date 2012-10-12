#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:WindowsXP.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Windows XP"
send "\r"
expect EOF
