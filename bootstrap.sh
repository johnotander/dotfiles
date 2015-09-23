#!/usr/bin/env bash

# From https://github.com/mathiasbynens/dotfiles/blob/master/bootstrap.sh

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
  --exclude "README.md" --exclude "LICENSE" -avh --no-perms . ~;
source ~/.bash_profile;

ln -s "./pure/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
ln -s "./pure/async.zsh" /usr/local/share/zsh/site-functions/async
