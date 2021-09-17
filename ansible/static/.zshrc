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

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc  ]]; then
		nvm use > /dev/null
	elif [[ $(nvm version) != $(nvm version default)   ]]; then
		echo "Reverting to nvm default version"
		nvm use default
	fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc
