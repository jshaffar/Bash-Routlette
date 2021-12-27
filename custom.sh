#!/bin/bash
echo "what command would you like to run"
read command
echo "what would you like the numerator to be where P=(n/d) is the probability of the command firing?"
read num
echo "what about the denominator?"
read den
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
    $command
    echo
    echo "R.I.P"
else
    echo "Today is your lucky day. You are spared"
fi
#$(( $RANDOM % 2 )) == 0 ] && ($command && echo "you win") || echo "You lose"
#$command
