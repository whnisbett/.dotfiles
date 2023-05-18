# ESTABLISH LINKS IN HOME DIR
cd ./dotfiles
for file in *; do
    echo "$(pwd)/$file"
    ln -sf $(pwd)/"$file" ~/."$file"
done

# INSTALL DEPENDENCIES
cd ~
# OH-MY-ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# AWESOME_VIMRC
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
# POWERLEVEL10K
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# THEFUCK
brew install thefuck
# ZSH-AUTOSUGGESTION
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
