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
    pkgs.syncthing
    pkgs.ipfs
    pkgs.rclone
  ];

  systemd.user = let
    ENVFILE = "${dots}/.profile";
  in {
    services.ipfs = {
      Unit = {
        Description = "Inter-Planetary File System daemon";
        After = ["network.target"];
      };
      Service = {
        Type = "simple";
        Environment = "IPFS_PATH=/home/bresilla/sync/planetary/ipfs";
        ExecStart = "${pkgs.ipfs}/bin/ipfs daemon --migrate";
        Restart = "on-failure";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    services.syncthing = {
      Unit = {
        Description = "Open Source Continuous File Synchronization";
        Documentation = "man:syncthing(1)";
        After = ["network.target"];
      };
      Service = {
        Type = "simple";
        ExecStart = "${pkgs.syncthing}/bin/syncthing -no-browser -no-restart -logflags=0";
        Restart = "on-failure";
        RestartSec = "5";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    services.onedrive = {
      Unit = {
        Description = "OneDrive with RCLONE deamon";
        After = ["network.target"];
      };
      Service = {
        Type = "simple";
        ExecStartPre = "/bin/sleep 5";
        ExecStart = "${pkgs.rclone}/bin/rclone --vfs-cache-mode writes mount one: /home/bresilla/sync/onedrive";
        ExecStop = "fusermount -u /home/bresilla/sync/onedrive";
        Restart = "on-failure";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    services.hotspot = {
      Unit = {
        Description = "Hotspot daemon";
        After = ["graphical.target"];
      };
      Service = {
        Type = "simple";
        ExecStartPre = "/bin/sleep 2";
        ExecStart = "/usr/bin/doas /home/bresilla/dots/.func/network/hotspot wlp2s0 wlp2s0 algorithm dyhere024";
        ExecStop = "/usr/bin/doas rm /tmp/hotspot.all.lock";
        Restart = "on-failure";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    # services.clight = {
    #   Unit = {
    #     Description = "Screen light,gama,dpms... manager";
    #     Documentation = "https://github.com/FedeDP/Clight";
    #     After = ["graphical.target"];
    #   };
    #   Service = {
    #     Type = "simple";
    #     ExecStart = "clight daemon";
    #     ExecReload= "/usr/bin/kill -SIGUSR1 $MAINPID";
    #     Restart = "on-failure";
    #     RestartSec = "2";
    #   };
    #   Install = {
    #     WantedBy = ["default.target"];
    #   };
    # };
    services.buckle = {
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
    services.xob = {
      Unit = {
        Description = "Bar overlay daemon";
        Documentation = "https://github.com/florentc/xob";
        After = ["graphical.target"];
      };
      Service = {
        Type = "simple";
        ExecStart = "/bin/sh -c 'tail -f /home/bresilla/.local/share/fifo/xob | /env/cpp/bin/xob'";
        ExecReload= "/usr/bin/kill -SIGUSR1 $MAINPID";
        Restart = "always";
        RestartSec = "5";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    services.greenclip = {
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
    services.espanso = {
      Unit = {
        Description = "Text Expander Daemon";
        Documentation = "https://github.com/federico-terzi/espanso/";
        After = ["graphical.target"];
      };
      Service = {
        Type = "simple";
        ExecStart = "/env/bin/espanso daemon";
        ExecReload= "/usr/bin/kill -SIGUSR1 $MAINPID";
        Restart = "always";
        RestartSec = "5";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    # services.picom = {
    #   Unit = {
    #     Description = "Compositor for X11";
    #     After = ["graphical.target"];
    #   };
    #   Service = {
    #     Type = "forking";
    #     ExecStart = "/usr/bin/picom --config %h/.config/picom/config";
    #     # Restart = "always";
    #     # RestartSec = "2";
    #   };
    #   Install = {
    #     WantedBy = ["default.target"];
    #   };
    # };
    services.dunst = {
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
    services.mullvad = {
      Unit = {
        Description = "mullvad vpn";
        After = ["network.target"];
      };
      Service = {
        Type = "oneshot";
        ExecStart = "doas wg-quick up mlvd";
        # ExecReload = "doas wg-quick down mlvd && doas wg-quick up mlvd";
        # ExecStop = "doas wg-quick down mlvd";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
    services.spotifyd = let
      configFile = "${configs}/spotifyd/spotifyd.conf";
    in {
      Unit = {
        Description = "A spotify playing daemon";
        Documentation = "https://github.com/Spotifyd/spotifyd";
        Wants = ["sound.target"];
        After = ["network-online.target"];
      };
      Service = {
        ExecStart = "/env/bin/spotifyd --no-daemon --config-path ${configFile}";
        Restart = "on-failure";
      };
      Install = {
        WantedBy = ["default.target"];
      };
    };
  };
}
