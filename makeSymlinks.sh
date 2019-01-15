#!/bin/bash
home=/home/patrick
dotDir=$home/dotfiles
files="bash zsh vim tmux"    
folders=""

for file in $files; do
    echo "Creating symlink to $file in $home"
    stow -t $home $file 
done

for folder in $folders; do
  echo "Creating symlink to $folder folder in $home"
  stow -t $home $folder
done
