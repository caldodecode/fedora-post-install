### RPM FUSION - REPOSITORIES
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

### RPM FUSION - INSTALL NVIDIA DRIVERS
sudo dnf update -y                           # and reboot if you are not on the latest kernel
sudo dnf install -y akmod-nvidia             # rhel/centos users can use kmod-nvidia instead
sudo dnf install -y xorg-x11-drv-nvidia-cuda # optional for cuda/nvdec/nvenc support