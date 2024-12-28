#!/bin/bash
ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime
hwclock --systohc
# Раскладка, шрифт, локализация
echo en_US.UTF-8 UTF-8 > /etc/locale.gen
echo ru_RU.UTF-8 UTF-8 >> /etc/locale.gen
locale-gen
loadkeys ru
setfont cyr-sun16
echo LANG=en_US.UTF-8 >> /etc/locale.conf
echo anton-pc > /etc/hostname
sudo timedatectl set-timezone Europe/Moscow
pacman -S grub efibootmgr networkmanager openssh git vim firefox mattermost-desktop htop wget docker docker-compose sudo ly kitty hyprland waybar hyprpaper otf-font-awesome ttf-arimo-nerd noto-fonts base-devel pipewire pipewire-pulse pipewire-media-session bluez bluez-utils
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
yay -S visual-studio-code-bin

systemctl enable NetworkManager
systemctl enable ly
systemctl enable docker

echo %wheel ALL=(ALL) ALL >> /etc/sudoers
useradd -m anton -G wheel,docker -u 1000

# grub-install /dev/sda --efi-dir=/boot/
# grub-mkconfig -o /boot/grub/grub.cfg
# passwd
