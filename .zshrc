# Git stuff
autoload -Uz vcs_info compinit promptinit colors && colors
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT="%{$fg_bold[green]%}\$vcs_info_msg_0_%{$reset_color%}"
PROMPT="☁️  %n@%m $ "
zstyle ':vcs_info:git:*' formats '%b'
compinit
promptinit

# Set the EDITOR
export EDITOR="/usr/bin/vi"

#Set local path
export PATH=$HOME/bin:$PATH

# Fix the damn pager settings
export PAGER=/usr/bin/less

# My favorite aliases
alias ls='ls -F'
alias lstree="find . -type d | sed -e 1d -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|-/'"
