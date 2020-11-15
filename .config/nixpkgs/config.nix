{
  nix.binaryCaches = [
    https://cache.nixos.org
    https://ros.cachix.org
  ];

  nix.binaryCachePublicKeys = [
    "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
    "ros.cachix.org-1:dSyZxI8geDCJrwgvCOHDoAfOm5sV1wCPjBkKL+38Rvo="
  ];

  packageNUR = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };

  packageROS = pkgs: {
    ros = import (builtins.fetchTarball "https://github.com/lopsided98/nix-ros-overlay/archive/master.tar.gz") {
      inherit pkgs;
    };
  };

  allowUnfree = true;
}
