[ -f ~/.bashrc ] && source ~/.bashrc

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export PATH=/opt/maven/bin:$PATH
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
