#!/bin/bash
pacstrap -K /mnt base linux-lts linux-firmware pacman intel-ucode
genfstab -U /mnt >> /mnt/etc/fstab

# если проблемы с ключами использовать
# pacman-key --init
# pacman-key --refresh-keys
# pacman-key --populate archlinux
