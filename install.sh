#!/usr/bin/env bash

PKGMAN=yay
if ! command -v yay &> /dev/null
then
  PKGMAN=pacman
else
  $PKGMAN -S git neovim stow ripgrep fzf
fi
