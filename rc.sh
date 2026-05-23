# Aliases
alias ll="ls -lha"
alias df="df -h"
alias shutdown-now="shutdown -P 0"

# Export ENVs
#  Golang
export PATH=$PATH:/usr/local/go/bin
#  Cargo installs
export PATH=$PATH:$HOME/.cargo/bin

# Prints
pokeget random --hide-name | fastfetch --file-raw -
