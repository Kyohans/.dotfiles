#!/usr/bin/env bash

if ! command -v pacman &> /dev/null
then
  curl -L https://nixos.org/nix/install | sh
  . ~/.nix-profile/etc/profile.d/nix.sh

  nix-env -iA \
    nixpkgs.git \
    nixpkgs.neovim \
    nixpkgs.stow \
    nixpkgs.ripgrep \
    nixpkgs.fzf
else
  yay -S git neovim stow ripgrep fzf
fi

stow bash
stow nvim
