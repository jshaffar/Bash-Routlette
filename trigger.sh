#!/bin/bash
echo "warning: you can still back out by pressing n"
echo "What mode would you like to play???. Type h for history mode (goes through your bash history and picks random command), c for custom mode (has 1 in x chance of running command), d for death mode (has 1 in x chance of wiping disk) (this is called avarda_kadarva.sh and makes system unrecoverable so don't do this), s for shutdown mode (calls a shutdown now), and anything else to exit"
read input
echo $input mode it is
if [ "$input" = "c" ]; then
    ./custom.sh
elif [ "$input" = "d" ]; then
    ./death.sh
elif [ "$input" = "h" ]; then
    ./history.sh
elif [ "$input" = "b" ]; then
    ./bomb.sh
elif [ "$input" = "s" ]; then
    ./shutdown.sh
fi
