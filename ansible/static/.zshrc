export ZSH="/Users/{{ansible_user}}/.oh-my-zsh"
export LANG=en_US.UTF-8

ZSH_THEME="spaceship-operator-mono"
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-nvm
)

source $ZSH/oh-my-zsh.sh
