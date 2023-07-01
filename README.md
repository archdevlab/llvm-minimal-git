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

### LLVM

- 17.0.0

- commit: 4a5b5bf318a858e07d1916e798adc2a1aebd56d3

### SPIRV-LLVM-Translator

- 17.0.0

- commit : e4dfa92a3b1bd57ebfdcfeed4d48dfe260387032

### SPIRV-Headers

- 1.5.4.raytracing.fixed

- commit : 8e2ad27488ed2f87c068c01a8f5e8979f7086405

### SPIRV-Tools

- 2023.1

- commit : 93c13345e176f3f8bdb4b07e59c5e3365b3dbf44

### glslang

- 12.1.0

- commit : a6662c53ced629a9d94611276743cbcde896b6af

### Directx-Headers

- 1.610.0

- commit : f2fbc5c353e0c452ae0861b816f759c6cbe613da


### libdrm

- 2.4.115

- commit : 98e1db501173303e58ef6a1def94ab7a2d84afc1


### libglvnd

- 1.6.0

- commit : 179d7278d7485ceea2d440807be9d677d32aedc4

### Mesa

- 23.2.0

- commit : ee69c56c8ca99b678258c06748c47cd1d58c6a66

# Build

    git clone https://github.com/blacksky3/llvm-minimal-git.git
    cd llvm-git
    ./build.sh

### After succeful build

After a succeful build of the toolchain you'll need to recompile mesa package, because mesa and llvm are closely tied together. Everytime llvm changes/updates, mesa needs to be rebuilt.

    cd mesa/all/mesa-git
    makepkg -si

    cd mesa/all/lib32-mesa-git
    makepkg -si

# Prebuild package

Prebuild package are available at https://repo.blacksky3.com/x86_64/llvm-minimal-git

You can add this repo to your pacman.conf

    [llvm-minimal-git]
    SigLevel = Optional TrustAll
    Server = https://repo.blacksky3.com/$arch/$repo

    sudo pacman -S llvm-minimal-git clang-minimal-git llvm-libs-minimal-git clang-libs-minimal-git spirv-llvm-translator-minimal-git libclc-minimal-git lib32-llvm-minimal-git lib32-clang-minimal-git lib32-llvm-libs-minimal-git lib32-clang-libs-minimal-git spirv-headers-git spirv-tools-git glslang-git directx-headers-git libdrm-git lib32-libdrm-git libglvnd-git lib32-libglvnd-git vulkan-mesa-layers-git opencl-mesa-git vulkan-intel-git vulkan-radeon-git vulkan-swrast-git vulkan-virtio-git libva-mesa-driver-git mesa-vdpau-git vulkan-imagination-git mesa-git lib32-vulkan-mesa-layers-git lib32-vulkan-intel-git lib32-vulkan-radeon-git lib32-vulkan-virtio-git lib32-libva-mesa-driver-git lib32-mesa-vdpau-git lib32-vulkan-swrast-git lib32-vulkan-imagination-git lib32-mesa-git

# Donation

BTC : bc1quz6zcjjy769cn9fd42r89hfh9unr4u2w4sfxer

ETH : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476

DAI : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476

LINK : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476
