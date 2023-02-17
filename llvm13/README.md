# TODO

### Add symlink to /opt/llvm13/lib

One that is done (needed for llvm-spirv) (also needed for other application) (llvm14-libs-minimal)

    # Needed for llvm-spirv
    install -d "$pkgdir/usr/lib"
    ln -s /opt/llvm13/lib/libLLVM-13.so "$pkgdir"/usr/lib/libLLVM-13.so

### Add symlink to /opt/llvm13/lib32

One that is done (needed for other application) (lib32-llvm14-libs-minimal)

    # Needed for llvm-spirv
    install -d "$pkgdir/usr/lib32"
    ln -s /opt/llvm13/lib32/libLLVM-13.so "$pkgdir"/usr/lib/libLLVM-13.so
