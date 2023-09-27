# My bash Configs

# --------------------------------------------------------------------------------------

# Source personalized shell aliases
if [ -f ~/.config/myShell/shell_aliases ]; then
	. ~/.config/myShell/shell_aliases
fi

# Source custom shell functions
if [ -f ~/.config/myShell/shell_functions ]; then
	. ~/.config/myShell/shell_functions
fi

# Add user-specific local binaries to the PATH
if [ -d "$HOME/.local/bin" ] && [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH="$PATH:/home/salma/dotfiles/scripts"
export VIMINIT='source $HOME/.config/vim/vimrc'
# --------------------------------------------------------------------------------------

# Tmux
export TMUX_CONFIG=$HOME/.config/tmux/tmux.conf
# export TERM=xterm-256color

# Automatically start Tmux in every new terminal window or tab, if Tmux is installed and not already running.
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux
fi

# --------------------------------------------------------------------------------------

# export PATH=~/.npm-global/bin:$PATH

# use vim commands on the command line 
#set -o vi

# Color mapping
purple_brown='\[\033[38;5;174m\]'
black='\[\033[01;30m\]' 
grey='\[\033[1;30m\]'
red='\[\033[0;31m\]'
RED='\[\033[1;31m\]'
green='\[\033[0;32m\]'
GREEN='\[\033[1;32m\]'
yellow='\[\033[0;33m\]'
YELLOW='\[\033[1;33m\]'
purple='\[\033[0;35m\]'
PURPLE='\[\033[1;35m\]'
white='\[\033[0;37m\]'
WHITE='\[\033[1;37m\]'
blue='\[\033[0;34m\]'
BLUE='\[\033[1;34m\]'
cyan='\[\033[0;36m\]'
CYAN='\[\033[1;36m\]'
clr='\[\033[0m\]' #Reset


# Set the prompt
PS1="$purple_brown[$CYAN\W$purple_brown]$purple_brown\$(git_branch)$purple_brown$clr "
PS2="$CYAN>$clr "


# Define color variables
DIR_COLOR='\033[38;5;174'
#CPP_COLOR='\033[0;31m'
SH_COLOR='\033[0;33'

# Set LS_COLORS variable
LS_COLORS="$LS_COLORS:di=$DIR_COLOR"
#LS_COLORS="$LS_COLORS:*.cpp=$CPP_COLOR"
LS_COLORS="$LS_COLORS:*.sh=$SH_COLOR"

export LS_COLORS


# History Settings

# Use this file
HISTFILE=~/.bash_history

# Ignore duplicate commands in the history
HISTCONTROL=ignoredups

# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# Save and reload the history after each command finishes
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND" # works in a strange way

# Set Vim as the default editor
export VISUAL=vim
export EDITOR="$VISUAL"
