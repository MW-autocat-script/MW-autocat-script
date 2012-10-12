#!/usr/bin/expect -f

set timeout -1
spawn python category.py add -file:MeasurementConversions.txt -ns:0
expect "Category to add (do not give namespace)*"
send "Measurement conversions"
send "\r"
expect EOF
