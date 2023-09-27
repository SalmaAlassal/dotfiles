# Arch Linux Installation Guide

## WiFi Connection

I use `iwctl` to connect to WiFi. It is a command line tool for connecting to WiFi networks.

```
$ iwctl
$ device list
$ station wlan0 get-networks
$ station wlan0 connect wifiName
$ ping www.google.com
```

## Partitioning

> To list the available partitions and disks: `lsblk`

I use `cfdisk` to partition my disk. I have a 250 SSD, so I will use the entire disk for Arch Linux.

```
$ cfdisk /dev/nvm30n1
```

I create 3 partitions:

1. EFI System Partition (512MB) `/dev/nvme0n1p1`
2. Swap Partition (2GB) `/dev/nvme0n1p2`
3. Root Partition (Rest of the disk) `/dev/nvme0n1p3`

I format the partitions using the following commands:

```
$ mkfs.fat -F32 /dev/nvme0n1p1 
$ mkfs.ext4 /dev/nvme0n1p3
$ mkswap /dev/nvme0n1p2
$ swapon /dev/nvme0n1p2
```

This will format the root partition as ext4, the swap partition as Linux swap, and the EFI system partition as FAT32. It will also activate the swap partition.

## Mount the Filesystems

Mount the root partition using the following command:

```
mount /dev/nvme0n1p3 /mnt
```

Creating necessary directories:

```
$ mkdir /mnt/boot
$ mkdir /mnt/boot/efi
```

Mounting the EFI system partition:

```
$ mount /dev/nvme0n1p1 /mnt/boot/efi
```

## Install the Base System

Install the base system and essential packages using the `pacstrap`.

```
pacstrap /mnt base linux linux-firmware sudo vim git
```

## Configure the System

### Fstab

Generate an `fstab` file to define how disk partitions, block devices, or remote filesystems should be mounted into the filesystem.

```
$ genfstab -U -p /mnt >> /mnt/etc/fstab
```

### Chroot

Change root into the new system that we just installed.

```
$ arch-chroot /mnt  /bin/bash
```


### Locale

Uncomment the `en_US.UTF-8 UTF-8` line in `/etc/locale.gen` and generate the locale.

```
$ locale-gen
```

Create the `locale.conf` file and set the `LANG` variable accordingly.

```
$ echo "LANG=en_US.UTF-8" > /etc/locale.conf
```

### Time Zone

Set the time zone.

```
$ ln -sf /usr/share/zoneinfo/Africa/City /etc/localtime
```

### Set Local Time

To set the time for the system, run this command:

```
$ hwclock --systohc
```

And check the time:

```
$ date
```

### Hostname

Create the `hostname` file and set the hostname.

```
$ echo "arch" > /etc/hostname
```

You also need to add this name to the `/etc/hosts` file.

```
$ vim /etc/hosts
```

and add the following lines:

```
127.0.0.1        localhost
::1              localhost
127.0.1.1        arch
```

## Set the Root Password

```
$ passwd
```

## Install NetworkManager

Install the NetworkManager package.

```
$ pacman -S networkmanager
```

Enable the NetworkManager service.

```
$ systemctl enable NetworkManager
```

Now the NetworkManager service will start automatically at boot and you can use the `nmcli` command to connect to WiFi networks.



## Install the Bootloader

Install the `grub` and `efibootmgr` packages.

```
$ pacman -S grub efibootmgr
```

Using those packages, we can install the bootloader.

```
$ grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
```

Generate the `grub` configuration file.

```
$ grub-mkconfig -o /boot/grub/grub.cfg
```

<details>
  <summary> <b>Enable os-prober</b></summary>
  To enable <b> os-prober </b> to detect other operating systems,and add them to the boot menu :

  <ol>
    <li> Open the GRUB configuration file: <code> sudo vim /etc/default/grub </code> </li>
    <li> Uncomment the <b> <code> GRUB_DISABLE_OS_PROBER=false </code> </b> line in <b> /etc/default/grub </b> </li>
    <li> Regenerate the <b> grub </b> configuration file : <code> sudo grub-mkconfig -o /boot/grub/grub.cfg </code> </li>
  </ol>

  After regenerating the configuration file, the "os-prober" will be enabled in GRUB. It will now detect other bootable partitions during the boot process and add them to the boot menu.
</details>

## Install X Window System

To make the new system usable, install X Window System

```
pacman -S xorg xorg-xinit xorg-server
```

Apply the default settings.

## Install a Desktop Environment

### GNOME

```
$ pacman -S gnome
```

## Install a Display Manager

### LightDM

Install the `lightdm` package.

```
$ pacman -S lightdm lightdm-gtk-greeter
```

Enable and start the `lightdm` service.

```
$ systemctl enable lightdm.service
$ systemctl start lightdm.service
```

## Add a New User

Create a new user.

```
$ useradd -m -G wheel -s /bin/bash username
```

Set the password for the new user.

```
$ passwd username
```

Give the new user sudo privileges. 

Open the `/etc/sudoers` file using the `visudo` command.

```
$ EDITOR=vim visudo
```

and uncomment the following line:

```
%wheel ALL=(ALL) ALL
```

## Reboot

---------------------------------------------

### Recommended Video to Watch

[Arch Linux Installation Guide](https://youtu.be/UiYS8xWFXLY)