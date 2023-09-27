# My Zsh Configs

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

# Customized Zsh environment variables
export VISUAL='code'
export EDITOR='nvim'
export TERMINAL='alacritty'
export BROWSER='chrome'
export HISTORY_IGNORE="(ls|cd|pwd|exit|history|cd -|cd ..)"

# Zsh History Configuration
HISTFILE=~/.config/zsh/zhistory
HISTSIZE=5000
SAVEHIST=5000

# --------------------------------------------------------------------------------------

# Prompt
# PS1='%B%F{blue}%f%b  %B%F{magenta}%n%f%b $(dir_icon)  %B%F{red}%~%f%b${vcs_info_msg_0_} %(?.%B%F{green}.%F{red})%f%b '
PS1='$(dir_icon)  %B%F{blue}%~%f%b${vcs_info_msg_0_} %(?.%B%F{green}.%F{red})%f%b '

# --------------------------------------------------------------------------------------

# Zsh Configuration Options
setopt AUTOCD              # change directory just by typing its name
setopt PROMPT_SUBST        # enable command substitution in prompt
setopt MENU_COMPLETE       # Automatically highlight first element of completion menu
setopt LIST_PACKED		   # The completion menu takes less space.
setopt AUTO_LIST           # Automatically list choices on ambiguous completion.
setopt HIST_IGNORE_DUPS	   # Do not write events to history that are duplicates of previous events
setopt HIST_FIND_NO_DUPS   # When searching history don't display results already cycled through twice
setopt COMPLETE_IN_WORD    # Complete from both ends of a word.

# --------------------------------------------------------------------------------------

# Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# --------------------------------------------------------------------------------------

# Zsh Completion and Configuration
autoload -Uz compinit

for dump in ~/.config/zsh/zcompdump(N.mh+24); do
  compinit -d ~/.config/zsh/zcompdump
done

compinit -C -d ~/.config/zsh/zcompdump

autoload -Uz add-zsh-hook
autoload -Uz vcs_info
precmd () { vcs_info }
_comp_options+=(globdots)

# Configure completion settings
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS} 'ma=48;5;197;1'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:warnings' format "%B%F{red}No matches for:%f %F{magenta}%d%b"
zstyle ':completion:*:descriptions' format '%F{yellow}[-- %d --]%f'
zstyle ':vcs_info:*' formats ' %B%s-[%F{magenta}%f %F{yellow}%b%f]-'

# --------------------------------------------------------------------------------------

# Key Bindings

# Map 'jj' to Escape key in Zsh
bindkey -s jj '\e'

# Map Ctrl + a/e to beginning/end of line
bindkey "^a" vi-beginning-of-line
bindkey "^e" vi-end-of-line
