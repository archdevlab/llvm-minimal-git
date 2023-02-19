# TODO

### Add symlink to /opt/llvm11/lib

One that is done (needed for llvm-spirv) (also needed for other application) (llvm11-libs-minimal)

    # Needed for llvm-spirv
    install -d "$pkgdir/usr/lib"
    ln -s /opt/llvm11/lib/libLLVM-11.so "$pkgdir"/usr/lib/libLLVM-11.so

### Add symlink to /opt/llvm11/lib32

One that is done (needed for other application) (lib32-llvm11-libs-minimal)

    # Needed for llvm-spirv
    install -d "$pkgdir/usr/lib32"
    ln -s /opt/llvm11/lib32/libLLVM-11.so "$pkgdir"/usr/lib/libLLVM-11.so
