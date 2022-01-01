echo "### Fedora DevBox Setup"

echo "### Update repositories"
dnf repolist

echo "### Install packages"
# Networking
packages=" net-tools iputils bind-utils wget "
# Utilities
packages=" tmux htop mc zip unzip "
# General Programming
packages+=" vim git "
# C\C++ Programming
packages+=" gcc-c++ "
dnf install -y $packages