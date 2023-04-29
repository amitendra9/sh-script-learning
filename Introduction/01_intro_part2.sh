#!/bin/bash

# first command and print through echo command 
echo "Introduction of Shell Scripts";

# variable 

# ${foo:0:3}	Substring (position, length)
# ${foo:(-3):3}	Substring from the right

name="Amitendra";
echo "${name}"
echo "${name/A/a}"    #=> "amitendra" (substitution)
echo "${name:0:2}"    #=> "Am" (slicing)
echo "${name::2}"     #=> "Am" (slicing)
echo "${name::-1}"    #=> "Amitendr" (slicing)
echo "${name:(-1)}"   #=> "a" (slicing from right)
echo "${name:(-2):1}" #=> "r" (slicing from right)
echo "${food:-Cake}"  #=> $food or "Cake"



# Substitution

str="/path/to/foo.cpp";
echo "${str%.cpp}" ;   # /path/to/foo
echo "${str%.cpp}.o";  # /path/to/foo.o
echo "${str%/*}" ;     # /path/to

echo "${str##*.}" ;    # cpp (extension)
echo "${str##*/}" ;    # foo.cpp (basepath)

echo "${str#*/}" ;     # path/to/foo.cpp
echo "${str##*/}" ;    # foo.cpp

echo "${str/foo/bar}"; # /path/to/bar.cpp

: '

# ${foo%suffix}	    Remove suffix
# ${foo#prefix}	    Remove prefix
# ${foo%%suffix}	Remove long suffix
# ${foo/%suffix}	Remove long suffix
# ${foo##prefix}	Remove long prefix
# ${foo/#prefix}	Remove long prefix
# ${foo/from/to}	Replace first match
# ${foo//from/to}	Replace all
# ${foo/%from/to}	Replace suffix
# ${foo/#from/to}	Replace prefix
'


# length of string

# ${#foo}	Length of $foo

echo ${#name};


# manipulation

str1="HELLO WORLD!"
echo "${str1,}"   #=> "hELLO WORLD!" (lowercase 1st letter)
echo "${str1,,}"  #=> "hello world!" (all lowercase)

str1="hello world!"
echo "${str1^}"   #=> "Hello world!" (uppercase 1st letter)
echo "${str1^^}"  #=> "HELLO WORLD!" (all uppercase)



# default values

: '
${foo:-val}	$foo, or val if unset (or null)
${foo:=val}	Set $foo to val if unset (or null)
${foo:+val}	val if $foo is set (and not null)
${foo:?message}	Show error message and exit if $foo is unset (or null)
# Omitting the : removes the (non)nullity checks, e.g. ${foo-val} expands to val if unset otherwise $foo.
'