### INSTALL GNOME ###
dnf install -y \
 gdm \
 google-noto-fonts-common \
 gnome-themes-extra \
 gnome-shell \
 gnome-terminal \
 gnome-tweaks \
 nautilus \
 dbus-x11 

### SET DEFAULT TARGET AS GRAPHICAL ###
systemctl set-default graphical.target 

###
reboot