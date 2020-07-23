with import <nixpkgs> {}; rec {
  cplateEnv = stdenv.mkDerivation {
    name = "python";
    buildInputs = [ stdenv
                    pkgconfig
                    # python37Packages.conda
                  ];
  };
}
