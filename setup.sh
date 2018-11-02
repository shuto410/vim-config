sudo apt remove vim
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim

mkdir -p ~/.vim/rc/

cp ./dein.toml ~/.vim/rc/
cp ./vimrc ~/.vimrc

vim
