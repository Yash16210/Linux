#!/bin/bash
echo "Current date and time: $(date)"
echo "Logged-in users:"
who
echo "System uptime: $(uptime -p)"
echo "Memory usage:"
free -h
echo "Disk usage:"
df -h
