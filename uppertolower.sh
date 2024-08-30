#!/bin/bash
while  true 
do
echo "...Menu..."
echo "1.Lower into upper" 
echo "2.Upper into lower" 
echo "3.Exit"
echo "Enter your choice : "
read choice
case  "$choice"  in
1) 
echo "Enter file name "
read f1
if [ -f  $f1 ] ; then
echo "Converting into uppercase "
tr '[a-z]' '[A-Z]'  < $f1
else
echo "$f1 does not exit "
fi
;;
2)
echo "Enter file name "
read f1
if [ -f  $f1 ] ; then
echo "Converting into uppercase "
tr '[A-Z]' '[a-z]'  < $f1
else
echo "$f1 does not exit "
fi
;;
3|*)
echo "Exit...."
exit ;;
esac
done
