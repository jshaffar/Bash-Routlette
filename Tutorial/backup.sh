#!/bin/bash
user=$(whoami)
input=/home/jeremy/Projects/Bash-Routlette/Tutorial
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

function total_files {
    find $1 -type f | wc -l
}

function total_directories {
    find $1 -type d | wc -l

}

function total_archived_directories {
    tar -tzf $1 | grep /$ | wc -l
}

function total_archived_files {
    tar -tzf $1 | grep -v $ | wc -1
}


tar -czf $output $input 2> /dev/null

echo -n "Files included:"
total_files $input
echo -n "Directories to be included:"
total_directories $input

src_files=$( total_files $input )
src_directories=$( total_directories $input )

arch_files=$( total_archived_files $output )
arch_directories=$( total_archived_directories $output )


echo "Backup of $input complete. Details in output file:"
ls -l $output

if [$src_files -eq $arch_files]; then
    echo "backup good!! Details listed below"
    ls -l $output

else
    echo "$Backup of $input failed!"
fi
