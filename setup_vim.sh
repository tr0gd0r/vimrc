set -x
#clean
rm -rf ~/.vim
rm -f ~/.vimrc

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle 
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# download vimrc
curl -LSso ~/.vimrc https://raw.githubusercontent.com/tr0gd0r/vimrc/master/.vimrc

# download plugins
git clone -q https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim
mkdir -p ~/.vim/colors
curl -LSso ~/.vim/colors/zenburn.vim https://raw.githubusercontent.com/jnurmine/Zenburn/master/colors/zenburn.vim
git clone -q https://github.com/guns/vim-clojure-static ~/.vim/bundle/vim-clojure-static
