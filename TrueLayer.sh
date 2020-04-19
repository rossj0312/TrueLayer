#!/bin/sh
#Set Variables
BASEDIR="$PWD"
#Check and create folders
if test ! -d /home/$USER/TrueLayer; then mkdir /home/$USER/TrueLayer; fi

if test ! -f /home/$USER/TrueLayer/TLTest.txt; then > /home/$USER/TrueLayer/TLTest.txt; fi

#Add date to file
date >> /home/$USER/TrueLayer/TLTest.txt

#Filename
echo "" >> /home/$USER/TrueLayer/TLTest.txt
echo This is the name of my log TLTest.txt >> /home/$USER/TrueLayer/TLTest.txt
echo "" >> /home/$USER/TrueLayer/TLTest.txt

#Folders and files in directory
echo This is the list of files and folders in my home directory. >> /home/$USER/TrueLayer/TLTest.txt
ls -l >> /home/$USER/TrueLayer/TLTest.txt

#Public IP
echo "" >> /home/$USER/TrueLayer/TLTest.txt
echo This is my public IP address >> /home/$USER/TrueLayer/TLTest.txt
dig +short myip.opendns.com >> /home/$USER/TrueLayer/TLTest.txt

#Free RAM
echo "" >> /home/$USER/TrueLayer/TLTest.txt
echo This is my current RAM avalable in the system >> /home/$USER/TrueLayer/TLTest.txt
free >> /home/$USER/TrueLayer/TLTest.txt

#Current User
echo "" >> /home/$USER/TrueLayer/TLTest.txt
echo Current User is $USER >> /home/$USER/TrueLayer/TLTest.txt

#PIDsused in this script
echo "" >> /home/$USER/TrueLayer/TLTest.txt
echo Below are the PIDs related to this script. >> /home/$USER/TrueLayer/TLTest.txt
ps -u|egrep "TrueLayer.sh|PID" >> /home/$USER/TrueLayer/TLTest.txt

#Spacer
echo "" >> /home/$USER/TrueLayer/TLTest.txt
echo "####################################################################################################################" >> /home/$USER/TrueLayer/TLTest.txt
echo "" >> /home/$USER/TrueLayer/TLTest.txt
