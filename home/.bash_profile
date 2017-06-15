# Editors
export EDITOR="atom"
export BUNDLER_EDITOR="atom"

# Aliases
if [ -f ~/.aliases ]; then
 source ~/.aliases
fi

# Bash Functions
if [ -f ~/.functions ]; then
  source ~/.functions
fi

# Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Yarn
export PATH="$(brew --prefix yarn)/bin:$PATH"

# Homebrew
export PATH="/usr/local/bin:$PATH"

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Path
export PATH=~/bin:$PATH

# Get Git Branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# PS1
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
