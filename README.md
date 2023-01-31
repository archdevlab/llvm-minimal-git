![image](https://user-images.githubusercontent.com/68618182/188527035-385752e7-fbd3-4865-abda-fdba4a804d99.png)

![image](https://user-images.githubusercontent.com/68618182/213734198-0cf50021-1f02-4c80-9a48-6f20ad42ce04.png)

![image](https://user-images.githubusercontent.com/68618182/213734962-c8308c3b-a5da-4c82-a404-010beae93ed6.png)

# llvm-minimal-git

LLVM toolchain packages for Archlinux. (git version) (No docs, no unittest, no test) (Less build time) Also included in this repo spirv-headers, spirv-tools, glslang and mesa (mesa,lib32-mesa)

### SPIRV-Headers and SPIRV-Tools

This repo contain spirv-headers-git and spirv-tools-git package. Why so? Because SPIRV-LLVM-Translator depends on it. Easier to have it in this repo and compile them at the same time of compiling LLVM.

### glslang

This repo contain glslang-git package. Why so? Because glslang depends on SPIRV-Headers and SPIRV-Tools. So it feel more natural to have this package in this repo.

### Mesa

Why Mesa's packages are not in a separate repo? Because mesa and llvm are closely tied together, everytime llvm changes/updates, mesa needs to be rebuilt. Another reason is that, everytimes glslang version change, archlinux recompile mesa against glslang new version, so it feel more natural to have this package in this repo. If you want to just compile Mesa's packages and not interested about LLVM, SPIRV and glslang package you can go ahead, no problem.

#### 20/01/2023

mesa-git and lib32-mesa-git are not in minimal format yet. Will I do a minimal fortmat? Maybe.

# Version

### LLVM

- 16.0.0

- commit: 49d47c4d2f280d15d1de94c53b72b6ab3c127b35

### SPIRV-LLVM-Translator

- 16.0.0

- commit : 3ff87c3d67b82074f31db1fd6df1677ef7a317b0

### SPIRV-Headers

- 1.5.4.raytracing.fixed

- commit : aa331ab0ffcb3a67021caa1a0c1c9017712f2f31

### SPIRV-Tools

- 2023.1

- commit : cdc4e528f3dbe7e38fa3438544918757b098235c

### glslang

- 12.0.0

- commit : 0d3211ff7bb5b0fbad7866f5a21bdcd81886f4be

### Mesa

- 23.1.0

- commit : d59683ab8986f977cc91d09fc251f6ed971f0e41

# Build

    git clone https://github.com/blacksky3/llvm-minimal-git.git
    cd llvm-git
    ./build.sh

### After succeful build

After a succeful build of the toolchain you'll need to recompile mesa package, because mesa and llvm are closely tied together. Everytime llvm changes/updates, mesa needs to be rebuilt.

    cd mesa/mesa-git
    makepkg -si

    cd mesa/lib32-mesa-git
    makepkg -si

# Prebuild package

Prebuild package are available at https://repo.blacksky3.com/x86_64/llvm-minimal-git

You can add this repo to your pacman.conf

    [llvm-minimal-git]
    SigLevel = Optional TrustAll
    Server = https://repo.blacksky3.com/$arch/$repo

    sudo pacman -S llvm-mininal-git llvm-libs-minimal-git lib32-llvm-miniaml-git lib32-llvm-libs-minimal-git libclc-minimal-git spirv-llvm-translator-minimal-git spirv-headers-git spirv-tools-git glslang-git

### Reinstall normal LLVM Toolchain

    sudo pacman -S llvm llvm-libs lib32-llvm lib32-llvm-libs clang lib32-clang compiler-rt libclc spirv-llvm-translator spirv-headers spirv-tools glslang

### LLVM14

Prebuild package are available at https://repo.blacksky3.com/x86_64/llvm14-minimal

You can add this repo to your pacman.conf

    [llvm-minimal-git]
    SigLevel = Optional TrustAll
    Server = https://repo.blacksky3.com/$arch/$repo

    sudo pacman -S llvm14-minimal llvm14-libs-minimal libclc14-minimal lib32-llvm14-minimal lib32-llvm14-libs-minimal

# Donation

BTC : bc1quz6zcjjy769cn9fd42r89hfh9unr4u2w4sfxer

ETH : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476

DAI : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476

LINK : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476
