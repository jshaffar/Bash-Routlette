#!/bin/bash
echo "This mode will pick a random command in your bash history and perform it. This is very dangerous, only perform this in a vm. For example suppose you did rm -rf or something, that would be pretty devastating."

echo

echo

echo "what is the full path of your history file (or any file with a list of commands). If left blank, it will default to ~/.bash_eternal_history, which is what it is on my computer"

read file
if [ -z "$file" ]
then
    #file="~/.bash_eternal_history"
    file=~/.bash_eternal_history
    #file="dummy_history.txt"
fi
echo $file
line_count=$( wc -l < $file )
echo $line_count

echo "cool will run command in:"
echo "5 :>"
sleep 1
echo "4 :]"
sleep 1
echo "3 :|"
sleep 1
echo "2 :["
sleep 1
echo "1 :<"
sleep 1
echo "0 :<<<<<<<"
sleep 0.2
echo firing
echo
echo
sleep 0.2
random_num=$(((($RANDOM % $line_count)) + 1))
command=$(sed "${random_num}q;d" $file)

echo $command
#$command uncomment if your not a coward


#$(( $RANDOM % 2 )) == 0 ] && ($command && echo "you win") || echo "You lose"
#$command
