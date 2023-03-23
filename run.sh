g="\033[32m"
gg="\033[0m"
if [ -f "/home/yongqi/.gdbinit" ]; then 
    echo "$g gdbinit exists$gg deleting"
    rm /home/yongqi/.gdbinit
    else
    echo "$g  /home/yongqi/.gdbinit not exist $gg"
fi

echo "$g copying .gdbinit $gg"
cp ./.gdbinit /home/yongqi/.gdbinit

echo "$g create  a.c"
echo "#include <stdio.h>
int main(){
    int a,b;
    a = 1;
    b = 2;
    printf(\"a=%d,b=%d\",a,b);
}" > a.c

echo "$g compile"

gcc -g a.c -o a.out

echo "$g run gdb"

gdb a.out