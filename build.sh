# _     _            _        _          _____
#| |__ | | __ _  ___| | _____| | ___   _|___ /
#| '_ \| |/ _` |/ __| |/ / __| |/ / | | | |_ \
#| |_) | | (_| | (__|   <\__ \   <| |_| |___) |
#|_.__/|_|\__,_|\___|_|\_\___/_|\_\\__, |____/
#                                  |___/

#Maintainer: blacksky3 <https://github.com/blacksky3>

#!/usr/bin/bash

source=$(pwd)
llvmversion=16

echo "${source}"

# build

cd llvm${llvmversion}/llvm-git && makepkg -si --noconfirm && cd ${source}

cd llvm${llvmversion}/lld-git && makepkg -si --noconfirm && cd ${source}

cd llvm${llvmversion}/polly-git && makepkg -si --noconfirm && cd ${source}

cd llvm${llvmversion}/compiler-rt-git && makepkg -si --noconfirm && cd ${source}

cd llvm${llvmversion}/clang-git && makepkg -si --noconfirm && cd ${source}

cd llvm${llvmversion}/lldb-git && makepkg -si --noconfirm && cd ${source}

cd llvm${llvmversion}/spirv-llvm-translator-git --noconfirm && makepkg -si && cd ${source}

cd llvm${llvmversion}/libclc-git && makepkg -si --noconfirm && cd ${source}

cd llvm${llvmversion}/libc++-git && makepkg -si --noconfirm && cd ${source}

cd llvm${llvmversion}/openmp-git && makepkg -si --noconfirm && cd ${source}

cd llvm${llvmversion}/lib32-llvm-git && makepkg -si --noconfirm && cd ${source}

cd llvm${llvmversion}/lib32-clang-git && makepkg -si --noconfirm && cd ${source}

# make a copy of every pkg in package/ dir

mkdir package

cp -v llvm${llvmversion}/*/*.pkg.tar.zst package/

# clean build dir

rm -rf llvm${llvmversion}/*/src/
rm -rf llvm${llvmversion}/*/pkg/
