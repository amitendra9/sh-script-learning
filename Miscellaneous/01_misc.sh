#!/bin/bash

#  numeric calculation

a=100
$((a + 200))      # Add 200 to $a
echo $a;

$(($RANDOM%200))  # Random number 0..199
echo $(($RANDOM%200));

declare -i count  # Declare as type integer 
count+=1          # Increment

echo $count;

# inspecting commands
command -V cd

# redirction
python main.py > output.txt            # stdout to (file)
python main.py >> output.txt           # stdout to (file), append
python main.py 2> error.log            # stderr to (file)
python main.py 2>&1                    # stderr to stdout
python main.py 2>/dev/null             # stderr to (null)
python main.py >output.txt 2>&1        # stdout and stderr to (file), equivalent to &>
python main.py &>/dev/null             # stdout and stderr to (null)
# echo "$0: warning: too many users" >&2  # print diagnostic message to stderr


