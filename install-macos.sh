#!/bin/zsh

# 执行卸载脚本
sh ./uninstall.sh

# 向 .zshrc 末尾追加配置块
cat >> "$HOME/.zshrc" << EOF

##################### Quick command start ####################
PATH=$HOME/code/shell/quick-command/command/macos/:\$PATH
alias proxy="source proxy"
alias unproxy="source unproxy"
alias lsort="ls -lSX"
alias ltime="ls -ltr"
####################  Quick command end  #####################
EOF
