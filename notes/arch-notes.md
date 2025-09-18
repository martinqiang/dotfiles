# Notes

## Superuser
`su`

## Wifi
`systemctl start iwd` - Make sure IWD is started
`iwctl`
`station wlan0 connect [name]`
`systemctl start dhcpcd`
`ping google.com`

## Update time
`timedatectl set-ntp true`

## Installation of packages using PACMAN
`pacman -S [package]`

## Updating pacman
`pacman -Syu`


## Shutting down
`shutdown now`

## Accessing drives and partitions
List drives and partitions
`fdisk -l`
`parted -l`

`mount /dev/sdaX /mnt`

`umount /mnt`

## Mounting windows:
`mount /t ntfs /dev/sdaX /mnt`

# Yay

`yay`

# Identify key presses and keycodes

`xev`
