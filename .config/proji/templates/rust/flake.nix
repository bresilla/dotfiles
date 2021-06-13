{
  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
    rusty.url = "github:oxalica/rust-overlay";
    naersk.url = "github:nmattia/naersk";
  };

  outputs = inputs@{ self, rusty, naersk, nixpkgs, utils, ... }:

  utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs.outPath {
        config = { allowUnfree = true; };
        inherit system;
        overlays = [ rusty.overlay ];
      };
      rust = (pkgs.rustChannelOf {
        # date = "2021-05-01";
        channel = "nightly";
      }).minimal;
      naerskLib = naersk.lib."${system}".override {
          rustc = rust;
          cargo = rust;
      };
    in rec {
      packages.fol = naerskLib.buildPackage {
          pname = "fol";
          root = ./.;
        };
      defaultPackage = pkgs.mkShell {
        buildInputs =  with pkgs; [
          # packages.fol
          rust
          lldb
          rls
          lld_10
          rust-analyzer
          vscode-extensions.llvm-org.lldb-vscode
          # vscode-extensions.vadimcn.vscode-lldb
        ];
        RUSTFLAGS = "-C link-arg=-fuse-ld=lld -C target-cpu=native";
        RUST_BACKTRACE = "1";
      };
    }
  );
}
