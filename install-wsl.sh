#!/bin/zsh

# 执行卸载脚本
sh ./uninstall.sh

# 向 .zshrc 末尾追加配置块
cat >> "$HOME/.zshrc" << EOF

##################### Quick command start ####################
PATH=$HOME/code/shell/quick-command/command/wsl/:\$PATH
alias lsort="ls -lSX"
alias ltime="ls -ltr"
####################  Quick command end  #####################
EOF
