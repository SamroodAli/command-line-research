# Permissions

Permissions
In Linux, every file and directory has permissions associated with it. These permissions determine who can read, write, and execute the file or directory. When we run the ls -l command, we often see these permissions associated with each file or directory, displayed as a string of characters.

The permissions string is usually in the following format:

```
-rw-rw-r-- 1 samrood samrood 1730 Apr 9 19:41 some-file.MD
drwxrwxr-x 2 samrood samrood 4096 Apr 9 19:41 some-folder
```

- The first character denotes the type of the item. It can be d for directories, - for regular files, and other characters for special files.
- The rest are in groups of three and are in the order of

| Permission | Description |
| ---------- | ----------- |
| r          | Read        |
| w          | Write       |
| x          | Execute     |

The `-` character denotes the lack of any of these permissions

`r-x` means the user has read and execute permission but a lack of permission to write.

They are also in three sets and are respectively permissions for the user, group and others.
The first three represent user permissions,
the second three represent group permissions,
and the final three represent permissions for the others

The number after permissions ( 1 and 2 in the example) denotes the number of
links or owners of the items
