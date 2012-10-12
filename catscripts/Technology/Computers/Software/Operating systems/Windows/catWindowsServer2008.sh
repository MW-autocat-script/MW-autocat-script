#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:WindowsServer2008.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Windows Server 2008"
send "\r"
expect EOF
