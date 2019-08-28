# zsh and prezto: https://github.com/sorin-ionescu/prezto
sudo apt install zsh
chsh -s $(which zsh)
# log out of your computer and log back in.
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
# auto start zprezto
echo "source ${ZDOTDIR:-$HOME}/.zprezto/init.zsh" >> ~/.zshrc

# suggest module: open .zpreztorc and add these module:
# zstyle ':prezto:load' pmodule \
#   'environment' \
#   'terminal' \
#   'editor' \
#   'history' \
#   'history-substring-search' \
#   'directory' \
#   'spectrum' \
#   'utility' \
#   'completion' \
#   'prompt' \
#   'git' \
#   'autosuggestions'
