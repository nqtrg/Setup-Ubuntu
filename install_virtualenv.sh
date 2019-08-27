sudo apt install python-pip
sudo apt install virtualenv
pip install virtualenvwrapper 
mkdir -p $WORKON_HOME
# Add these two lines to the bottom of ~/.bashrc
export WORKON_HOME=~/.virtualenv
source ~/.local/bin/virtualenvwrapper.sh 
# Create new env 
mkvirtualenv --python=`which python3` py3
