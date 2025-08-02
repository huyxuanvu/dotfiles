# by huyxuanvu
echo "██╗  ██╗██╗   ██╗ █████╗ ███╗   ██╗██╗  ██╗██╗   ██╗██╗"
echo "╚██╗██╔╝██║   ██║██╔══██╗████╗  ██║██║  ██║██║   ██║██║"
echo " ╚███╔╝ ██║   ██║███████║██╔██╗ ██║███████║██║   ██║██║"
echo " ██╔██╗ ██║   ██║██╔══██║██║╚██╗██║██╔══██║██║   ██║██║"
echo "██╔╝ ██╗╚██████╔╝██║  ██║██║ ╚████║██║  ██║╚██████╔╝██║"
echo "╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝ ╚═════╝ ╚═╝"
echo "                                                       "


if ! command -V yay &> /dev/null
then
    echo "❌ yay is not installed."
    exit 1
fi

set -e 

echo "⚙️ Update to system"
sudo pacman -Syu --noconfirm

echo "Install dependencies...."

yay -S --noconfirm \ 
    flameshot \ rofi \ apple-fonts \ feh \ 
    brightnessctl \ picom \ twmn-git \ xautolock \
    ttf-jetbrains-mono-nerd \ ttf-victor-mono-nerd \ thunar \
    gvfs \ xarchiver \ thunar-archive-plugin \ thunar-media-tags-plugin \
    \ thunar-volman \ tumbler \ ristretto \ tmux \ fcitx5-im \ fcitx5-bamboo \ 
    zsh \ zsh-syntax-highlighting \ zsh-autosuggestions 

yay -S --noconfirm \ neovim \ xclip \ fzf \ ripgrep \ npm \ miniconda3 

echo "✅ done "
