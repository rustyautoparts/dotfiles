#!/bin/bash

## Variables

dir=~/dotfiles		# dotfiles directory
olddir=~/dotfiles_old	#old dotfiles backup directory
files="bashrc vimrc xinitrc Xresources"	# list of files/folders to symlink

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directoy, then creat symlinks from the homedir to any files in the
# ~/dotfiles directory specified in $files
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done

# do same as above for i3 config file
echo "Moving i3/config to $olddir"
mv ~/.i3/i3/config ~/dotfiles_old
echo "Creating symlink to i3/config in home directory."
ln -s $dir/i3config ~/.config/i3/config
