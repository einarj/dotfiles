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

# RVM 
[[ -s "/Users/einar/.rvm/scripts/rvm" ]] && source "/Users/einar/.rvm/scripts/rvm"

# Source my custom files after oh-my-zsh so I can override things.
source /usr/local/bin/virtualenvwrapper.sh
source $HOME/.dotfiles/zsh/aliases
source $HOME/.dotfiles/zsh/functions
source $HOME/.dotfiles/zsh/git-prompt/zshrc.sh
PROMPT='%B%m%~%b$(git_super_status) %# '

# Customize to your needs...
#export PATH=bin:/Users/ben/.rvm/gems/ruby-1.9.2-p180/bin:/Users/ben/.rvm/gems/ruby-1.9.2-p180@global/bin:/Users/ben/.rvm/rubies/ruby-1.9.2-p180/bin:/Users/ben/.rvm/bin:~/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

export PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:/usr/texbin
export PATH=/usr/local/bin:$PATH

export EDITOR="vim"
