sudo apt-get install nodejs
sudo apt-get install npm
## Change the dir points to in default in order to call npm install without sudo
### Check where npm points to: npm config get prefix
mkdir ~/.npm-global
export NPM_CONFIG_PREFIX=~/.npm-global
export PATH=$PATH:~/.npm-global/bin
echo -e "export NPM_CONFIG_PREFIX=~/.npm-global\nexport PATH=$PATH:~/.npm-global/bin" >> ~/.zshrc

## Update nodejs
### Link: https://askubuntu.com/a/480642

## Update npm
sudo npm install -g npm@latest
## Map npm command to the new version 
echo "alias npm=usr/local/bin/npm" >> ~/.zshrc
