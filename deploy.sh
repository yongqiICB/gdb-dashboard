g="\033[32m"
gg="\033[0m"
if [ -f "/home/yongqi/.gdbinit" ]; then 
    echo "$g gdbinit exists$gg deleting"
    rm /home/yongqi/.gdbinit
    else
    echo "$g  /home/yongqi/.gdbinit not exist $gg"
fi


if [  -f "/home/yongqi/.gdbinit" ]; then 
    echo "**** Not deleted ****"
fi


echo "$g copying .gdbinit $gg"
cp ./.gdbinit /home/yongqi/.gdbinit
