{
  inputs = {
    # nixpkgs = { url = "nixpkgs/nixos-20.09"; };
    flake-utils = { url = github:numtide/flake-utils; };
    mach-nix = { 
      url = github:DavHau/mach-nix/conda-beta; 
      ref = "refs/heads/3.3.0";
    };
  };
  outputs = { self, nixpkgs, mach-nix, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = (import nixpkgs { inherit system; }).pkgs;
        mach-nix-utils = import mach-nix {
          inherit pkgs;
          python = "python3";
        };
        requirements = ''
            pip
            click
            pandas-datareader
            pytest
            setuptools
          '';
        condaChannelsExtra.bioconda = [
          (builtins.fetchurl "https://conda.anaconda.org/bioconda/linux-64/repodata.json")
          (builtins.fetchurl "https://conda.anaconda.org/bioconda/noarch/repodata.json")
        ];
        providers = {
          scs = "nixpkgs";
          requests = "conda-forge";
        };
      in rec
      {
        devShell = mach-nix-utils.mkPythonShell {
          inherit requirements;
          inherit providers;
        };
        packages.pack = mach-nix-utils.mkPython {
          inherit requirements;
          inherit providers;
        };
        defaultPackage = packages.pack;
      }
  );
}
