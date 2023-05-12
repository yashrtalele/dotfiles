## 🌿 Information
This my personal rice for BSPWM and Hyprland.

<hr>

<div align="center">
 
 ```ocaml
 ❄️ arch / bspwm / hyprland ❄️
```

<hr>
 
</div>

## :book: Wiki
## Info

* **Xorg** 

<img src="https://github.com/yashrtalele97/dotfiles/blob/master/nitch.png" alt="Linux Fetch" align="right" width="450">

|Distro|[Archcraft](https://github.com/archcraft-os)|
|:---:|:---:|
|WM|[BSPWM](https://github.com/baskerville/bspwm)|
|Bar|[Polybar](https://github.com/polybar/polybar)|
|Menu|[Rofi](https://github.com/davatorium/rofi)|
|Compositor|[Picom](https://archlinux.org/packages/community/x86_64/picom/)|
|Terminal|[Kitty](https://github.com/kovidgoyal/kitty)|
|Widgets|[ElKowars wacky widgets ](https://github.com/elkowar/eww)|
|Music/Player|[mpd](https://archlinux.org/packages/extra/x86_64/mpd/)-[ncmpcpp](https://archlinux.org/packages/community/x86_64/ncmpcpp/)|
|File Manager|[Thunar](https://archlinux.org/packages/extra/x86_64/thunar/)|
|Shell|[Zsh](https://archlinux.org/packages/extra/x86_64/zsh/)|
|Aur Helper|[Yay](https://github.com/Jguer/yay)|



* **Wayland**

|Distro|[Archcraft](https://github.com/archcraft-os)|
|:---:|:---:|
|WM|[Hyprland](https://github.com/hyprwm/Hyprland)|
|Bar|[Waybar](https://github.com/Alexays/Waybar)|
|Menu|[Wofi](https://sr.ht/~scoopta/wofi/)|
|Compositor|[Picom](https://archlinux.org/packages/community/x86_64/picom/)|
|Terminal|[Kitty](https://github.com/kovidgoyal/kitty)|
|Widgets|[ElKowars wacky widgets ](https://github.com/elkowar/eww)|
|Music/Player|[mpd](https://archlinux.org/packages/extra/x86_64/mpd/)-[ncmpcpp](https://archlinux.org/packages/community/x86_64/ncmpcpp/)|
|File Manager|[Nautilus](https://github.com/GNOME/nautilus)|
|Shell|[Zsh](https://archlinux.org/packages/extra/x86_64/zsh/)|
|Aur Helper|[Yay](https://github.com/Jguer/yay)|

<table align="center">
   <tr>
      <th align="center">
         <sup><sub>:warning: WARNING :warning:</sub></sup>
      </th>
   </tr>
   <tr>
      <td align="center">
      
      
      
     THIS DOTFILES ARE CONFIGURED AT 1920x1080! 1 MONITOR
     SOME STUFF MIGHT BREAK ON LOWER OR HIGHER
     RESOLUTIONS BUT WILL STILL WORK!
     
   </tr>
   </table>

## 🎨 The WMs

### 🌸 BSPWM:
![alt text](https://github.com/yashrtalele97/dotfiles/blob/master/bspwm.png)

### 🌸 Hyprland:
![alt text](https://github.com/yashrtalele97/dotfiles/blob/master/hyprlandwm.png)


## 📦 Setup

### 💾 Installation:
The installer only works for **ARCH** Linux, and based distros and nvidia based hardware only.

## Initial Steps after installing archcraft
```sh
# Add the following lines to the /etc/resolv.conf

# This is /run/systemd/resolve/stub-resolv.conf managed by man:systemd-resolved(8).
# Do not edit.
#
# This file might be symlinked as /etc/resolv.conf. If you're looking at
# /etc/resolv.conf and seeing this text, you have followed the symlink.
#
# This is a dynamic resolv.conf file for connecting local clients to the
# internal DNS stub resolver of systemd-resolved. This file lists all
# configured search domains.
#
# Run "resolvectl status" to see details about the uplink DNS servers
# currently in use.
#
# Third party programs should typically not access this file directly, but only
# through the symlink at /etc/resolv.conf. To manage man:resolv.conf(5) in a
# different way, replace this symlink by a static file or a different symlink.
#
# See man:systemd-resolved.service(8) for details about the supported modes of
# operation for /etc/resolv.conf.

nameserver 127.0.0.53
nameserver 1.1.1.1
nameserver 8.8.8.8
nameserver 8.8.4.4
nameserver 1.0.0.1
options edns0 trust-ad
search .

```

* **Automating the addition of dns to resolv.conf**

```sh
# Create a resolv.conf.override and write the above lines in it

sudo vim /etc/resolv.conf.override
```

```sh
# Create override.sh and write following lines after vim command
sudo vim /etc/NetworkManager/dispatcher.d/override.sh
cp -f /etc/resolv.conf.override /etc/resolv.conf

# Give rights and ownership
sudo chown root:root /etc/NetworkManager/dispatcher.d/override.sh
sudo chmod 755 /etc/NetworkManager/dispatcher.d/override.sh
sudo systemctl enable NetworkManager-dispatcher.service
sudo systemctl start NetworkManager-dispatcher.service

```

* **Initialize and Update pacman keys**

```sh
sudo pacman-key --init && sudo pacman-key --populate
```

* **Update the system**

```sh
yes | sudo pacman -Syu && reboot
```

* **Additional Packages**
```sh
yay -S lxappearance google-chrome brave-bin nerd-fonts-sf-mono scrcpy appmenu-gtk-module spotify visual-studio-code-bin notion-app-enhanced kdeconnect telegram-desktop-bin neovim capitaine-cursors layan-gtk-theme-git whitesur-icon-theme python-pip rofi sf-fonts flameshot nautilus nvm

source .zshrc
nvm install node
```
* **Miscellaneous**
```sh
python -m ensurepip
pip install meson
```

* **Installing rofi by adi1090x**
```sh
cd
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh
cd ..
rm -rf rofi/
```


* **Install starship**
```sh
curl -sS https://starship.rs/install.sh | sh
```

## Ricing BSPWM 🍙
- **Downloading the installer**
```sh
cd
curl https://raw.githubusercontent.com/gh0stzk/dotfiles/master/RiceInstaller -o $HOME/RiceInstaller
```
- **Giving it execute permissions**
```sh
chmod +x RiceInstaller
```
- **Running the installer**
```sh
./RiceInstaller
```

## Installing Hyprland and it's dependencies

* **Installing required packages**
```sh
yay -S make wlroots wayland-protocols pkgconf ninja patch catch2 waybar-hyprland-git brightnessctl pulseaudio-ctl grim slurp hyprland-nvidia alsa-utils wofi kitty alacritty nemo ranger mako neofetch nitch btop viewnior swaybg swayidle swaylock-effects waylogout-git swww zoxide cliphist wtype wl-clipboard xdg-desktop-portal-wlr polkit-gnome mtpfs jmtpfs gvfs-mtp gvfs-gphoto2 powertop tlp qt5-wayland qt6-wayland imagemagick
```

* **Theming**
```sh
gsettings set org.gnome.desktop.interface gtk-theme Layan-Dark
gsettings set org.gnome.desktop.interface icon-theme WhiteSur-dark
gsettings set org.gnome.desktop.interface cursor-theme capitaine-cursors-light
```

### For Emojis

```sh
yay -S wtype wl-clipboard ttf-twemoji-color noto-fonts-emoji

mkdir ~/git-clones
mkdir ~/git-clones/local
mkdir ~/git-clones/local/cybergaz
cd ~/git-clones/local/cybergaz
git clone https://github.com/cybergaz/scripts.git
cd scripts/wofi-emoji
sudo cp wofi-emoji /usr/bin/
```

* **Cloning the repository**

```sh
cd ~/git-clones/local/
mkdir yashtalele
cd yashtalele
git clone --recursive https://github.com/yashrtalele97/dotfiles
```
* **Manually copy the files to the .config folder**

* **Configuring the sddm**
```sh
sudo cp -r ~/git-clones/local/yashtalele/dotfiles/sugar-candy /usr/share/sddm/themes

# Add the following lines to /etc/sddm.conf under [Theme] section

[Theme]
Current=sugar-candy
CursorTheme=capitaine-cursors-light
```

* **Create a folder under Pictures for screenshot to be saved**
```sh
mkdir /home/yash/Pictures/Screenshots
```

* **Copy the Madness Font to root folder**
```sh
cd ~/git-clones/local/yashtalele/dotfiles/
sudo cp Madness.ttf /usr/share/fonts
```

* **Reboot**
```sh
reboot
```

## Removing Openbox from archcraft
* **Login to other WM - bspwm or hyprland then perform the following actions**
```sh
sudo pacman -Rs archcraft-openbox openbox obconf obmenu-generator

# Remove the config files of openbox
rm -rf ~/.config/obmenu-generator
rm -rf ~/.config/openbox
rm -rf ~/.config/openbox-themes
```

* **Reboot**
```sh
reboot
```
