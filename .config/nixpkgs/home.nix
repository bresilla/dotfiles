{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the paths it should manage.
  home.username = "bresilla";
  home.homeDirectory = "/home/bresilla";

  # HM version
  home.stateVersion = "20.09";

  #packages
  home.packages = [
    pkgs.bat
    pkgs.jq
    pkgs.fzf
    pkgs.ripgrep
    pkgs.exa
    pkgs.lorri
  ];

  services.lorri.enable = true;
}
