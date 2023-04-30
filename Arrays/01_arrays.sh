#!/bin/bash

# defining array

Fruits=('Apple' 'Banana' 'Orange')

Fruits[0]="Apple"
Fruits[1]="Banana"
Fruits[2]="Orange"

# working with array

echo "${Fruits[0]}"           # Element #0
echo "${Fruits[-1]}"          # Last element
echo "${Fruits[@]}"           # All elements, space-separated
echo "${#Fruits[@]}"          # Number of elements
echo "${#Fruits}"             # String length of the 1st element
echo "${#Fruits[3]}"          # String length of the Nth element
echo "${Fruits[@]:3:2}"       # Range (from position 3, length 2)
echo "${!Fruits[@]}"          # Keys of all elements, space-separated


# operations

Fruits=("${Fruits[@]}" "Watermelon")    # Push
echo  "${Fruits[@]}" 
Fruits+=('Watermelon')                  # Also Push
echo  "${Fruits[@]}" 

Fruits=( "${Fruits[@]/Ap*/}" )          # Remove by regex match
echo  "${Fruits[@]}" 

unset Fruits[2]                         # Remove one item
echo  "${Fruits[@]}" 

# Fruits=("${Fruits[@]}")                 # Duplicate
# Fruits=("${Fruits[@]}" "${Veggies[@]}") # Concatenate
# lines=(`cat "logfile"`)                 # Read from file

# loop and array

for i in "${Fruits[@]}"; do
  echo "$i"
done


# Dictionaries
# Declares sound as a Dictionary object (aka associative array).

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"


# working with dictionary

echo "${sounds[dog]}" # Dog's sound
echo "${sounds[@]}"   # All values
echo "${!sounds[@]}"  # All keys
echo "${#sounds[@]}"  # Number of elements
# unset sounds[dog]     # Delete dog

# iterate over values

for val in "${sounds[@]}"; do
  echo "$val"
done

# iterate over keys

for val in "${!sounds[@]}"; do
  echo "$val"
done