# Minishell42

Minishell is a 42 group project. The purpose is to learn how the shell works by recoding a "mini" version of bash. The programm must handle all basic features of a shell, such as pipe, fork, and user input management.
 
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

### Install readline on 42 Macs

Install Brew, <b>only if it is not already installed:</b>

```
rm -rf $HOME/.brew && git clone --depth=1 https://github.com/Homebrew/brew $HOME/.brew && echo 'export PATH=$HOME/.brew/bin:$PATH' >> $HOME/.zshrc && source $HOME/.zshrc && brew update
```

Install Readline library:
```
brew install readline
```

```
brew link --force readline
```

```
echo 'export C_INCLUDE_PATH="$HOME/.brew/include:$C_INCLUDE_PATH"' >> ~/.zshrc
```

```
echo 'export LIBRARY_PATH="$HOME/.brew/lib:$LIBRARY_PATH"' >> ~/.zshrc
```
```
source ~/.zshrc
```
