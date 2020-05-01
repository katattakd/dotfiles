HISTFILE="$HOME/.cache/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

setopt auto_cd
setopt auto_pushd
setopt cdable_vars
setopt chase_links
setopt pushd_ignore_dups
setopt pushd_to_home

setopt auto_menu
setopt complete_in_word
setopt always_to_end
unsetopt menu_complete

WORDCHARS=''
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=*' 'r:|=*'
zstyle ':completion:*' special-dirs true
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $HOME/.cache

setopt bad_pattern
setopt equals
setopt extended_glob
setopt glob
setopt glob_dots
setopt nomatch
setopt numeric_glob_sort

setopt bang_hist
setopt extended_history
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

setopt all_export

setopt aliases
setopt clobber
setopt correct_all
unsetopt flow_control
setopt interactive_comments
setopt path_dirs

alias cp='nocorrect cp'
alias man='nocorrect man'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias sudo='nocorrect sudo'

setopt multios

autoload -U compinit
compinit -d $HOME/.cache/zcompdump
