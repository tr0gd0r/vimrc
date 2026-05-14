set -eux

NVIM_DIR=~/.config/nvim
#clean
rm -rf $NVIM_DIR
mkdir -p $NVIM_DIR

cp init.vim $NVIM_DIR
cp lazy-lock.json $NVIM_DIR
cp -R lua/ $NVIM_DIR
