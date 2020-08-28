with import <nixpkgs> {}; rec {
  cppEnv = stdenv.mkDerivation {
      name = "latex_pandoc";
      buildInputs = let
        bib = "$PWD/bibliography.bib";
      in [
          stdenv
          pandoc
          texlive.combined.scheme-medium
          biber
          rubber
      ];
      shellHook =''
          export BIB=$PWD/bibliography.bib
      '';
  };
}
