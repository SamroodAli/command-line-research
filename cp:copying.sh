# Copy a file from one location to another
cp file.txt destination/

# Copy a directory and its contents recursively
cp -r directory/ destination/

# Copy a file and preserve its attributes, such as timestamps and permissions
cp -p file.txt destination/

# Copy a file and force overwrite if the destination file already exists
cp -f file.txt destination/

# Copy a file and prompt before overwriting if the destination file already exists
cp -i file.txt destination/

# Copy multiple files into a directory
cp file1.txt file2.txt destination/

# Copy all files in a directory into another directory
cp * destination/
