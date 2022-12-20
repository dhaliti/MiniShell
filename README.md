# MiniShell
[![forthebadge](https://forthebadge.com/images/badges/made-with-c.svg)](https://forthebadge.com)

_made with [jeremy-perras](https://github.com/jeremy-perras)_

A tiny shell, just like a "mini" version of Bash. It handles all the basic features of a shell such as simple commands(ls, cd, env) as well as pipes, redirections and user input management.
 
![164968713-41994d8e-ecfb-4a35-98ad-49477166c0e2-399 (dragged)](https://user-images.githubusercontent.com/105823790/169653875-1775c38d-561b-4186-9faa-d13b12eec2a2.png)


## Dependencies
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
