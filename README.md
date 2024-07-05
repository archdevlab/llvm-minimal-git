![image](https://user-images.githubusercontent.com/68618182/188527035-385752e7-fbd3-4865-abda-fdba4a804d99.png)

![image](https://user-images.githubusercontent.com/68618182/213734198-0cf50021-1f02-4c80-9a48-6f20ad42ce04.png)

# llvm-mesa

LLVM toolchain and mesa packages for Archlinux. (git version) (No docs, no unittest, no test) (Less build time) Also included in this repo spirv-headers, spirv-tools, glslang, directx-headers, libdrm and libglvnd

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

# Version

### SPIRV-Headers

- 1.5.5

- commit : 2acb319af38d43be3ea76bfabf3998e5281d8d12

### SPIRV-Tools

- 2024.1

- commit : ca004da9f9c7fa7ed536709823bd604fab3cd7da

### glslang

- 14.3.0

- commit : ea087ff90d03947307cfe52500b74551aa35d34d

### LLVM/LLD/COMPILRT-RT/CLANG/LLDB/LIBCLC

- 19.0.0

- commit: 6b707a8cc143f094b02393f4faf89025c64520bb

### SPIRV-LLVM-Translator

- 19.0.0

- commit : f7c340c39e9f762ca7223242f2c6bc1476daab39

### Directx-Headers

- 1.613.1

- commit : 7fc7184d25f76f0797438d404733a76251396c83

### libdrm

- 2.4.122

- commit : ad78bb591d02162d3b90890aa4d0a238b2a37cde


### libglvnd

- 1.7.0

- commit : 606f6627cf481ee6dcb32387edc010c502cdf38b

### Mesa

- 24.2.0_devel

- commit : f9efedb1a1acbaa70c603d5ef57a83180a8f5782

# Build

    git clone https://github.com/archdevlab/llvm-minimal-git.git
    cd llvm-mesa
    ./build.sh

# Prebuild package

Prebuild package are available at https://repo.archdevlab.org/x86_64/llvm-mesa

You can add this repo to your pacman.conf

    [llvm-mesa]
    SigLevel = Optional TrustAll
    Server = https://repo.archdevlab.org/$arch/$repo

# Donation

BTC : bc1quz6zcjjy769cn9fd42r89hfh9unr4u2w4sfxer

ETH : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476

DAI : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476

LINK : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476
