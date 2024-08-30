#!/bin/bash
while true
do
echo -e "\n
1) Number ofcpu cores 
2) Cpu model
3) Name of vendor
4) Number of processors
5) Exit\n"
echo "Enter your choice : "
read input
case "$input" in
1) 
 cat  /proc/cpuinfo | grep 'cpu cores' | uniq
 ;;
2)
cat  /proc/cpuinfo | grep 'model name' | uniq
;;
3)
cat  /proc/cpuinfo | grep 'vendor' | uniq
;;
4)
cat  /proc/cpuinfo | grep processor | wc -l
;;
5)
echo "Exit"
exit;;
*)
echo -e "Enter correct choice "
;;
esac 
done
