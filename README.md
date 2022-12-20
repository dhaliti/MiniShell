# MiniShell
[![forthebadge](https://forthebadge.com/images/badges/made-with-c.svg)](https://forthebadge.com)

_Made with [jeremy-perras](https://github.com/jeremy-perras)_

A tiny shell, just like a "mini" version of Bash. It handles all the basic features of a shell such as simple commands(ls, cd, env) as well as pipes, redirections and user input management.

## Dependencies

Readline is necessary to the project, but it's not installed by default on most macOs machines.

### Install readline with [brew](https://brew.sh/)
```
brew install readline
```

```
brew link --force readline
```

Add the path to the lib

Replace ~/.zshrc with ~/.bashrc if you use bash instead of zsh
```
echo 'export C_INCLUDE_PATH="/usr/local/opt/readline/include:$C_INCLUDE_PATH"' >> ~/.zshrc
```
```
echo 'export LIBRARY_PATH="/usr/local/opt/readline/lib:$LIBRARY_PATH"' >> ~/.zshrc
```
```
source ~/.zshrc
```
