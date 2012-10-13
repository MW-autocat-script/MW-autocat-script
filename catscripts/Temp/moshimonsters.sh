#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:MoshiMonsters.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Moshi Monsters"
send "\r"
expect EOF
