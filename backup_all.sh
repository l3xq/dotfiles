#!/bin/bash

## Array of paths to files which should be backed up
elements=(
#FILES
~/.bashrc 
~/.zshrc 
~/.vimrc
~/.tmux.conf
~/.tmuxStarterScript
~/update.sh
~/screen_colors.sh
~/.oh-my-zsh/oh-my-zsh.sh

#workrelated
/etc/memcached.conf
/etc/php/5.6/apache2/php.ini
/etc/php/5.6/mods-available/xdebug.ini
/etc/php/5.6/mods-available/opcache.ini
/etc/apache2/apache2.conf
/etc/apache2/sites-available/example.dev.conf

#DIRS
~/.config/i3
~/.config/rofi
~/.config/fontconfig

~/.fonts
~/.dir_colors
)

for d in ${elements[*]}; do
        if [ -d $d ]
        then
                cp -ru $d .
                echo "$d dir has been updated/copied" |  awk '{print $0}'
        else
                cp -u $d .
                echo "$d file has been updated/copied" | awk '{print $0}'
        fi
done
