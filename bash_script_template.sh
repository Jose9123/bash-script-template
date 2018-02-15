#!/bin/bash

# Script Description here 
# 
#
# 

# Set BASH to quit script and exit on errors:

set -e

# Functions:

function1() {

echo "function 1 called..."

}

clean() {

echo "function 2 called"

}

leave() {

echo "--------------------"
echo "- Script Completed! -"
echo "--------------------"
exit

}

script-help() {

cat << _EOF_

 Help screen

 Commands:
    script_name = Does X, Y and Z.

    script_name --option1 = Does X, Y and Z.

    Adding "--option2" option will also do this ...

    script_name --help = shows this help page.

_EOF_

}

# Execution.

# Tell 'em who we are...

echo "Script Name-- Script Description  (Version 0.1)"

# Update and clean:

if [ "$1" == "--option1" ]; then
    function1
    function2
    function3
fi

if [ "$1" == "--help" ]; then
    script-help
    exit
fi

# Check for invalid argument

if  [ -n "$1"  ]; then
    echo "<Script Name> Error: Invalid argument. Try '<script name> --help' for more info." >&2
    exit 1
fi

function1
function3

