sed -i '$a\' $HOME/.zshrc
sed -i '$a\#################### Quick command ####################' $HOME/.zshrc
sed -i '$a\PATH=/home/leoli/code/quick-command/command/:$PATH' $HOME/.zshrc
sed -i '$a\alias lsort="ls -lSX"' $HOME/.zshrc
sed -i '$a\alias lsort="ls -ltr"' $HOME/.zshrc
sed -i '$a\#######################################################' $HOME/.zshrc

source $HOME/.zshrc
