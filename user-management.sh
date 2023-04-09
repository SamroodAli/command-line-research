# List all theexit users
# some of these commands require super user permissions. 
# run it while being a super user or with sudo (superuser do)
cat /etc/passwd

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