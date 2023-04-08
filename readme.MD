# Command line research

This is me learning the command line.

## Control key shortcuts

- CTRL + A – takes you to the beginning of the line
- CTRL + E – takes you to the end of the line
- CTRL + K – "yank" everything after the cursor
- CTRL + U – "yank" everything before the cursor
- CTRL + Y - "paste" (paste in quotes because it doesn't actually go into your system clipboard) everything you yanked
- CTRL + L - clear the screen
- CTRL + R – reverse search through history

## Signals

- CTRL + C - SIGINT -- Interrupt Signal - signal to interrupt what it's doing and stop.
- CTRL + D - SIGQUIT -- Quit Signal - Force quit the program.
- SIGTERM signal

  - kill command or when the computer is shutting down
  - usually the computer sends this signal and not us
  - telling the programs to shut down

- SIGKILL - when we run `kill -9` or `kill -SIGKILL` - when we want a program to force shut down now.

There are other signals. Run `kill -l` to list them.

# Escaping with backslash

```bash
touch file\?.txt # creates 'file?.txt' # escaped the ? operator
touch file\ .txt # creates 'file .txt' # escaped white space ' '
touch file\\.txt # creates 'file\.txt' # escaped backslash

```

## Replacements

Shells like bash and sh support replacements

```bash
touch file{1,2,3}.txt # is the same as touch file1.txt file2.txt file3.txt

touch file-{a,b,c}.txt # is the same as touch file-a.txt file-b.txt file-c.txt

# you can just put a comma for one without the expansion

touch file{1,}.txt # will create file.txt and file1.txt
```

Shells support this and not the programs

## Wildcards

We can use wildcards with `*`

```bash
ls file* # lists all files starting-with file

ls fil*.txt # lists all files that starts with fil and ends with .txt

```

## The ? operator - exactly one character

The `?` operator lets you exactly one character unlike the wildcard

```bash

ls file?.txt # will match file1.txt but won't match file12.txt

```

## start..end..skip operation - from start till end

- We can the `start..end..skip` syntax to append get numbers/letters from start til end.

```bash

touch file{1..5}.txt # creates file1.txt file2.txt all the way to file5.txt

touch file-{a..z}.txt # creates file-a.txt file-b.txt all the way to file-z.txt

```

- You can also backwards from z to a and likewise with numbers

```bash

echo {5...1} # prints 5 4 3 2 1

echo {z..a} #prints z y x w v u t s r q p o n m l k j i h g f e d c b a

```

- We can also skip some numbers but not letters

```bash

touch file{1..5..2}.txt # creates file1.txt file3.txt and file5.txt and skipped 2 and 4 ( every 2nd number)

```

This won' work with letters

- We can combine two or more of these

```bash
echo {z..x}{1..4} # z1 z2 z3 z4 y1 y2 y3 y4 x1 x2 x3 x4

```

# Attribution

- Most of these notes and commands from Brian Holt's [complete intro to Linux and the command line](https://frontendmasters.com/courses/linux-command-line) course

- Brian Holt has made the course notes free for everyone which you can access [here](https://btholt.github.io/complete-intro-to-linux-and-the-cli/)
