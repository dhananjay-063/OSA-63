#!/bin/bash

# Function to create a file
create_file() {
    echo "Enter the name of the file to create:"
    read filename
    touch $filename
    echo "File created: $filename"
}

# Function to delete a file
delete_file() {
    echo "Enter the name of the file to delete:"
    read filename
    rm -i $filename
    echo "File deleted: $filename"
}

# Function to rename a file
rename_file() {
    echo "Enter the current name of the file:"
    read oldname
    echo "Enter the new name of the file:"
    read newname
    mv $oldname $newname
    echo "File renamed from $oldname to $newname"
}

# Function to add a user
add_user() {
    echo "Enter the username to add:"
    read username
    sudo adduser $username
    echo "User added: $username"
}

# Main menu
while :
do
    echo "-------------------------------------"
    echo "1. Create a file"
    echo "2. Delete a file"
    echo "3. Rename a file"
    echo "4. Add a user"
    echo "5. Exit"
    echo "-------------------------------------"
    echo "Enter your choice:"
    read choice

    case $choice in
        1) create_file ;;
        2) delete_file ;;
        3) rename_file ;;
        4) add_user ;;
        5) echo "Exiting..."; exit ;;
        *) echo "Invalid choice. Please enter a valid option." ;;
    esac
done
