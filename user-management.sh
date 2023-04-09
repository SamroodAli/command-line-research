# List all theexit users
# some of these commands require super user permissions. 
# run it while being a super user or with sudo (superuser do)
cat /etc/passwd

# this gives a list of users 
samrood:x:1001:1001::/home/samrood:/bin/bash 
# In the example: samrood:x:1001:1001::/home/samrood:/bin/bash =>
# user samrood, 
# primary group id 1001
# home directory = /home/samrood, 
# login shell = /bin/bash (bash).
# the first past is the name of the user. It is samrood in the example
# the fourth part is the id of the primary group. It is 1001, the second 1001 in the example
# you can check the group with an id by using the 'id' utility
id anyId
# the path after :: is the home directory (/home/samrood in the example)
# the last part is the login shell, here bash. we can log in to a different shell by changing this. The login shell is bash in the example

# switch user to root user
sudo user

# switch to some other user
su username

# adding a user
adduser username

# add password
passwd username # if not root user
passwd # changing current user password 

# delete a user
userdel username # 

# delete user including the home directory and the mail spool
userdel -r username

# adding a user to a group
usermod

# Adding root permisions for a user - so that they can use sudo
#  For this, we need to use groups
# adding a user to the group sudo
usermod --apend --groups sudo username
# or
usermod -aG sudo username

# sometimes sudo command is not installed
apt update
apt install sudo

# list the groups the current user is in
groups

# list all groups
cat /etc/group

# change ownership of directory or file
chown user:group directory

# change mode - change permissions of a file or directory ( but not the owner)
# giving read(r), write(w), execute(x) rights for user(u), group(g) and others(o)
chmod u=rwx,g=rwx,o=rwx file_or_directory

# directories need r,w and x if we want to use commands such as ls or cd into the directory

chmod 777 file_or_directory # 777 is shorthand same as u=rwx,g=rwx,o=rwx

# chmod number - what it means:
# the first 7 is for user, the second 7 is for group and the last 7 is for others.
# 7 is rwx, it can also be
0 = ---
1 = --x
2 = w--
3 = -wx
4 = r--
5 = r-x
6 = rw-
7 = rwx

# There are some some special characters
chmod +x file_or_directory # add executable to everyone
chmod -x file_or_directory # removes executable for all users

chmod +w # adds writable for users and groups only. (doesn't touch permissions for others)
chmod -w # removes writable for users and groups only. (doesn't touch permissions for others)

chmod +r # adds readable writes for everyone
chmod -r # removes readable writes for everyone