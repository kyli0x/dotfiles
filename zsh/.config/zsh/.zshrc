export SHELL=/bin/zsh
export EDITOR=vim

#enable colors and change prompt
autoload -U colors && colors
PS1="[%n:%F{cyan}%~%f]$ "

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# language
export LANG=en_US.UTF-8

# don't throw errors when file gobs don't match anything
setopt NULL_GLOB

# turn off beep
unsetopt beep

# custom aliases
source $HOME/.aliases

# vi mode
bindkey -v
bindkey '^R' history-incremental-search-backward
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kyli0x/.zshrc'

# auto complete
autoload -Uz compinit
compinit

# the gits
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'

# case insensitive path-completion 
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 

# loading plugins - keep at end of file.
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
