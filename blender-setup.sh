#! /bin/bash

sudo apt-get update
sudo apt-get upgrade -y
#apt-get install -y blender
wget http://www.eofw.org/bench/test.blend

# some utilities to make testing easier
sudo apt-get install -y unzip htop

# blender 2.73 needs these installed, too
sudo apt-get install -y libglu1-mesa
sudo apt-get install -y libxi-dev

wget http://download.blender.org/release/Blender2.73/blender-2.73-linux-glibc211-x86_64.tar.bz2
tar -xvjpf blender-2.73-linux-glibc211-x86_64.tar.bz2
cd blender-2.73-linux-glibc211-x86_64
./blender --version

#blender -noaudio --background test.blend --render-output //test --render-format PNG --render-frame 1 --threads 0

