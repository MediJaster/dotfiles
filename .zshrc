eval "$(starship init zsh)"

bindkey ";5C" forward-word
bindkey ";5D" backward-word

# Autocomplete:
autoload -U compinit
zstyle ':completion;*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)


alias l="ls -alh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
