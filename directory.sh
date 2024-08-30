#!/bin/bash

# Function to create a directory
create_directory() {
    echo "Enter the name of the directory to create:"
    read dirname
    mkdir $dirname
    echo "Directory created: $dirname"
}

# Function to delete a directory
delete_directory() {
    echo "Enter the name of the directory to delete:"
    read dirname
    rm -ri $dirname
    echo "Directory deleted: $dirname"
}

# Function to rename a directory
rename_directory() {
    echo "Enter the current name of the directory:"
    read oldname
    echo "Enter the new name of the directory:"
    read newname
    mv $oldname $newname
    echo "Directory renamed from $oldname to $newname"
}

# Main menu
while :
do
    echo "-------------------------------------"
    echo "1. Create a directory"
    echo "2. Delete a directory"
    echo "3. Rename a directory"
    echo "4. Exit"
    echo "-------------------------------------"
    echo "Enter your choice:"
    read choice

    case $choice in
        1) create_directory ;;
        2) delete_directory ;;
        3) rename_directory ;;
        4) echo "Exiting..."; exit ;;
        *) echo "Invalid choice. Please enter a valid option." ;;
    esac
done

