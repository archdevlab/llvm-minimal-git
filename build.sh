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

cd spirv-headers-git && makepkg -si --noconfirm && cd ${source}

cd spirv-tools-git && makepkg -si --noconfirm && cd ${source}

cd llvm-minimal-git && makepkg -si --noconfirm && cd ${source}

cd comipler-rt-minimal-git && makepkg -si --noconfirm && cd ${source}

cd clang-minimal-git && makepkg -si --noconfirm && cd ${source}

cd libclc-minimal-git && makepkg -si --noconfirm && cd ${source}

cd lib32-llvm-minimal-git && makepkg -si --noconfirm && cd ${source}

cd mesa-git && makepkg -si --noconfirm && cd ${source}

cd lib32-mesa-git && makepkg -si --noconfirm && cd ${source}

# make a copy of every pkg in package/ dir

mkdir package

cp -v */*.pkg.tar.zst package/

# clean build dir

rm -rf */src/
rm -rf */pkg/
