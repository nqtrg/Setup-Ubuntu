# zsh and prezto: https://github.com/sorin-ionescu/prezto
sudo apt install zsh
chsh -s $(which zsh)
# log out of your computer and log back in.
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
echo "source ${ZDOTDIR:-$HOME}/.zprezto/init.zsh" >> ~/.zshrc
