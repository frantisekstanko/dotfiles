# dotfiles

## Installation

### Manual install on your own OS

```
git clone https://github.com/frantisekstanko/dotfiles
./dotfiles/create_home_repo
```

### Clean install (recommended)

1. Install **openSUSE Tumbleweed**:
  - offline image: https://download.opensuse.org/tumbleweed/iso/openSUSE-Tumbleweed-DVD-x86_64-Current.iso
  - network image: https://download.opensuse.org/tumbleweed/iso/openSUSE-Tumbleweed-NET-x86_64-Current.iso
 
2. During installation, choose **Server** (no desktop environment).

3. After installation, execute:

```
$ bash <(curl -s https://raw.githubusercontent.com/frantisekstanko/dotfiles/main/installer)
```

4. Follow on-screen instructions.

## How to use

This project uses [xinit](https://wiki.archlinux.org/title/Xinit) to boot into desktop. Therefore, you will see no login manager after boot. Simply type your login and password in the TTY and then just execute:

```
$ x
```

or

```
$ startx
```

## Desktop

![screenshot](https://raw.githubusercontent.com/frantisekstanko/dotfiles/main/images/screenshot1.png)
