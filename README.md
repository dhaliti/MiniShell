# MiniShell

MiniShell is a small and lightweight implementation of the popular Unix shell written in C. It features a number of built-in commands, including cd, env, and echo, as well as the ability to parse user input, execute external binaries, and handle pipes.

## Prerequisite

Readline is necessary to the project. Here is how to install it on your machine on macOS (assuming [Homebrew](https://brew.sh/) is already installed):
```
brew install readline
brew link --force readline
echo 'export C_INCLUDE_PATH="/usr/local/opt/readline/include:$C_INCLUDE_PATH"' >> ~/.zshrc
echo 'export LIBRARY_PATH="/usr/local/opt/readline/lib:$LIBRARY_PATH"' >> ~/.zshrc
source ~/.zshrc
```
<b>Note:</b> Replace ```~/.zshrc``` with ```~/.bashrc``` if you use bash instead of zsh

## Getting started
To run MiniShell, simply clone this repository and run the ```make``` command to build the program. Then simply run the executable:
```
make && ./minishell
```

## Features

<ul>
<li><b>Built-in commands:</b> MiniShell includes a number of built-in commands, including cd for changing the current working directory as well as env, export, and unset for displaying and modifying the environment variables.</li>

<li><b>External command execution:</b> just like a reak shell, MiniShell can execute binaries by searching the directories specified in the PATH environment variable.</li>

<li><b>Input parsing:</b> MiniShell can parse and interpret user input, including support for command arguments pipeline operators, redirections, and heredoc.</li>

<li><b>Pipe handling:</b> Mini Bash can connect the standard output of one command to the standard input of another using the | pipe operator.</li>
</ul>

## Contributors
Project realised with [Jérémy Perras](https://github.com/jeremy-perras)

## Ressources
[Bash manual](https://www.gnu.org/software/bash/manual/bash.html)<br>
[POSIX shell specification](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html)<br>
[GNU C Library mannual](https://www.gnu.org/software/libc/manual/html_node/index.html)<br>
[Linux man pages](https://linux.die.net/man/)

### Licence
MiniShell is released under the MIT License.

[![forthebadge](https://forthebadge.com/images/badges/made-with-c.svg)](https://forthebadge.com)
