#!/bin/bash
echo "This mode will pick a random command in your bash history and perform it. This is very dangerous, only perform this in a vm. For example suppose you did rm -rf or something, that would be pretty devastating."

echo "what is the full path of your history file (or any file with a list of commands). If left blank, it will default to ~/.bash_eternal_history, which is what it is on my computer"

read file
if [ -z "$file" ]
then
    file="~/.bash_eternal_history"
fi
line_count=$()




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
random_int=$RANDOM
random_num=$(($random_int % $den))
if [[ "$random_num" -lt "$num" ]]
then
    echo "command $command will run unless you can stop it next 0.1 second lmao"
    echo
    sleep 0.1
    #$command
    echo
    echo "R.I.P"
else
    echo "Today is your lucky day. You are spared"
fi
#$(( $RANDOM % 2 )) == 0 ] && ($command && echo "you win") || echo "You lose"
#$command
