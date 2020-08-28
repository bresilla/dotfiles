let
  moz_overlay = import (builtins.fetchTarball https://github.com/mozilla/nixpkgs-mozilla/archive/master.tar.gz);
  nixpkgs = import <nixpkgs> {
    overlays = [ moz_overlay ];
  };
  ruststable = (nixpkgs.latest.rustChannels.stable.rust.override {
    extensions = [ "rust-src" "rust-analysis" ];}
  );
in
  with nixpkgs;
  stdenv.mkDerivation {
    name = "rust";
    buildInputs = [
      stdenv
      rustup
      ruststable
      cargo
      # rustc
    ];
    LD_LIBRARY_PATH="${xorg.libX11}/lib/";
    CPLUS_INCLUDE_PATH="/nix/store/bhngps8y3sf2hdfkbi16bk2ya3k67rkq-gcc-8.3.0/include/c++/8.3.0";
  }
