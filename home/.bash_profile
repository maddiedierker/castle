# Editors
export EDITOR="vim"
export BUNDLER_EDITOR="vim"

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

# Bash Prompt
if [ -f ~/.bash_prompt]; then
  source ~/.bash_prompt
fi

# For Homebrew
export PATH="/usr/local/bin:$PATH"

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Yarn
export PATH="$(brew --prefix yarn)/bin:$PATH"

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Path
export PATH=~/bin:$PATH
