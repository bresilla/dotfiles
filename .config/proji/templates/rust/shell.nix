with import <nixpkgs> {}; rec {
  cplateEnv = stdenv.mkDerivation {
    name = "cmake";
    buildInputs = [ stdenv
                    llvm
                    clang
                    lldb
                    cmake
                    rustc
                    cargo
                  ];
    LD_LIBRARY_PATH="${xorg.libX11}/lib/";
    CPLUS_INCLUDE_PATH="/nix/store/bhngps8y3sf2hdfkbi16bk2ya3k67rkq-gcc-8.3.0/include/c++/8.3.0";
  };
}
