# TODO

### Add symlink to /opt/llvm12/lib

One that is done (needed for llvm-spirv) (also needed for other application) (llvm12-libs-minimal)

    # Needed for llvm-spirv
    install -d "$pkgdir/usr/lib"
    ln -s /opt/llvm12/lib/libLLVM-12.so "$pkgdir"/usr/lib/libLLVM-12.so

### Add symlink to /opt/llvm13/lib32

One that is done (needed for other application) (lib32-llvm12-libs-minimal)

    # Needed for llvm-spirv
    install -d "$pkgdir/usr/lib32"
    ln -s /opt/llvm12/lib32/libLLVM-12.so "$pkgdir"/usr/lib/libLLVM-12.so
