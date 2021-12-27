#!/bin/bash
#before rm feauture is introduced i'm too scared to use .bash_eternal_history
#Default_File='/home/{usr}/.bash_eternal_history'
Default_File="/home/${user}/Projects/Bash-Routlette/Roulette/chicken.txt"
if [ -z $1 ]; then
    file_name=$Default_File
else
    file_name=$1
fi

file_length=$( wc -l < $file_name )
echo "file name is: $file_name"
echo "file length is: $file_length"

random_index=$((1 + $RANDOM % file_length))
echo $random_index

command=$("sed ${random_index}\!d $file_name")
echo $command
command
