#!/bin/bash

VAR=0

while [ $VAR -lt 99999 ]; do
  echo "What is $VAR plus 1" >> AdditionGen.txt
  let VAR=VAR+1
done