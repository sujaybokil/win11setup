setopt appendhistory

# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP

# completions
# zstyle ':completion::complete:lsof:*' menu yes select
# compinit
autoload -Uz compinit && compinit
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.
zstyle ':completion:*' menu select

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Bind Shift Tab to reverse cycle
bindkey '\e[Z' reverse-menu-complete

# Instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Colors
autoload -Uz colors && colors

# Useful Functions
source "$ZDOTDIR/zsh_functions"
source "$ZDOTDIR/zsh_aliases"
if [[ -f "$ZDOTDIR/plugins/powerlevel10k/powerlevel10k.zsh-theme" ]];then
    source "$ZDOTDIR/plugins/powerlevel10k/powerlevel10k.zsh-theme" 
fi

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"
zsh_add_plugin "romkatv/powerlevel10k"

# Environment variables set everywhere
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="brave-browser"
export I3BLOCKS="$HOME/.config/i3blocks/blocks"

# Global variables
export LESSHISTFILE=-
export QT_QPA_PLATFORMTHEME=qt5ct
export WGETRC="$HOME/.config/wget/.wgetrc"

# Add to paths
export PATH="$HOME/.local/bin:$PATH"
export SPICETIFY_INSTALL="$HOME/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/cursed/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/cursed/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/cursed/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/cursed/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
