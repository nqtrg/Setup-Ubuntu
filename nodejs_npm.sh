sudo apt-get install nodejs
sudo apt-get install npm
## Change the dir points to in default in order to call npm install without sudo
### Check where npm points to: npm config get prefix
mkdir ~/.npm-global
export NPM_CONFIG_PREFIX=~/.npm-global
export PATH=$PATH:~/.npm-global/bin
echo -e "export NPM_CONFIG_PREFIX=~/.npm-global\nexport PATH=$PATH:~/.npm-global/bin" >> ~/.zshrc
