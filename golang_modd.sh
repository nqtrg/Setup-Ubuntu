cd /tmp
sudo curl -O https://storage.googleapis.com/golang/go1.9.1.linux-amd64.tar.gz
sudo tar -xvf go1.9.1.linux-amd64.tar.gz
sudo mv go /usr/local
# At this point, I am modifing the ~/.zshrc because I use ZSH shell. Change it accordingly to fit your case.
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.zshrc
echo 'export GOPATH=$HOME' >> ~/.zshrc
. ~/.zshrc

# Install [modd](github.com/cortesi)
go get github.com/cortesi/modd/cmd/modd
