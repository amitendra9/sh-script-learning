#!/bin/bash

# conditionals 
# syntax
: '
# String
if condition; then
    # statement;
elif condition; then
    # statement;
else
    # statement;
fi 
'

# [[ -z STRING ]]	Empty string

str='';
if [[ -z $str ]]; then
    echo "String is empty."
fi

# [[ -n STRING ]]	Not empty string

str='Amitendra';
if [[ -n $str ]]; then
    echo "String is not empty."
fi

# [[ STRING == STRING ]]	Equal

str='Amitendra';
if [[ $str == "Amitendra" ]]; then
    echo "Strings are equal.";
fi

# [[ STRING != STRING ]]	Not Equal

str='Amitendra';
if [[ $str != "Amit" ]]; then
    echo "Strings are not equal.";
fi

# [[ NUM -eq NUM ]]	Equal

num=12;
if [[ $num -eq 12 ]]; then
    echo "Number is equal to 12.";
fi

# [[ NUM -ne NUM ]]	Not equal

if [[ $num -eq 13 ]]; then
    echo "Number is not equal to 13.";
fi

# [[ NUM -lt NUM ]]	Less than

if [[ $num -lt 15 ]]; then
    echo "Number is less than 15.";
fi

# [[ NUM -le NUM ]]	Less than or equal

if [[ $num -le 12 ]]; then
    echo "Number is less than and equal to 12.";
fi


# [[ NUM -gt NUM ]]	Greater than

if [[ $num -gt 5 ]]; then
    echo "Number is greater than 5.";
fi

# [[ NUM -ge NUM ]]	Greater than or equal

if [[ $num -ge 12 ]]; then
    echo "Number is greater than and equal to 12.";
fi


# [[ STRING =~ STRING ]]	Regexp

str='Amitendra';
if [[ $str =~ "A*" ]]; then
    echo "String has this pattern.";
fi

# (( NUM < NUM ))	Numeric conditions
num1=45
if (( $num < $num1 )); then
    echo "num1 is greater than num.";
fi

# M
# [[ -o noclobber ]]	If OPTIONNAME is enabled
# [[ ! EXPR ]]	Not
# [[ X && Y ]]	And
# [[ X || Y ]]	Or





# file condition 

# [[ -e FILE ]]	Exists
if [[ -e Introduction/file.txt ]]; then
    echo "file exists"
fi

# [[ -r FILE ]]	Readable 

if [[ -r Introduction/file.txt ]]; then
    echo "file is readable."
fi

# [[ -h FILE ]]	Symlink

if [[ -h Introduction/file.txt ]]; then
    echo "file exists"
fi

# [[ -d FILE ]]	Directory

if [[ -d Introduction/file.txt ]]; then
    echo "file is directory"
else 
    echo "file is not directory."
fi

# [[ -w FILE ]]	Writable

if [[ -w Introduction/file.txt ]]; then
    echo "file is writable."
fi

# [[ -s FILE ]]	Size is > 0 bytes

if [[ -s Introduction/file.txt ]]; then
    echo "file size is greater than zero bytes."
fi

# [[ -f FILE ]]	File
if [[ -f Introduction/file.txt ]]; then
    echo "It is file"
fi
# [[ -x FILE ]]	Executable

if [[ -x Introduction/file.txt ]]; then
    echo "file is executable."
else
    echo "file is not executable."
fi

# [[ FILE1 -nt FILE2 ]]	1 is more recent than 2

if [[ Introduction/file_recent.txt -nt Introduction/file.txt ]]; then
    echo "file first is more recent."
fi

# [[ FILE1 -ot FILE2 ]]	2 is more recent than 1

if [[ Introduction/file.txt -ot Introduction/file_recent.txt ]]; then
    echo "file second is more recent."
fi

# [[ FILE1 -ef FILE2 ]]	Same files

if [[ Introduction/file.txt -ef Introduction/file.txt ]]; then
    echo "file first is same as file second."
fi
