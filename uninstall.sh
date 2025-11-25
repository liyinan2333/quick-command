#!/bin/sh

zshrc="$HOME/.zshrc"

# 仅当文件存在且包含目标块时才处理
if [ -f "$zshrc" ] && grep -q "Quick command start" "$zshrc"; then
  sed '/Quick command start/,/Quick command end/d' "$zshrc" > "${zshrc}.tmp" && \
  mv "${zshrc}.tmp" "$zshrc"
fi
