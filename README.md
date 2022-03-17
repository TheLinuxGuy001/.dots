# 📖 Jump to

[dotfiles](https://github.com/FaarisAnsari/dotfiles#-dotfiles)

[Permissions](https://github.com/FaarisAnsari/nord-dotfiles#-permissions)

[Wallpapers](https://github.com/FaarisAnsari/nord-dotfiles#%EF%B8%8F-wallpapers)

[Dependencies](https://github.com/FaarisAnsari/nord-dotfiles#-dependencies)

[Dependencies without configs](https://github.com/FaarisAnsari/nord-dotfiles#-dependencies-without-configs)

[Optional Apps](https://github.com/FaarisAnsari/nord-dotfiles#use-these-if-you-want-some-of-the-programs-that-i-use-in-the-screenshots)

[Installation](https://github.com/FaarisAnsari/nord-dotfiles#%EF%B8%8F-installation)

# 🔷 dotfiles
Dotfiles for my Arch linux configurations, edited and maintained by FaarisAnsari.

![Dotfiles](https://media.discordapp.net/attachments/635625917623828520/954137050595086346/unknown.png)

## 🙏 Permissions
All of these are free to use! I've uploaded them in a way where all files are where you need them to be when you clone.

## 🖥️ Wallpapers
Huge thanks to [@linuxdotexe](https://github.com/linuxdotexe/ "@linuxdotexe on GitHub") for these beautiful wallpapers!

[nordic-wallpapers](https://github.com/linuxdotexe/nordic-wallpapers "nordic-wallpapers on GitHub")

## 👨‍💻 Dependencies

[i3-gaps](https://github.com/Airblader/i3 "i3-gaps on GitHub")

[Xorg](https://wiki.archlinux.org/title/xorg "Xorg on Arch Wiki")

[NightTab](https://chrome.google.com/webstore/detail/nighttab/hdpcadigjkbcpnlcpbcohpafiaefanki?hl=en-GB "NightTab on Chrome Webstore")

[Kitty](https://github.com/kovidgoyal/kitty "Kitty on GitHub")

[Cava](https://github.com/karlstav/cava "Cava on GitHub")

[i3status-rust](https://github.com/greshake/i3status-rust "i3status-rust on GitHub")

[neofetch](https://github.com/dylanaraps/neofetch "neofetch on GitHub")

[jonaburg's rounded fix fork of Picom](https://github.com/Arian8j2/picom-jonaburg-fix "Arian8j2's fork of Picom on GitHub")

[rofi](https://github.com/davatorium/rofi "rofi on GitHub")

[i3lock-color](https://github.com/Raymo111/i3lock-color "i3lock-color on GitHub")

[xidlehook](https://github.com/jD91mZM2/xidlehook "xidlehook on github")

[bottom](https://github.com/ClementTsang/bottom "bottom on github")

## 👩‍💻 Dependencies without configs / scripts


[zsh](https://www.zsh.org/ "zsh")

[OhMyZsh](https://github.com/ohmyzsh/ohmyzsh "OhMyZsh on GitHub")

[Dunst (needed for i3-volume)](https://github.com/dunst-project/dunst "Dunst on GitHub")

[i3-volume](https://github.com/hastinbe/i3-volume "i3-volume on GitHub")

[Powerlevel10k](https://github.com/romkatv/powerlevel10k "Powerlevel10k on GitHub")

[rsClock](https://github.com/valebes/rsClock "rsClock on GitHub")

[spicetify](https://github.com/khanhas/spicetify-cli "spicetify-cli on GitHub")

[spotify (needed for spicetify)](https://www.spotify.com/us/download/linux/ "Spotify for Linux")

[Librewolf](https://librewolf.net/ "librewolf")

[🎄 Treefetch](https://github.com/angelofallars/treefetch "treefetch")

## ✔️ Installation

```
$ sudo pacman -Sy --needed git
$ cd ~ && git clone https://github.com/FaarisAnsari/dotfiles.git
$ ln -svf .config/* ~/.config/
$ ln -svf .fonts/* ~/.fonts/
$ ln -svf .scripts ~/.scripts
$ ln -svf .aliases ~/.aliases
```
This will create symlinks and overwrite files. Please backup your current configs before installing!
