#!/bin/bash

# first command and print through echo command 
echo "Hello World";

# create variable and asign the value to the variable
NAME="Amitendra";
echo $NAME;

# wildcard
# "*.txt": search all files having txt extension.

# conditional excution
# AND (&&)

echo "Execute conditional command with output of first statement is false."
false && echo $NAME
echo $?

echo "Execute conditional command with output of first statement is true and second statement is false."
echo $NAME && false
echo $?

echo "Execute conditional command with output of first statement is true."
true && echo $NAME 
echo $?

# OR (||)
echo "OR cnoditional statement."
echo "Execute conditional command with output of first statement is false."
false || echo $NAME
echo $?

echo "Execute conditional command with output of first statement is true and second statement is false."
echo $NAME || false
echo $?

echo "Execute conditional command with output of first statement is true."
true || echo $NAME 
echo $?