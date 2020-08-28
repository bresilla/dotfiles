{ pkgs ? import <nixpkgs> {} }:

let
  pythonEnv = pkgs.poetry2nix.mkPoetryEnv {
    python = pkgs.python38;
    poetrylock = ./poetry.lock;
  };
in pkgs.mkShell {
  buildInputs = [
    pkgs.cudatoolkit_10_2
    pkgs.cudnn_cudatoolkit_10_2
    pythonEnv
  ];
}
