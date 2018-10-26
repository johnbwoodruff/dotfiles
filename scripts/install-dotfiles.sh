#!/bin/bash

cd $(dirname $0)

DOTFILES_DIR="$( cd ../dotfiles && pwd )"

ln -sfv "$DOTFILES_DIR/.aliases" ~
ln -sfv "$DOTFILES_DIR/.angular-config.json" ~
ln -sfv "$DOTFILES_DIR/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/.hyper.js" ~
ln -sfv "$DOTFILES_DIR/.zshrc" ~