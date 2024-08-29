if [[ -c "~/.config" ]]; then
    mkdir -p ~/.config
fi

if [[ -z "~/.local/bin" ]]; then
    mkdir -p ~/.local/bin
fi

if [[ -z "~/.config/vesktop/themes" ]]; then
    mkdir -p ~/.config/vesktop/themes
fi

sudo pacman -S stow hyprland alacritty hyprlock xdg-desktop-portal-hyprland alsa-utils pipewire wireplumber pipewire-audio pipewire-alsa pipewire-pulse pavucontrol qt5-wayland qt6-wayland qt5ct qt6ct mako neofetch waybar wofi zsh zsh-completions zsh-autocomplete zsh-syntax-highlighting neovim ranger thunar polkit-gnome network-manager-applet swaybg nwg-look wget unzip engrampa thunar-archive-plugin thunar-volman thunar-media-tags-plugin zathura zathura-pdf-mupdf zathura-cb zathura-djvu ttf-cascadia-code otf-font-awesome ttf-cascadia-code-nerd

sudo cp -r "Gruvbox-Dark-BL-LB" /usr/share/themes
wget https://github.com/SylEleuth/gruvbox-plus-icon-pack/releases/download/v5.4.0/gruvbox-plus-icon-pack-5.4.zip
unzip gruvbox-plus-icon-pack-5.4.zip
rm gruvbox-plus-icon-pack-5.4.zip
sudo mv Gruvbox-Plus-Dark /usr/share/icons

stow cyberia -t ~

if [[ "$SHELL" != "/usr/bin/zsh" ]]; then
    chsh -s /usr/bin/zsh
fi

printf "\nMake sure to install poweralertd, jamesdsp-pipewire-bin, nvim-packer-git and vesktop-bin from the AUR and set GTK settings in nwg-look.\n"
