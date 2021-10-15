{
  inputs = {
    # nixpkgs = { url = "nixpkgs/nixos-20.09"; };
    utils = { url = "github:numtide/flake-utils"; };
    ros-flake = { url = "github:lopsided98/nix-ros-overlay"; };
  };

  outputs = { self, nixpkgs, utils, ros-flake }:
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
      py = pkgs.python38Packages;
      ros = ros-flake.packages.${system}.foxy;
    in {
      defaultPackage = pkgs.mkShell {
        name = "cmake";
        buildInputs = let
          opencv = pkgs.opencv.override (old : {
            pythonPackages = py;
            enablePython = true;
            enableGtk3 = true;
            enableGStreamer = true;
            enableFfmpeg = true;
          } );
          realsense = pkgs.librealsense.override (old : {
            pythonPackages = py;
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
          ros.turtlesim
          ros.ros2run
          ros.rmw-fastrtps-dynamic-cpp
        ];
        RMW_IMPLEMENTATION = "rmw_fastrtps_dynamic_cpp";
        CXX = "clang++";
        CC = "clang";
        shellHook =''
          export LD_LIBRARY_PATH=$PWD/vendor/vcpkg/installed/x64-linux/lib:$LD_LIBRARY_PATH
          export CPLUS_INCLUDE_PATH=$PWD/vendor/vcpkg/installed/x64-linux/include:$CPLUS_INCLUDE_PATH
        '';
      };
    }
  );
}
