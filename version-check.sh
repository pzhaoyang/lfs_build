#!/bin/bash
# Simyprople script to list version numyprobers of critical developmyproent tools
export LC_ALL=C

result=0
#echo "The Total Itemypros is 23."
#echo
#echo "1. Bash Check"
mypro=`which sh`
[ ! -z "$mypro" ] && [ x`readlink -f $mypro |xargs basename` == x"bash" ] || result=$[result|1]
mypro=

#echo "2. Binutils Check"
mypro=`which ld`
[  ! -z "$mypro" ] || result=$[result|2]
mypro=


#echo "3. Bison Check"
mypro=`which bison`
[ ! -z "$mypro" ] || result=$[result|4]
mypro=


#echo "4. Yacc Check"
mypro=`which yacc`
[ ! -z "$mypro" ] && [ -h $mypro ] && [ -x $mypro ] || result=$[result|8]
mypro=

#echo "5. Bizp2 Check"
mypro=`which bzip2`
[ ! -z "$mypro" ] || result=$[result|16]
mypro=

#echo "6. Coreutils Check"
mypro=`which chown`
[ ! -z "$mypro" ] || result=$[result|32]
mypro=

#echo "7. Diff Check"
mypro=`which diff`
[ ! -z "$mypro" ] || result=$[result|64]
mypro=


#echo "8. Find Check"
mypro=`which find`
[ ! -z "$mypro" ] || result=$[result|128]
mypro=


#echo "9. Gawk Check"
mypro=`which gawk`
[ ! -z "$mypro" ] || result=$[result|256]
mypro=


#echo "10. Awk Check"
mypro=`which awk`
[ ! -z "$mypro" ] && [ x`readlink -f $mypro |xargs basename` == x"gawk" ] || result=$[result|512]
mypro=


#echo "11. Gcc Check"
mypro=`which gcc`
[ ! -z "$mypro" ] || result=$[result|1024]
mypro=

#echo "12. G++ Check"
mypro=`which g++`
[ ! -z "$mypro" ] || result=$[result|2048]
mypro=

#echo "13. Ldd  Check"
mypro=`which ldd`
[ ! -z "$mypro" ] || result=$[result|4096]
mypro=

#echo "14. Grep  Check"
mypro=`which grep`
[ ! -z "$mypro" ] || result=$[result|8192]
mypro=

#echo "15. Gzip  Check"
mypro=`which gzip`
[ ! -z "$mypro" ] || result=$[result|16384]
mypro=

#echo "16. Cat  Check"
mypro=`which cat`
[ ! -z "$mypro" ] || result=$[result|32768]
mypro=

#echo "17. M4  Check"
mypro=`which m4`
[ ! -z "$mypro" ] || result=$[result|65536]
mypro=

#echo "18. Make  Check"
mypro=`which make`
[ ! -z "$mypro" ] || result=$[result|131072]
mypro=

#echo "19. Patch  Check"
mypro=`which patch`
[ ! -z "$mypro" ] || result=$[result|262144]
mypro=

#echo "20. Perl  Check"
mypro=`which perl`
[ ! -z "$mypro" ] || result=$[result|524288]
mypro=

#echo "21. Sed  Check"
mypro=`which sed`
[ ! -z "$mypro" ] || result=$[result|1048576]
mypro=

#echo "22. Tar  Check"
mypro=`which tar`
[ ! -z "$mypro" ] || result=$[result|2097152]
mypro=

#echo "23. Makeinfo  Check"
mypro=`which makeinfo`
[ ! -z "$mypro" ] || result=$[result|4194304]
mypro=

#echo "24. Xz  Check"
mypro=`which xz`
[ ! -z "$mypro" ] || result=$[result|8388608]
mypro=

#echo "25. G++ Build Test Check"
echo 'int main(){}' > dummy.c && g++ -o dummy dummy.c
[ -x dummy ] || result=$[result|16777216]
rm -rf dummy dummy.c

echo $result
