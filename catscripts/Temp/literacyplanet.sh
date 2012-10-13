#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:LiteracyPlanet.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Literacy Planet"
send "\r"
expect EOF
