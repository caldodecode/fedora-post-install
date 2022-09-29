### INSTALL GNOME ###
dnf install -y \
 gdm \
 google-noto-fonts-common \
 gnome-themes-extra \
 gnome-shell \
 gnome-terminal \
 gnome-tweaks 
  
### SET DARK THEME GTK4+ ###
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

### SET DARK THEME GTK3- ###
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'

### DOWNLOAD BACKGROUND ###
curl -L --output wallpaper.jpg https://lh3.googleusercontent.com/drive-viewer/AJc5JmS6t5f1Jb8Jd5Bpi2C7F6lb4GPMMJ8QCLBnddA5prHm3nMuSsMq5OGDzsgbEPkydEgzaXrJ378=w1920-h1005

### SET BACKGROUND ###
gsettings set org.gnome.desktop.background picture-uri-dark  file://$(pwd)/wallpaper.jpg
gsettings set org.gnome.desktop.background picture-uri       file://$(pwd)/wallpaper.jpg

### SET DEFAULT TARGET AS GRAPHICAL ###
systemctl set-default graphical.target 