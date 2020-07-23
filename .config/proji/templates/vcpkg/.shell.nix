with import <nixpkgs> {}; rec {
  cppEnv = stdenv.mkDerivation {
      name = "cmake";
      buildInputs = let
        opencv_GTK = opencv4.override (old : {
          enableVtk = true;
          enableGtk3 = true;
          enableGStreamer = true;
          enableFfmpeg = true;
          enableIpp = true;
          enableTesseract = true;
        } );
      in [
          stdenv
          autoreconfHook
          autoconf
          pkg-config
          clang-tools
          gcc
          llvm
          clang_10
          gdb
          lldb
          cmake
          ctags
          ccache
          cppcheck
          valgrind
          kcov
          ncurses
          libusb
          vtk
          libglvnd
          opencv_GTK
          librealsense
          armadillo
      ];
      shellHook =''
          export LD_LIBRARY_PATH=$PWD/vendor/vcpkg/installed/x64-linux/lib:$LD_LIBRARY_PATH
          export CPLUS_INCLUDE_PATH=$PWD/vendor/vcpkg/installed/x64-linux/include:$CPLUS_INCLUDE_PATH
          export TEST_PATH=${opencv4}'';
  };
}
