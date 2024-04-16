![image](https://user-images.githubusercontent.com/68618182/188527035-385752e7-fbd3-4865-abda-fdba4a804d99.png)

![image](https://user-images.githubusercontent.com/68618182/213734198-0cf50021-1f02-4c80-9a48-6f20ad42ce04.png)

# llvm-minimal-git

LLVM toolchain packages for Archlinux. (git version) (No docs, no unittest, no test) (Less build time) Also included in this repo spirv-headers, spirv-tools, glslang, directx-headers, libdrm, libglvnd and mesa

### SPIRV-Headers and SPIRV-Tools

This repo contain spirv-headers-git and spirv-tools-git package. Why so? Because SPIRV-LLVM-Translator depends on it. Easier to have it in this repo and compile them at the same time of compiling LLVM.

### glslang

This repo contain glslang-git package. Why so? Because glslang depends on SPIRV-Headers and SPIRV-Tools. So it feel more natural to have this package in this repo.

### Directx-Headers

This repo contain directx-headers-git package. Why so? Because Mesa depends on it at build time. Mesa is the only package that depends on Directx-Headers at build time on Archlinux.

### libdrm

This repo contain libdrm-git and lib32-libdrm-git packages. Why so? Because Mesa depends on it at build time.

### libglvnd

This repo contain libglvnd-git and lib32-libglvnd-git packages. Why so? Because Mesa depends on it at build time.

### Mesa

Why Mesa's packages are not in a separate repo? Because mesa and llvm are closely tied together, everytime llvm changes/updates, mesa needs to be rebuilt. Another reason is that, everytimes glslang version change, archlinux recompile mesa against glslang new version, so it feel more natural to have this package in this repo. If you want to just compile Mesa's packages and not interested about LLVM, SPIRV and glslang package you can go ahead, no problem.

#### 20/01/2023

mesa-git and lib32-mesa-git are not in minimal format yet. Will I do a minimal fortmat? Maybe.

# Version

### SPIRV-Headers

- 1.5.5

- commit : 8b246ff75c6615ba4532fe4fde20f1be090c3764

### SPIRV-Tools

- 2023.6

- commit : f20663ca7fec48fdc88e4c4d7c5889f8b4cc5664

### glslang

- 14.1.0

- commit : 05ba15169ea4b1471e18305786f12526600a7810

### LLVM/LLD/COMPILRT-RT/CLANG/LIBCLC

- 19.0.0

- commit: 7c460c6205eedaa24f77d5de272dfd94dc3e9a38

### SPIRV-LLVM-Translator

- 19.0.0

- commit : e0a1508be91faffe433038fd5e50cc87d85d02d6

### Directx-Headers

- 1.613.1

- commit : aafb798404373bec7875e6a36a8d9635642587c1

### libdrm

- 2.4.120

- commit : c8f327ce9cb504a6c2185487d576be3d5254556a


### libglvnd

- 1.7.0

- commit : 908086d22dc307d17d0eb35c522c35fd190718cc

### Mesa

- 24.1.0_devel

- commit : 7bd1d4848cf755257644e9b79289a364db659026

# Build

    git clone https://github.com/archdevlab/llvm-minimal-git.git
    cd llvm-git
    ./build.sh

### After succeful build

After a succeful build of the toolchain you'll need to recompile mesa package, because mesa and llvm are closely tied together. Everytime llvm changes/updates, mesa needs to be rebuilt.

    cd mesa/all/mesa-git
    makepkg -si

    cd mesa/all/lib32-mesa-git
    makepkg -si

# Prebuild package

Prebuild package are available at https://repo.archdevlab.org/x86_64/llvm-minimal-git

You can add this repo to your pacman.conf

    [llvm-minimal-git]
    SigLevel = Optional TrustAll
    Server = https://repo.archdevlab.org/$arch/$repo

# Donation

BTC : bc1quz6zcjjy769cn9fd42r89hfh9unr4u2w4sfxer

ETH : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476

DAI : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476

LINK : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476
