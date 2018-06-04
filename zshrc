# Never know when you're gonna need to popd!
#setopt AUTO_PUSHD

# Allow completing of the remainder of a command
#bindkey "^N" insert-last-word

# Show contents of directory after cd-ing into it
chpwd() {
  ls -lrthG
}

# Save a ton of history
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=20000

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Disable flow control commands (keeps C-s from freezing everything)
stty start undef
stty stop undef

# Enable autocomplete for git
autoload -U compinit && compinit

# Source my custom files after oh-my-zsh so I can override things.
# source /usr/local/bin/virtualenvwrapper.sh
source $HOME/.dotfiles/zsh/aliases
source $HOME/.dotfiles/zsh/functions
source $HOME/.dotfiles/zsh/git-prompt/zshrc.sh
PROMPT='%B%m%~%b$(git_super_status) %# '


export PYTHONSTARTUP=$HOME/.pyrc

export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
export PATH=$PATH:/usr/texbin
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=~/.rbenv/shims:$PATH

export EDITOR="vim"

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

eval "$(rbenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/einar/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/einar/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/einar/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/einar/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
