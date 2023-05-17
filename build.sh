# _     _            _        _          _____
#| |__ | | __ _  ___| | _____| | ___   _|___ /
#| '_ \| |/ _` |/ __| |/ / __| |/ / | | | |_ \
#| |_) | | (_| | (__|   <\__ \   <| |_| |___) |
#|_.__/|_|\__,_|\___|_|\_\___/_|\_\\__, |____/
#                                  |___/

#Maintainer: blacksky3 <https://github.com/blacksky3>

#!/usr/bin/bash

source=$(pwd)

echo "${source}"

# build

cd spirv/spirv-headers-git/ && makepkg -si --noconfirm && cd ${source}

cd spirv/spirv-tools-git/ && makepkg -si --noconfirm && cd ${source}

cd glslang/glslang-git/ && makepkg -si --noconfirm && cd ${source}

cd llvm-minimal-git/llvm-minimal-git/ && makepkg -si --noconfirm && cd ${source}

cd llvm-minimal-git/libclc-minimal-git/ && makepkg -si --noconfirm && cd ${source}

cd llvm-minimal-git/lib32-llvm-minimal-git/ && makepkg -si --noconfirm && cd ${source}

cd directx-headers/directx-headers-git/ && makepkg -si --noconfirm && cd ${source}

cd mesa/mesa-git/ && makepkg -si --noconfirm && cd ${source}

cd mesa/lib32-mesa-git/ && makepkg -si --noconfirm && cd ${source}

# make a copy of every pkg in package/ dir

mkdir package

cp -v */*/*.pkg.tar.zst package/
cp -v */*/*/*.pkg.tar.zst package/

# clean build dir

rm -rf */*/src/
rm -rf */*/pkg/
rm -rf */*/*/src/
rm -rf */*/*/pkg/
