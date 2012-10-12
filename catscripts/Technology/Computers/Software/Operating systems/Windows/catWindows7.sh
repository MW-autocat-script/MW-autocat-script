#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Windows7.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Windows 7"
send "\r"
expect EOF
