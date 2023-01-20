![image](https://user-images.githubusercontent.com/68618182/188527035-385752e7-fbd3-4865-abda-fdba4a804d99.png)

![image](https://user-images.githubusercontent.com/68618182/213734198-0cf50021-1f02-4c80-9a48-6f20ad42ce04.png)

![image](https://user-images.githubusercontent.com/68618182/213734962-c8308c3b-a5da-4c82-a404-010beae93ed6.png)

# llvm-minimal-git

LLVM toolchain packages for Archlinux. (git version) (No docs, no unittest, no test) (Less build time) Also included in this repo spirv-headers, spirv-tools and mesa (mesa,lib32-mesa)

### SPIRV-Headers and SPIRV-Tools

This repo contain spirv-headers-git and spirv-tools-git package. Why so? Because SPIRV-LLVM-Translator depends on it.

### 20/01/20233

mesa-git and lib32-mesa-git are not in minimal format yet. Please wait before adressing an issue

# Version

## LLVM

- 16.0.0

- commit: 3e4a6f57412c63bab3f386a2c8a044a88657bac1

## SPIRV-LLVM-Translator

- 16.0.0

- commit : 3ff87c3d67b82074f31db1fd6df1677ef7a317b0

## SPIRV-Headers

- 1.5.4.raytracing.fixed

- commit : aa331ab0ffcb3a67021caa1a0c1c9017712f2f31

## SPIRV-Tools

- 2023.1

-commit : cdc4e528f3dbe7e38fa3438544918757b098235c

## Mesa

- 23.1.0

- commit : 247c06d41997538e877619326d046f84887a48ab

# Build

    git clone https://github.com/blacksky3/llvm-minimal-git.git
    cd llvm-git
    ./build.sh

## After succeful build

After a succeful build of the toolchain you'll need to recompile mesa package, because mesa and llvm are closely tied together. Everytime llvm changes/updates, mesa needs to be rebuilt.

    cd mesa-git
    makepkg -si
    
    cd lib32-mesa-git
    makepkg -si

# Prebuild package

Prebuild package are available at https://repo.blacksky3.com/x86_64/llvm-minimal-git

You can add this repo to your pacman.conf

    [llvm-minimal-git]
    SigLevel = Optional TrustAll
    Server = https://repo.blacksky3.com/$arch/$repo

    sudo pacman -S llvm16-mininal-git llvm-libs-minimal-git lib32-llvm-miniaml-git lib32-llvm-libs-minimal-git clang-minimal-git lib32-clang-minimal-git compiler-rt-minimal-git libclc-minimal-git spirv-llvm-translator-minimal-git spirv-headers-git spirv-tools-git

    Optional, but you can install mesa-llvm16-git and lib32-mesa-llvm16-git that are compiled against llvm-git packages from this repo

    sudo pacman -S mesa-llvm16-git lib32-mesa-llvm16-git


# Reinstall normal LLVM Toolchain

    sudo pacman -S llvm llvm-libs lib32-llvm lib32-llvm-libs clang lib32-clang compiler-rt libclc spirv-llvm-translator spirv-headers spirv-tools

# Donation

BTC : bc1quz6zcjjy769cn9fd42r89hfh9unr4u2w4sfxer

ETH : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476

DAI : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476

LINK : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476
