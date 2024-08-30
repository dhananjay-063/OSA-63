#!/bin/bash

# List all processes
echo "1. List all processes:"
ps aux

# Display top processes
echo "2. Top processes:"
top -n 1

# Display process tree
echo "3. Process tree:"
pstree -p

# List open files by processes
echo "4. List open files by processes:"
lsof -c bash

# Display information about a specific process
echo "5. Information about a specific process:"
pid=$(pgrep bash)
ps -p $pid -o pid,ppid,cmd,%cpu,%mem

# Send signal to a process
echo "6. Sending SIGTERM to a process:"
kill -15 $pid

# Change priority of a process
echo "7. Changing priority of a process:"
nice -n 10 sleep 10 &

# List jobs
echo "8. List active jobs:"
jobs

# Schedule a command to be executed once at a specified time
echo "9. Schedule a command using 'at' for 2 minutes later:"
echo "echo 'Hello, world!' > hello.txt" | at now + 2 minutes

# List cron jobs
echo "10. List cron jobs:"
crontab -l

# Display systemd services
echo "11. Display systemd services:"
systemctl list-units --type=service

# Tracing system calls made by a process
echo "12. Trace system calls made by a process:"
strace -p $pid

# End of script
echo "Script execution complete."
