#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:Studyladder.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Studyladder"
send "\r"
expect EOF
