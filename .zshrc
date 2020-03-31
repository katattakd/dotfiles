source ~/.config/zsh/antigen-env.zsh
source ~/.config/zsh/oh-my-zsh-env.zsh

source /usr/share/zsh-antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle ufw
antigen bundle nmap
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen apply

source /usr/share/doc/fzf/examples/completion.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh

source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/theme.zsh

