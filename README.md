# Here is my dotfiles
## Prerequsuites
### Config Prerequsities
Make sure `git` and GNU `stow` are installed.
```
paru -S git stow
```
or
```
yay -S git stow
```
### App Prerequsities
Apps that need to be installed for configuration files
Alphabet = ABCDEFGHIJKLMNOPQRSTUVWXYZ
- Hyprland (& Hypr ecosystem)
- Kitty
- Neovim
- Waybar
- ZSH

Copy the below command
```
paru -S hyprland hypridle hyprlock hyprpaper hyprpicker xdg-desktop-portal-hyprland kitty neovim waybar zsh
```
or 
```
paru -S hyprland hypridle hyprlock hyprpaper hyprpicker xdg-desktop-portal-hyprland kitty neovim waybar zsh
```
## Getting Configuration Files
Place this dotfiles directory into /home
```
git clone https://github.com/BayElectrician/dotfiles
cd dotfiles
stow .
```

## Need to install via flatpak
- Flatseal
- Zen Browser
- OBS
- OnlyOffice
- Zoom
