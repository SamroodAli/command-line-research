# Piping and streams

Expect the output of one program to be the input of another program.
That is, we can take an output stream and `pipe` or `redirect` it into an input stream.
The difference between `pipe` and `redirect` is that pipe passes the output of one command
as input to another command whereas `redirect` passes the input of a command to a file or vice versa.

# Redirects

## Examples for redirection.

```bash

echo 'This is my text' 1> new-file.txt

# another example
cat new-file.txt 1> another-file.txt # This replaces with a new file if one exists

cat new-file.txt 1>> another-file.txt # This appends to the file

```

## Type of redirects

The number in 0> or 1> represents file descriptors for stdin , stdout etc

```bash
> redirects stdout
0> redirects stdin
1> redirects stdout
2> redirects stdout
```

We can combine them and send stdout to a file and stderr to a different file if we want

```bash

node index.js 1>> stdout.txt 2>> stderr.txt

```

## Defaulting to stdout stream

Typically when we `echo something ` or `ls` or `less file`, we are piping the output of these
programs to stdout as we did not pipe it to anywhere else.

If we do `ls > some-file.txt`, it would redirect the result of `ls` to `some-file.txt`

## Redirecting stdin

We can also pass the contents of a file to stdin for a command using `<`

```bash
command < file # would pass the content of the file as stdin for the command

# example

grep "something " < file # would pass the content of the file to grep

```

# Piping

Pipe helps pass the output of one command/program
to another one. The operator for this is `|`.

## Examples for pipe

```bash
cat file | grep 'something' # read a file and search 'something' in it.
```
