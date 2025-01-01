{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    qbittorrent
  ];

  xdg.desktopEntries.qbittorrent = {
    name = "qbittorrent";
    genericName = "qbittorrent";
    exec = "qbittorrent %U";
    terminal = false; # true will pop up the system default terminal in addition to launching to program
    type = "Application";
    categories = [ "X-torrent" ];
  };

}

