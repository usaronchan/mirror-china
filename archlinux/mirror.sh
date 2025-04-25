################################
## 获取实时镜像列表并对其排序 ##
################################

if pacman -Q pacman-contrib &> /dev/null; then
  echo '<pacman-contrib> is already installed.'
  echo 'Now check mirrors list...'
  # 从官方镜像列表中获取中国地区速度最快的9个镜像站点，并写入本机的镜像列表中
  curl -s "https://archlinux.org/mirrorlist/?country=CN&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 9 - > /etc/pacman.d/mirrorlist
  # 列出更新后的本地镜像列表
  echo '##########################################'
  echo '###### Updated Mirror List in China ######'
  cat /etc/pacman.d/mirrorlist
  echo '##########################################'
else
  echo '<pacman-contrib> is not installed. Please install pacman-contrib first.'
  echo '###>>> You can type the following command in terminal! <<<###'
  echo 'yes | sudo pacman -Syu pacman-contrib'
  exit 1
fi

