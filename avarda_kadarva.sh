#!/bin/bash
#you might need to change this command for it to work. I'm not sure if it works cuz I'm too scared to test it
command="dd if=/dev/random of=/dev/nvme0n1p3"
echo "WARNING!!!!!!!!!!!!!!!! PLEASE DO NOT RUN THIS UNLESS YOU ARE IN A VIRTUAL MACHINE (OR ARE WILLING TO LOSE ALL YOUR FILES and make it completely unrecoverable)"
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
    echo "TAKE COVER !!!!!!!!"
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
