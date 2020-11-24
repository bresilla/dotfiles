{ config, pkgs, ... }:

let
  configs = "/home/bresilla/.config";
  user = "bresilla";
  dots = "/home/bresilla/dots";
  sets = "/home/bresilla/dots";
in {

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the paths it should manage.
  home.username = "${user}";
  home.homeDirectory = "/home/${user}";

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
    pkgs.spotifyd
    pkgs.spotify-tui
  ];

  systemd.user.services = let
    ENVFILE = "${dots}/.profile";
  in {
    ipfs = {
      Unit = {
        Description = "Inter-Planetary File System daemon";
        After = ["network.target"];
      };
      Service = {
        Type = "simple";
        Environment = "IPFS_PATH=/home/bresilla/sync/planetary/ipfs";
        ExecStart = "/usr/bin/ipfs daemon --migrate";
        Restart = "on-failure";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    onedrive = {
      Unit = {
        Description = "OneDrive with RCLONE deamon";
        After = ["network.target"];
      };
      Service = {
        Type = "simple";
        ExecStartPre = "/bin/sleep 5";
        ExecStart = "rclone --vfs-cache-mode writes mount one: /home/bresilla/sync/onedrive";
        ExecStop = "fusermount -u /home/bresilla/sync/onedrive";
        Restart = "on-failure";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    hotspot = {
      Unit = {
        Description = "Hotspot daemon";
        After = ["graphical.target"];
      };
      Service = {
        Type = "simple";
        # EnvironmentFile = "${ENVFILE}";
        ExecStartPre = "/bin/sleep 2";
        ExecStart = "/usr/bin/doas /home/bresilla/dots/.func/network/hotspot wlp2s0 wlp2s0 algorithm dyhere024";
        ExecStop = "/usr/bin/doas rm /tmp/hotspot.all.lock";
        Restart = "on-failure";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    clight = {
      Unit = {
        Description = "Screen light,gama,dpms... manager";
        Documentation = "https://github.com/FedeDP/Clight";
        After = ["graphical.target"];
      };
      Service = {
        Type = "simple";
        ExecStart = "/usr/bin/espanso daemon";
        ExecReload= "/usr/bin/kill -SIGUSR1 $MAINPID";
        Restart = "on-failure";
        RestartSec = "2";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    buckle = {
      Unit = {
        Description = " Nostalgia bucklespring keyboard sound";
        Documentation = "https://github.com/zevv/bucklespring";
        After = ["graphical.target"];
      };
      Service = {
        Type = "simple";
        ExecStart = "/usr/bin/buckle";
        ExecReload= "/usr/bin/kill -SIGUSR1 $MAINPID";
        Restart = "always";
        RestartSec = "5";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    xob = {
      Unit = {
        Description = "Bar overlay daemon";
        Documentation = "https://github.com/florentc/xob";
        After = ["graphical.target"];
      };
      Service = {
        Type = "simple";
        ExecStart = "/bin/sh -c 'tail -f /home/bresilla/.local/share/fifo/xob | xob'";
        ExecReload= "/usr/bin/kill -SIGUSR1 $MAINPID";
        Restart = "always";
        RestartSec = "5";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    greenclip = {
      Unit = {
        Description = "Clipboard manager for ROFI";
        Documentation = "https://github.com/erebe/greenclip";
        After = ["graphical.target"];
      };
      Service = {
        Type = "simple";
        ExecStart = "/env/cpp/bin/greenclip daemon";
        ExecReload= "/usr/bin/kill -SIGUSR1 $MAINPID";
        Restart = "always";
        RestartSec = "5";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    espanso = {
      Unit = {
        Description = "Text Expander Daemon";
        Documentation = "https://github.com/federico-terzi/espanso/";
        After = ["graphical.target"];
      };
      Service = {
        Type = "simple";
        ExecStart = "/env/cargo/bin/espanso daemon";
        ExecReload= "/usr/bin/kill -SIGUSR1 $MAINPID";
        Restart = "always";
        RestartSec = "5";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    dunst = {
      Unit = {
        Description = "Dunst Notification Daemon";
        Documentation = "man:dunst(1)";
        After = ["graphical.target"];
      };
      Service = {
        Type = "simple";
        ExecStart = "/usr/bin/dunst -config %h/.config/dunst/dunstrc";
        ExecReload= "/usr/bin/kill -SIGUSR1 $MAINPID";
        Restart = "always";
        RestartSec = "5";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    picom = {
      Unit = {
        Description = "Compositor for X11";
        After = ["graphical.target"];
      };
      Service = {
        Type = "simple";
        ExecStart = "/usr/bin/picom --config %h/.config/compton/compton";
        Restart = "always";
        RestartSec = "2";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    wallpaper = {
      Unit = {
        Description = "Wallpaper switcher";
        After = ["graphical.target"];
      };
      Service = {
        Environment="COLORTERM=truecolor";
        Type = "simple";
        ExecStartPre = "/bin/sleep 2";
        ExecStart = "/home/bresilla/dots/.func/wm/loopwall /home/bresilla/sets/.wallpaper 300";
        Restart = "always";
        RestartSec = "2";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    spotifyd = let
      configFile = "${configs}/spotifyd/spotifyd.conf";
    in {
      Unit = {
        Description = "A spotify playing daemon";
        Documentation = "https://github.com/Spotifyd/spotifyd";
        Wants = ["sound.target"];
        After = ["network-online.target"];
      };
      Service = {
        ExecStart = "/usr/bin/spotifyd --no-daemon --config-path ${configFile}";
        Restart = "on-failure";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
  };
}
