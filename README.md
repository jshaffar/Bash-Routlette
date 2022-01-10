# Bash-Routlette
Chooses random command at your own risk. You can play thorugh running ./trigger.sh and picking mode, or chosing mode individually. In history mode, the command will definitely run, the unceratintly is what command runs. In the other mode, the command has a probability you will give it of running (hence why its called roulette). Good luck!!

## custom mode: Chose the command
You can chose the command that is run. Set a numerator, denominator, and see what fate allows
## history mode: Go into history or file
This will go through a list of potential commands and pick it. I have it set to the name of my bash_aliases, but this can be customized. This can be dangerous so don't really do without a custom file or on a vm
## bomb mode: Throw fork bomb if user is unlucky
The command that is run is a fork bomb, otherwise the same as custom mode
## shutdown mode: Shutdown computer is user is unlucky
This is probably the safest one to do, as long as all your files are saved
## 
## death mode (aka avarda_kadarva): Will wipe drive permanently and make unrecoverable
Obviously don't use this mode unelss your deranged or something. Will call number 5 on this list https://www.techworm.net/2016/10/10-lethal-linux-commands-never-execute.html, and make hard drive permanently unrecoverable. I have not tested this yet for obvious reasons so it might not work who knows.
