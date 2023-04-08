# Move a file from one location to another
mv file.txt destination/

# Move a directory and its contents recursively
mv directory/ destination/

# Rename a file
mv old_file.txt new_file.txt

# Rename a directory
mv old_directory/ new_directory/

# Move a file and preserve its attributes, such as timestamps and permissions
mv -p file.txt destination/

# Move a file and force overwrite if the destination file already exists
mv -f file.txt destination/

# Move a file and prompt before overwriting if the destination file already exists
mv -i file.txt destination/

# Move multiple files into a directory
mv file1.txt file2.txt destination/

# Move all files in a directory into another directory
mv * destination/
