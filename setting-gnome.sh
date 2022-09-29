### INSTALL GNOME ###
sudo dnf install -y \
 gdm \
 abattis-cantarell-fonts \
 gnome-themes-extra \
 gnome-shell \
 gnome-terminal \
 gnome-tweaks \
 nautilus \
 dbus-x11 

### SET DEFAULT TARGET AS GRAPHICAL ###
sudo systemctl set-default graphical.target 

### SET DARK THEME GTK4+ ###
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

### SET DARK THEME GTK3 (Legacy Applications) ###
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"

### SET ALT+TAB TO SWITCH WINDOWS
gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"

### DOWNLOAD BACKGROUND ###
sudo curl -L --output wallpaper.jpg https://lh3.googleusercontent.com/drive-viewer/AJc5JmS6t5f1Jb8Jd5Bpi2C7F6lb4GPMMJ8QCLBnddA5prHm3nMuSsMq5OGDzsgbEPkydEgzaXrJ378=w1920-h1005

### SET BACKGROUND ###
gsettings set org.gnome.desktop.background picture-uri-dark  file://$(pwd)/wallpaper.jpg
gsettings set org.gnome.desktop.background picture-uri       file://$(pwd)/wallpaper.jpg