export ANDROID_SDK=/Users/myuser/Library/Android/sdk
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export BROWSER=w3m
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
if [ -f $(brew --prefix)/opt/mcfly/mcfly.bash ]; then
  . $(brew --prefix)/opt/mcfly/mcfly.bash
fi
