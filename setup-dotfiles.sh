curl -o $HOME/dotfiles.tar.gz http://172.16.5.30:3000/blake/dotfiles/archive/master.tar.gz

tar -zxf $HOME/dotfiles.tar.gz -C $HOME

cd $HOME/dotfiles && ./post_install.sh
