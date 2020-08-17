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
    pkgs.fzf
    pkgs.fzy
    pkgs.jq
    pkgs.ripgrep
    pkgs.tokei
    pkgs.direnv
    pkgs.fd
    pkgs.exa
    pkgs.dijo
    pkgs.zenith
    pkgs.spotifyd
  ];

  systemd.user.services.spotifyd = let
    secrets = "/home/bresilla/dots/.other/variables";
  in {
    Unit = {
      Description = "A spotify playing daemon";
      Documentation = "https://github.com/Spotifyd/spotifyd";
      Wants = ["sound.target" "network-online.target"];
      After = ["sound.target" "network-online.target"];
    };
    Service = {
      EnvironmentFile = "${secrets}";
      ExecStart = "${pkgs.spotifyd}/bin/spotifyd -u \${spotname} -p \${spotpass} -v softvol -b pulseaudio -d XPS --no-daemon";
      Restart = "always";
    };
    Install = {
      WantedBy = ["default.target"];
    };
  };

}
