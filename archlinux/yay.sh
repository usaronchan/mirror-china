
# 国内直接安装二进制可执行文件即可
cd ~
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si
