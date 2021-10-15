{
  inputs = {
    # nixpkgs = { url = "nixpkgs/nixos-20.09"; };
    utils = { url = "github:numtide/flake-utils"; };
  };

  outputs = { self, nixpkgs, utils }: 
  utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs.outPath {
        config = { 
          allowUnfree = true;
          allowUnsupportedSystem = true; 
          # cudaSupport = if system == "x86_64-linux" then true else false;
        };
        inherit system;
        overlays = [ ];
      };
      pypkg = pkgs.python38Packages;
    in {
      defaultPackage = pkgs.mkShell {
        name = "cmake";
        buildInputs = let
          opencv = pkgs.opencv.override (old : {
            pythonPackages = pypkg;
            enablePython = true;
            enableGtk3 = true;
            enableGStreamer = true;
            enableFfmpeg = true;
          } );
          realsense = pkgs.librealsense.override (old : {
            pythonPackages = pypkg;
            enablePython = true;
          } );
        in [
          pkgs.cudatoolkit
          pkgs.cudnn
          opencv
          realsense
          pkgs.flann
          pkgs.pcl
          pkgs.stdenv
          pkgs.fmt
          pkgs.doctest
          pkgs.ccls
          pkgs.clang_11
          pkgs.clang-tools
          pkgs.cmake
          pkgs.armadillo
          pkgs.eigen
          pkgs.boost
          pkgs.libtorch-bin
          pkgs.ncurses
          pkgs.libusb
          # pkgs.python3
          # (pkgs.python38.withPackages (py: [
          #   py.python-language-server
          #   py.numpy
          #   py.pandas
          #   py.matplotlib
          #   py.scikitlearn
          #   py.torchvision
          #   py.pytorch
          # ]))
        ];
        RUST_BACKTRACE = "1";
        CXX = "clang++";
        CC = "clang";
        shellHook =''
          export LD_LIBRARY_PATH=$PWD/vendor/vcpkg/installed/x64-linux/lib:$LD_LIBRARY_PATH
          export CPLUS_INCLUDE_PATH=$PWD/vendor/vcpkg/installed/x64-linux/include:$CPLUS_INCLUDE_PATH
          export TEST_PATH=${pkgs.fmt}
        '';
      };
    }
  );
}
