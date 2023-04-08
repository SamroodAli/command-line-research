# tail is useful to print the last few lines of files.
# the expression 'tailing a file' comes from this utility.

# print the last few lines of a file
tail file

# it takes any number of files and prints in the order of files
tail file1 file2

# print n last lines
tail -n 3 file

# we can tail a file in real time (log whatever is being appended to the file)
# using the  -f flag
