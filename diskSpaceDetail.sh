#!/bin/bash

#Prints the user-name of the effective user ID
whoami

#Prints the system date and time
date

#How long the system has been running,Number of users logged on and the system load averages for the past 1,5 and 15 min.
echo "Uptime:"
uptime

#Currently connected users
echo "Currently connected:"
w

#Last 3 logins
echo "Last Logins:"
last -a | head -3
echo "---------------------"

#Disk Space
echo "Disk Space available: " && df  -H | xargs | awk '{print $10"/"$9}'

#Ram Space 
echo "RAM Space available: " && free -h | xargs | awk '{print $10"/$8"}'
echo "---------------------"

#The top 3 service being running
echo "Top 3 service running"
top -b |head -3