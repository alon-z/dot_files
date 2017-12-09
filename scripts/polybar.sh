#!/bin/bash
sudo dnf install -y cmake @development-tools gcc-c++
sudo dnf install -y cairo-devel xcb-proto xcb-util-devel xcb-util-wm-devel xcb-util-image-devel 

# Optional module dependencies #
################################

# i3
sudo dnf -y install i3-ipc jsoncpp-devel

# Volume
sudo dnf -y install alsa-lib-devel

# Network
sudo dnf -y install wireless-tools-devel

cd ~
git clone --recursive https://github.com/jaagr/polybar
mkdir polybar/build
cd polybar/build
sudo cmake -DCMAKE_C_COMPILER="clang" -DCMAKE_CXX_COMPILER="clang++" ..
sudo make install
