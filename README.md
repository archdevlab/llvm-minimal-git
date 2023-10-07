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

- 1.3.261.0

- commit : e867c06631767a2d96424cbec530f9ee5e78180f

### SPIRV-Tools

- 2023.2

- commit : 933db564ca660477b360480b8a1d7589d7c6694e

### glslang

- 13.0.0

- commit : 5ff0c048b7242e173357bf28024cdee79edbcea8

### LLVM

- 18.0.0

- commit: 78502251f4019953e462bb8bc886381589e9d257

### SPIRV-LLVM-Translator

- 18.0.0

- commit : deb6ee9ec4c28382ec1ff7827b8fa454b7a79b6a

### Directx-Headers

- 1.610.2

- commit : 3a57ee119e546006914d41470fbdabbc735d80ec


### libdrm

- 2.4.116

- commit : 6abc164052e4902f67213baa279d743cf46227d4


### libglvnd

- 1.7.0

- commit : 62176c235ceca2c20f30777f5bc4195bd70391c4

### Mesa

- 23.3.0_devel

- commit : 348eee9c974ee24dee2362b8a2b7d30d6db69091

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

Prebuild package are available at https://repo.ardevlab.xyz/x86_64/llvm-minimal-git

You can add this repo to your pacman.conf

    [llvm-minimal-git]
    SigLevel = Optional TrustAll
    Server = https://repo.ardevlab.xyz/$arch/$repo

    sudo pacman -S llvm-minimal-git clang-minimal-git llvm-libs-minimal-git clang-libs-minimal-git spirv-llvm-translator-minimal-git libclc-minimal-git lib32-llvm-minimal-git lib32-clang-minimal-git lib32-llvm-libs-minimal-git lib32-clang-libs-minimal-git spirv-headers-git spirv-tools-git glslang-git directx-headers-git libdrm-git lib32-libdrm-git libglvnd-git lib32-libglvnd-git vulkan-mesa-layers-git opencl-mesa-git vulkan-intel-git vulkan-radeon-git vulkan-swrast-git vulkan-virtio-git libva-mesa-driver-git mesa-vdpau-git vulkan-imagination-git mesa-git lib32-vulkan-mesa-layers-git lib32-vulkan-intel-git lib32-vulkan-radeon-git lib32-vulkan-virtio-git lib32-libva-mesa-driver-git lib32-mesa-vdpau-git lib32-vulkan-swrast-git lib32-vulkan-imagination-git lib32-mesa-git

# Donation

BTC : bc1quz6zcjjy769cn9fd42r89hfh9unr4u2w4sfxer

ETH : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476

DAI : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476

LINK : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476
