#!/bin/ksh
###################################################
# Written By: Gerhard Pegel
# July 13, 2016
#
# This script shows all users in /etc/passwd
# but only when /etc/passwd does exit. Else it 
# throws an error.
###################################################
 
#Define Variables
PASSWORD_FILE="/etc/passwd" # Set AIX password file path
 
#Begin Code
if [[ -e $PASSWORD_FILE ]]; then
 
     for username in $(cat $PASSWORD_FILE | cut -f1 -d:)
     do
 
         print $username
 
     done
else
   
         print "$PASSWORD_FILE was not found"
         exit
fi
