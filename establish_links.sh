# ESTABLISH LINKS IN HOME DIR
cd ./dotfiles
for file in *; do
    echo "$(pwd)/$file"
    ln -sf $(pwd)/"$file" ~/."$file"
done

# INSTALL DEPENDENCIES
cd ~
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
brew install thefuck
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
