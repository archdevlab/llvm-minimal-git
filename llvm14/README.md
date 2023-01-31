# TODO

### Add symlink to /opt/llvm14/lib

One that is done (needed for llvm-spirv) (also needed for other application) (llvm14-libs-minimal)
  
    # Needed for llvm-spirv
    install -d "$pkgdir/usr/lib"
    ln -s /opt/llvm14/lib/libLLVM-14.so "$pkgdir"/usr/lib/libLLVM-14.so
    
### Add symlink to /opt/llvm14/lib32

One that is done (needed for other application) (lib32-llvm14-libs-minimal)
  
    # Needed for llvm-spirv
    install -d "$pkgdir/usr/lib32"
    ln -s /opt/llvm14/lib32/libLLVM-14.so "$pkgdir"/usr/lib/libLLVM-14.so
