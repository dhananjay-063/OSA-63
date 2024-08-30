#!/bin/bash

# Function to mount a device or filesystem
mount_device() {
    echo "Enter the device or filesystem to mount (e.g., /dev/sdb1, /mnt/usb):"
    read device
    echo "Enter the mount point (where to mount the device):"
    read mount_point

    # Check if mount point exists
    if [ ! -d "$mount_point" ]; then
        echo "Creating mount point directory..."
        mkdir -p $mount_point
    fi

    # Mount the device or filesystem
    sudo mount $device $mount_point

    echo "Device or filesystem mounted at $mount_point"
}

# Function to unmount a device or filesystem
umount_device() {
    echo "Enter the mount point to unmount (e.g., /mnt/usb):"
    read mount_point

    # Unmount the device or filesystem
    sudo umount $mount_point

    echo "Device or filesystem unmounted from $mount_point"
}

# Main menu
while :
do
    echo "-------------------------------------"
    echo "1. Mount a device or filesystem"
    echo "2. Unmount a device or filesystem"
    echo "3. Exit"
    echo "-------------------------------------"
    echo "Enter your choice:"
    read choice

    case $choice in
        1) mount_device ;;
        2) umount_device ;;
        3) echo "Exiting..."; exit ;;
        *) echo "Invalid choice. Please enter a valid option." ;;
    esac
done
