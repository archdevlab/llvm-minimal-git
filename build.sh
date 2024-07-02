#Maintainer: archdevlab <https://github.com/archdevlab>

#!/usr/bin/bash

source=$(pwd)

echo "${source}"

# build

# remove the .git dir. Sometimes it can create conflicts when making package version
rm -rf .git

cd spirv/spirv-headers-git/ && makepkg -si --noconfirm && cd ${source}

cd spirv/spirv-tools-git/ && makepkg -si --noconfirm && cd ${source}

cd spirv/lib32-spirv-tools-git/ && makepkg -si --noconfirm && cd ${source}

cd glslang-git/ && makepkg -si --noconfirm && cd ${source}

cd llvm-sep/llvm-git/ && makepkg -si --noconfirm && cd ${source}

cd llvm-sep/lld-git/ && makepkg -si --noconfirm && cd ${source}

cd llvm-sep/compiler-rt-git/ && makepkg -si --noconfirm && cd ${source}

cd llvm-sep/clang-git/ && makepkg -si --noconfirm && cd ${source}

cd llvm-sep/lldb-git/ && makepkg -si --noconfirm && cd ${source}

cd llvm-sep/spirv-llvm-translator-git/ && makepkg -si --noconfirm && cd ${source}

cd llvm-sep/libclc-git/ && makepkg -si --noconfirm && cd ${source}

cd llvm-sep/lib32-llvm-git/ && makepkg -si --noconfirm && cd ${source}

cd llvm-sep/lib32-clang-git/ && makepkg -si --noconfirm && cd ${source}

cd llvm-sep/lib32-spirv-llvm-translator-git/ && makepkg -si --noconfirm && cd ${source}

cd directx-headers-git/ && makepkg -si --noconfirm && cd ${source}

cd libdrm/libdrm-git/ && makepkg -si --noconfirm && cd ${source}

cd libdrm/lib32-libdrm-git/ && makepkg -si --noconfirm && cd ${source}

cd libglvnd/libglvnd-git/ && makepkg -si --noconfirm && cd ${source}

cd libglvnd/lib32-libglvnd-git/ && makepkg -si --noconfirm && cd ${source}

cd mesa/mesa/ && makepkg -si --noconfirm && cd ${source}

cd mesa/lib32-mesa/ && makepkg -si --noconfirm && cd ${source}

# make a copy of every pkg in package/ dir

mkdir package

mv -v */*.pkg.tar.zst package/
mv -v */*/*.pkg.tar.zst package/

# clean

rm -rf */src
rm -rf */*/src
rm -rf */pkg
rm -rf */*/pkg
rm -rf */*/*SPIRV*
rm -rf */glslang
rm -rf */*/llvm-project
rm -rf */DirectX-Headers
rm -rf */*/drm
rm -rf */*/libglvnd
rm -rf */*/mesa
