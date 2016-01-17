set -x

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle 
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# download vimrc
curl -LSso ~/.vimrc https://raw.githubusercontent.com/tr0gd0r/vimrc/master/.vimrc

# download plugins
git clone -q https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim
mkdir -p ~/.vim/colors
curl -LSso ~/.vim/colors/buddy.vim https://raw.githubusercontent.com/DrSpatula/vim-buddy/master/colors/buddy.vim
