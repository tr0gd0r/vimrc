set -eux

#clean
rm -rf ~/.config/nvim
mkdir -p ~/.config/nvim

# install pathogen
mkdir -p ~/.config/nvim/autoload
curl -LSso ~/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# download vimrc
curl -LSso ~/.config/nvim/init.vim https://raw.githubusercontent.com/tr0gd0r/vimrc/master/.vimrc

# download plugins
git clone -q https://github.com/itchyny/lightline.vim ~/.config/nvim/bundle/lightline.vim
git clone -q https://github.com/maxboisvert/vim-simple-complete.git ~/.config/nvim/bundle/vim-simple-complete.vim
git clone -q https://github.com/nvim-telescope/telescope.nvim.git ~/.config/nvim/bundle/telescope.nvim
git clone -q https://github.com/nvim-lua/plenary.nvim.git ~/.config/nvim/bundle/plenary.nvim


# color scheme
mkdir -p ~/.config/nvim/colors
curl -LSso ~/.config/nvim/colors/zenburn.vim https://raw.githubusercontent.com/jnurmine/Zenburn/master/colors/zenburn.vim

echo "You should brew install:
neovim
ripgrep"
