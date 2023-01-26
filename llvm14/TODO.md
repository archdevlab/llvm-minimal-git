# Add symlink to /opt/llvm14/lib

One that is done (needed for llvm-spirv) (llvm14-libs-minimal)
  
    # Needed for llvm-spirv
    install -d "$pkgdir/usr/lib"
    ln -s "$pkgdir"/opt/llvm14/lib/libLLVM-14.so "$pkgdir"/usr/lib/libLLVM-14.so
