#!/bin/bash
#
#

echo "1 Create User"
echo "2 Delete User"
echo "3 Lock User"
echo "4 List users"
read -p "Choose an option: " OPTION

case $OPTION in
	1)
		read -p "Enter username to create: " USERNAME
		sudo useradd  "$USERNAME"
		echo "username created: $USERNAME " 
		;;
	2)
		read -p "Delete username: " USERNAME
		sudo userdel -r "$USERNAME"
		echo "user $USERNAME deleted"
		;;
	3)
		read -p "lock the user: " USERNAME
		sudo usermod -L "$USERNAME"
		echo "the $USERNAME is now locked"
		;;
	4)
		echo "List of all users: "
		cat /etc/passwd
		;;
	*)
		echo "Invalid option"
		;;
esac	
