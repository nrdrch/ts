# Arch Linux Time Saver
## Save time on post installation configuration of Arch Linux i3-gaps
### have a decent looking base ready to be build upon
```
mkdir ~/Downloads && cd ~/Downloads && git clone https://github.com/nrdrch/ts.git && cd ts && sudo chmod +x ts.sh
```
#### (run without sudo)
```
./i3ts.sh
```

# what the different options will do: 
## i3base: 
#### installs: 
polybar atom picom feh man-db alacritty btop neofetch base-devel fish rofi yay ly sublime-text-4
#### sets: 
fish as your default shell 
#### sets:
ly as your log in screen
#### sets:
a decents wallpaper
#### configures: 
picom, i3, alacritty & polybar
## fsdeps: 
#### installs filesystem drivers:
ntfs-3g udisks2 btrfs-progs exfatprogs f2fs-tools dosfstools jfsutils cryptsetup lvm2 util-linux nilfs-utils xfsprogs
## more apps: 
#### installs: 
didyoumean-bin bitwarden-git i3-swallow-git ksnip-git
## fish alias:
#### sets:
various fish alias (see fishalias.sh)
#### notice:
some functions only work with firefox, atom & i3-swallow-git installed (mostly included in more apps
## grub config:)
#### installs:
os-prober
grub-customizer
## Quit:
#### exits the utility
