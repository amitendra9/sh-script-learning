#!/bin/bash

# loops

# basic for loop
for i in /etc/rc.*; do
  echo "$i"
done

# c-loop
for ((i = 0 ; i < 10 ; i++)); do
  echo "$i"
done

# range-loop
for i in {1..5}; do
    echo "Welcome $i"
done

# steps

for i in {1..50..5}; do
    echo "Welcome $i"
done

# reading lines
while read -r line; do
  echo "$line"
done < Introduction/file.txt

# forever
: '
while true; do
  ···
done
'

