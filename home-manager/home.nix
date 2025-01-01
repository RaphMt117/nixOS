{ inputs
, lib
, config
, pkgs
, ...
}: {

  imports = [
    ./packages
    ./home-packages.nix
  ];

  fonts.fontconfig.enable = true;

  home =
    {
      username = "raphmt";
      homeDirectory = "/home/raphmt";
      stateVersion = "23.05";
    };

  programs =
    {
      neovim.enable = true;

      zsh =
        {
          enable = true;
          oh-my-zsh.enable = true;

          oh-my-zsh.plugins = [
            "zsh-vi-mode"
            "zsh-autosuggestions"
            "zsh-completions"
            "zsh-256color"
            "zsh-syntax-highlighting"
          ];
        };
    };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";
}
