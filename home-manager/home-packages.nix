{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    imv # image viwer
    mpv # media player cli
    obs-studio
    vesktop # discord

    # CLI utils
    bottom # system monitor
    brightnessctl # read and control brightness
    # cliphist
    fzf
    git-graph
    # grimblast
    htop
    # microfetch
    # playerctl
    ripgrep
    showmethekey
    silicon
    udisks
    # ueberzugpp
    unzip
    # w3m
    wget
    wl-clipboard
    wtype
    yt-dlp
    zip

    # Coding stuff
    ghostty
    git
    vscode
    tmux
    flatpak
    gnumake
    nodejs
    python311
    go

    # WM stuff
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    # Other
    # nix-prefetch-scripts
    gcc
    steam
    gnumake
    neofetch
    kdePackages.kate
    firefox
    cargo
    zoxide
    ripgrep
    qbittorrent
    zsh
  ];
}
