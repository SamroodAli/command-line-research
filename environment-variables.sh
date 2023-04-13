# We can print all environment variables using printenv

printenv

# bash or most shells also expand our variables

NAME=samrood
echo my name is $NAME # will log my name is samrood


# These are not permanent but is only available in their session
# But if we want them to be permanent, we can add them /etc/environment
# But this will be available for every user
sudo vim /etc/environment # open environment file

# How to add user specific environment variables ?
# we can add them in our shell rc file such as .bashrc, .zshrc etc
# but you need
vim  ~/.bashrc
vim ~/.zshrc

# example
export SOME_VARIABLE="some value";
