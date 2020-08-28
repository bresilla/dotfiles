with import <nixpkgs> {}; rec {
  pyEnv = stdenv.mkDerivation {
    name = "python";
    buildInputs = [ stdenv
                    cudatoolkit_10_2
                    cudnn_cudatoolkit_10_2
                    python3
                    jupyter
                  ];
  };
}
