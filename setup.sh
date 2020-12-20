sudo apt update
sudo apt upgrade

sudo apt install curl
sudo apt install wget
sudo apt install git
sudo apt-get install ripgrep

git config --global user.email "balandiomer@gmail.com"
git config --global user.name "obsfx"

sudo apt install python3-pip

sudo apt install clangd-9
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-9 100

# packages for compiling simple terminal
sudo apt install libx11-dev
sudo apt install libxft-dev
sudo apt install ttf-ancient-fonts-symbola

sudo apt install neovim
mkdir ~/.vim/undodir -p
mkdir ~/.config/nvim -p
curl "https://raw.githubusercontent.com/obsfx/dotfiles/master/init.vim" > ~/.config/nvim/init.vim
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 100
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo apt install tmux
curl "https://raw.githubusercontent.com/obsfx/dotfiles/master/.tmux.conf" > ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# gtk 
curl "https://raw.githubusercontent.com/obsfx/dotfiles/master/gtk.css" > ~/.config/gtk-3.0/gtk.css

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# additional apps
sudo apt-get install font-manager

# alacritty
sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt update
sudo apt install alacritty
curl "https://raw.githubusercontent.com/obsfx/dotfiles/master/.alacritty.yml" > ~/.alacritty.yml

# starship.rs
curl -fsSL https://starship.rs/install.sh | bash

sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo chsh -s $(which zsh) $(whoami)
