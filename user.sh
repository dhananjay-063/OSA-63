#!/bin/bash
while true
do
echo -e "\n
                      MENU
[1] for listing all the user account name 
[2] for counting the number of logged in user accounts
[3] for listing the names of currently logged in user
[4] for cheking the groups to which the current user belong
[5] exit"
echo "Enter your choice  : "
read input
case  "$input"  in
1)
lslogins -o USER
;;
2)
who --count | grep users 
;;
3)
who -q | grep -v users
;;
4)
groups
;;
5)
echo "Exit..."
exit;;
*)
echo -e "please enter correct input\n"
;;
esac
done
