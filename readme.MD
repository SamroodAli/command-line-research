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

# Attribution

- Most of these notes and commands from Brian Holt's [complete intro to Linux and the command line](https://frontendmasters.com/courses/linux-command-line) course

- Brian Holt has made the course notes free for everyone which you can access [here](https://btholt.github.io/complete-intro-to-linux-and-the-cli/)
