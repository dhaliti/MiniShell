# MiniShell

_Made with [jeremy-perras](https://github.com/jeremy-perras)_

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

### Getting started
To run MiniShell, simply clone this repository and run the ```make``` command to build the program. Then simply run the executable:
```
make && ./minishell
```

### Features

<li>Built-in commands: MiniShell includes a number of built-in commands, including cd for changing the current working directory as well as env, export, and unset for displaying and modifying the environment variables.</li>

<li>External command execution: just like a reak shell, MiniShell can execute binaries by searching the directories specified in the PATH environment variable.</li>

<li>Input parsing: MiniShell can parse and interpret user input, including support for command arguments pipeline operators, redirections, and heredoc.</li>

<li>Pipe handling: Mini Bash can connect the standard output of one command to the standard input of another using the | pipe operator.</li>

## Acknowledgements
Project realised with [jeremy-perras](https://github.com/jeremy-perras)

### Licence
MiniShell is released under the MIT License.

[![forthebadge](https://forthebadge.com/images/badges/made-with-c.svg)](https://forthebadge.com)
