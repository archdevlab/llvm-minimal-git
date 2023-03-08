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

- 17.0.0

- commit: e0ecc322ec840f375863bd56c589cdc03b1483e6

### SPIRV-LLVM-Translator

- 17.0.0

- commit : 7906823ab821ad19f5d5aa9235e726dc36331784

### SPIRV-Headers

- 1.5.4.raytracing.fixed

- commit : 1feaf4414eb2b353764d01d88f8aa4bcc67b60db

### SPIRV-Tools

- 2023.1

- commit : 42267721e1d67ccc9fada23899357bb9b25ace23

### glslang

- 12.0.0

- commit : 6d41bb9c557c5a0eec61ffba1f775dc5f717a8f7

### Mesa

- 23.1.0

- commit : efcb63938c195b765c530e6e6eff1d712bfc6e74

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

    sudo pacman -S llvm-mininal-git llvm-libs-minimal-git lib32-llvm-miniaml-git lib32-llvm-libs-minimal-git libclc-minimal-git spirv-llvm-translator-minimal-git spirv-headers-git spirv-tools-git glslang-git

### Reinstall normal LLVM Toolchain

    sudo pacman -S llvm llvm-libs lib32-llvm lib32-llvm-libs clang lib32-clang compiler-rt libclc spirv-llvm-translator spirv-headers spirv-tools glslang

### LLVM14

Prebuild package are available at https://repo.blacksky3.com/x86_64/llvm14-minimal

You can add this repo to your pacman.conf

    [llvm14-minimal]
    SigLevel = Optional TrustAll
    Server = https://repo.blacksky3.com/$arch/$repo

    sudo pacman -S llvm14-minimal llvm14-libs-minimal libclc14-minimal lib32-llvm14-minimal lib32-llvm14-libs-minimal

### LLVM13

Prebuild package are available at https://repo.blacksky3.com/x86_64/llvm13-minimal

You can add this repo to your pacman.conf

    [llvm13-minimal]
    SigLevel = Optional TrustAll
    Server = https://repo.blacksky3.com/$arch/$repo

    sudo pacman -S llvm13-minimal llvm13-libs-minimal libclc13-minimal lib32-llvm13-minimal lib32-llvm13-libs-minimal

### LLVM12

Prebuild package are available at https://repo.blacksky3.com/x86_64/llvm12-minimal

You can add this repo to your pacman.conf

    [llvm12-minimal]
    SigLevel = Optional TrustAll
    Server = https://repo.blacksky3.com/$arch/$repo

    sudo pacman -S llvm12-minimal llvm12-libs-minimal libclc12-minimal lib32-llvm12-minimal lib32-llvm12-libs-minimal
 
### LLVM11

Prebuild package are available at https://repo.blacksky3.com/x86_64/llvm11-minimal

You can add this repo to your pacman.conf

    [llvm11-minimal]
    SigLevel = Optional TrustAll
    Server = https://repo.blacksky3.com/$arch/$repo

    sudo pacman -S llvm11-minimal llvm11-libs-minimal libclc11-minimal lib32-llvm11-minimal lib32-llvm11-libs-minimal
    
### LLVM10

Prebuild package are available at https://repo.blacksky3.com/x86_64/llvm10-minimal

You can add this repo to your pacman.conf

    [llvm10-minimal]
    SigLevel = Optional TrustAll
    Server = https://repo.blacksky3.com/$arch/$repo

    sudo pacman -S llvm10-minimal llvm10-libs-minimal libclc10-minimal lib32-llvm10-minimal lib32-llvm10-libs-minimal
    
# Donation

BTC : bc1quz6zcjjy769cn9fd42r89hfh9unr4u2w4sfxer

ETH : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476

DAI : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476

LINK : 0xF8cBcA16f4eeDfF4a07D173B7fF53906a87b0476
