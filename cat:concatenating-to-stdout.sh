# cat is often used to append short files to stdout
# basically read short files,  use less for long ones
# cat stands for concatenate as it is contaneting whatever we give to stdout

cat someFile

# update:
# cat is not really meant to read files, but to merge ('concatenate') files 
# together. One suggestion is to echo with stream redirection
echo "$(< someFile)"