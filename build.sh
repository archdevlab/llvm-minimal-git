#Maintainer: archdevlab <https://github.com/archdevlab>

#!/usr/bin/bash

source=$(pwd)

echo "${source}"

# build

cd spirv/spirv-headers-git/ && makepkg -si --noconfirm && cd ${source}

cd spirv/spirv-tools-git/ && makepkg -si --noconfirm && cd ${source}

cd spirv/lib32-spirv-tools-git/ && makepkg -si --noconfirm && cd ${source}

cd glslang-git/ && makepkg -si --noconfirm && cd ${source}

cd llvm/llvm-minimal-git/ && makepkg -si --noconfirm && cd ${source}

cd llvm/spirv-llvm-translator-minimal-git/ && makepkg -si --noconfirm && cd ${source}

cd llvm/libclc-minimal-git/ && makepkg -si --noconfirm && cd ${source}

cd lib32-llvm/lib32-llvm-minimal-git/ && makepkg -si --noconfirm && cd ${source}

cd lib32-llvm/lib32-spirv-llvm-translator-minimal-git/ && makepkg -si --noconfirm && cd ${source}

cd directx-headers-git/ && makepkg -si --noconfirm && cd ${source}

cd libdrm/libdrm-git/ && makepkg -si --noconfirm && cd ${source}

cd libdrm/lib32-libdrm-git/ && makepkg -si --noconfirm && cd ${source}

cd libglvnd/libglvnd-git/ && makepkg -si --noconfirm && cd ${source}

cd libglvnd/lib32-libglvnd-git/ && makepkg -si --noconfirm && cd ${source}

cd mesa/mesa/ && makepkg -si --noconfirm && cd ${source}

cd mesa/lib32-mesa/ && makepkg -si --noconfirm && cd ${source}

# make a copy of every pkg in package/ dir

mkdir package

cp -v */*/*.pkg.tar.zst package/
