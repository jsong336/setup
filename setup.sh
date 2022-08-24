# Install brew
/bin/bash -c "$(curl -fsSL [https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh](https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh))"

# Install desktop app
brew install --cask notion
brew install --cask messenger
brew install --cask visual-studio-code
brew install --cask docker
brew install --cask cleanmymac
brew install --cask github

# Install app from app store
brew install mas
mas install 441258766 # Install Magnet i.e. mas lucky magnet / mas search magnet

# Install pyenv and python
brew install pyenv
# Add eval "$(pyenv init -)" to ~/.zshrc
pyenv install 3.9.0
pyenv global 3.9.0

# Install nvm and node 
brew install nvm
# Add to ~/.zshrc
# export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh

# Install GVM and golang
bash <<(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
echo "\n#GVM Setup" >> ~/.zshrc
echo "source ~/.gvm/scripts/gvm" >> ~/.zshrc

# Setup Iterm2
brew install --cask iterm2
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
# Go to ~/.zshrc and ZSH_THEME="powerlevel10k/powerlevel10k"
exec $SHELL
p10k configure

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# Go to ~/.zshrc and 
# plugins=( 
#    # other plugins...
#   zsh-autosuggestions
#		zsh-syntax-highlighting
#)
exec $SHELL

# Other brew install
brew install minikube
brew install --cask miniconda
brew install mysql
