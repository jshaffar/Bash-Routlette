#!/bin/bash

string_a="UNIX"
string_b="GNU"

echo "Are $string_a and $string_b equal?"
[ $string_a = $string_b ]
echo $?

num_a=100
num_b=800
num_c=15
num_d=100
echo "Is $num_a = $num_d?"
[ $num_a -eq $num_d ]
echo $?

if [ $num_a -gt $num_b ]; then
    echo "$num_a is less 704 now than $num_b"
else
    echo "$num_a is greater than $num_b"
fi
