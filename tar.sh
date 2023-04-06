# compress files and directories 
# -c flag (create) is for creating archives
# -f flag is for taking in directories and files as arguments
tar -cf archive_name.tar file1 directory1

# for interactively adding files/directories, add the -w flag
# example, add everything that ends with fil interactively
# the -f flag has to come last as whatever follows w is passed as arguments to the -f flag. 
# z flag is for gzipped.
tar -cwf archive_name.tar fil*

# but this only archives the data  (put everything under one file) 
# and doesn't really compress it (reduce size)
# to compress, we need to use the -z flag
# and we need to add .gz (gzipped) to the archive
tar -czf archive_name.tar.gz file1 directory1

# to extract, we need to use -x flag (extract)
# -z flag is the archive is gzipped
# -C destination path
# if we didn't specify -C, it will extract to current directory
tar -xzf archive.tar.gz -C destinatino_folder


