# TODO

### Add symlink to /opt/llvm10/lib

One that is done (needed for llvm-spirv) (also needed for other application) (llvm10-libs-minimal)

    # Needed for llvm-spirv
    install -d "$pkgdir/usr/lib"
    ln -s /opt/llvm10/lib/libLLVM-10.so "$pkgdir"/usr/lib/libLLVM-10.so

### Add symlink to /opt/llvm10/lib32

One that is done (needed for other application) (lib32-llvm10-libs-minimal)

    # Needed for llvm-spirv
    install -d "$pkgdir/usr/lib32"
    ln -s /opt/llvm10/lib32/libLLVM-10.so "$pkgdir"/usr/lib/libLLVM-10.so
