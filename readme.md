## GeekTools

#### Automatically install environment, development tools for your machine.


### Prerequisites:
1. Ensure Apple's command line tools are installed (xcode-select --install to launch the installer).
2. [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#latest-releases-via-pip). run `sudo easy_install pip`, and then `sudo pip install ansible`.

### Installation
1. Clone this repo to your local drive `git clone https://github.com/cloudle/geekTools`
2. Run `ansible-playbook -i hosts.yml ansible.yml`

### Software list:
List of tools that will be install by Ansible..

#### Create folder
- [x] ~/Sources
- [x] ~/Projects

#### Essentials tools
- [x] Homebrew
- [x] openssl
- [x] iTerm2 (using Brew)
- [x] zsh (use as default shell), oh-my-zsh (~/Source/oh-my-zsh)
- [x] spaceship-operator-mono theme for Zsh
- [x] plugins for Zsh: suggestions, syntax highlighting, nvm

#### Developer tools
- [x] rvm (ruby version manager)
- [x] ruby@2.4.1 (using `rvm`)
- [x] nvm (node version manager)
- [x] nodejs@8.11.3 (using `nvm`)
- [x] yarn (yet another node.js package manager)

#### React Native tools
- [x] watchman
- [x] react-native-cli
- [x] ruui-cli (react based universal App development tool)
- [ ] CocoaPods, we'll need to run `pod install cocoapods` on our own (it take too long time to run, so I don't think we want to have it installed by Ansible)

#### Common software
- [x] Chrome
- [x] GoTiengViet (for Vietnamese input)
- [x] Dropbox
- [x] Slack
- [x] Visual Studio Code 

#### Other software that you may interest with (paid, not in scope of this Repo)k
- [ ] Alfred (great alternative for Spotlight)
- [ ] Magnet (smart arrange Application windows)
- [ ] CleanMyMac
- [ ] Commander One PRO
