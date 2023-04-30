#!/bin/bash

# defining function

: '
func_name(){
    # statements
}

function func_name(){
    # statements
}

'
# defining func
myfunc() {
    echo "Hello $1"
}

# call function
myfunc "Amitendra";

# returning values

myfunc() {
    local myresult='some value'
    echo "$myresult"
}
result=$(myfunc)
echo $result


# raising values

myfunc() {
  return 1
}
if myfunc; then
  echo "success"
else
  echo "failure"
fi


: '
Arguments
$#	Number of arguments
$*	All positional arguments (as a single word)
$@	All positional arguments (as separate strings)
$1	First argument
$_	Last argument of the previous command
'

loop_func(){
    echo $#;
    echo "First argument: " $1; 
    echo "Second argument: " $2; 
    echo "Third argument: " $3;
    for i in $@; do 
        echo $i;
    done
    echo $_;
}

loop_func amitendra viru amit
echo $_;