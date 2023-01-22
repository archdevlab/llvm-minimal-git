# _     _            _        _          _____
#| |__ | | __ _  ___| | _____| | ___   _|___ /
#| '_ \| |/ _` |/ __| |/ / __| |/ / | | | |_ \
#| |_) | | (_| | (__|   <\__ \   <| |_| |___) |
#|_.__/|_|\__,_|\___|_|\_\___/_|\_\\__, |____/
#                                  |___/

#Maintainer: blacksky3 <https://github.com/blacksky3>
#Credits: Sven-Hendrik Haase <svenstaro@archlinux.org>

pkgname=glslang-git
pkgdesc='OpenGL and OpenGL ES shader front end and validator. (git version)'
pkgver=11.8.0.r20.g538231d8
pkgrel=1
arch=(x86_64)
url='https://github.com/KhronosGroup/glslang'
license=(BSD)
makedepends=(make cmake git python ninja gcc gcc-libs spirv-tools spirv-headers)
depends=(gcc-libs python)
conflicts=(glslang)
provides=(glslang glslang-git)
options=(staticlibs)
source=(git+https://github.com/KhronosGroup/glslang.git)
md5sums=(SKIP)

pkgver(){
  cd ${srcdir}/glslang

  git describe --long --tags --exclude master-tot --exclude sdk-* --exclude SDK-candidate\* --exclude untagged\* | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
}

prepare(){
  cd ${srcdir}/glslang
  #./update_glslang_sources.py
}

build(){
export CXXFLAGS+=" -ffat-lto-objects"

  cd ${srcdir}/glslang

  rm -rf build_64-{static,shared}

  cmake -H. -G Ninja -Bbuild_64-shared \
  -DCMAKE_C_FLAGS=-m64 \
  -DCMAKE_CXX_FLAGS=-m64 \
  -DCMAKE_INSTALL_PREFIX=/usr \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DCMAKE_BUILD_TYPE=Release \
  -DBUILD_EXTERNAL=OFF \
  -DBUILD_SHARED_LIBS=OFF \
  -DENABLE_SPVREMAPPER=ON \
  -DENABLE_GLSLANG_BINARIES=ON \
  -DENABLE_GLSLANG_JS=ON \
  -DENABLE_RTTI=ON \
  -DENABLE_EXCEPTIONS=ON \
  -DENABLE_OPT=ON \
  -DENABLE_PCH=ON \
  -DENABLE_CTEST=ON \
  -DUSE_CCACHE=OFF \
  -DENABLE_GLSLANG_JS=OFF

  cmake -H. -G Ninja -Bbuild_64-static \
  -DCMAKE_C_FLAGS=-m64 \
  -DCMAKE_CXX_FLAGS=-m64 \
  -DCMAKE_INSTALL_PREFIX=/usr \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DCMAKE_BUILD_TYPE=Release \
  -DBUILD_EXTERNAL=OFF \
  -DBUILD_SHARED_LIBS=ON \
  -DENABLE_SPVREMAPPER=ON \
  -DENABLE_GLSLANG_BINARIES=ON \
  -DENABLE_GLSLANG_JS=ON \
  -DENABLE_RTTI=ON \
  -DENABLE_EXCEPTIONS=ON \
  -DENABLE_OPT=ON \
  -DENABLE_PCH=ON \
  -DENABLE_CTEST=ON \
  -DUSE_CCACHE=OFF \
  -DENABLE_GLSLANG_JS=OFF

  ninja -C build_64-shared
  ninja -C build_64-static
}

package_glslang-git(){
  DESTDIR="$pkgdir" ninja -C ${srcdir}/glslang/build_64-shared/ install
  DESTDIR="$pkgdir" ninja -C ${srcdir}/glslang/build_64-static/ install

  # install licence
  install -dm755 "${pkgdir}"/usr/share/licenses/${pkgname}
  install -m644 "${srcdir}"/glslang/LICENSE.txt "${pkgdir}"/usr/share/licenses/${pkgname}/

  cd "${pkgdir}"/usr/lib
  for lib in *.so; do
    ln -sf "${lib}" "${lib}.0"
  done

  # Delete the stuff that's been vendored in. It's not ideal but that's we'll deal with for now
  #mv "${pkgdir}"/usr/bin/spirv-remap .
  #rm -r "${pkgdir}"/usr/{bin/spirv*,include/spirv-tools,lib/cmake/SPIRV-Tools*,lib/libSPIRV-*,lib/pkgconfig}
  #mv spirv-remap "${pkgdir}"/usr/bin/spirv-remap
}
