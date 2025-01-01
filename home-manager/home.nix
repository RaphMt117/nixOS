{ inputs
, lib
, config
, pkgs
, ...
}: {

  # You can import other home-manager modules here
  imports = [
    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # TODO: learn about
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

    ];

    config = {
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = _: true;
    };
  };

  home =
    {
      username = "raphmt";
      homeDirectory = "/home/raphmt";

      packages = [
        inputs.ghostty.packages."${pkgs.system}".default
        pkgs.steam
      ];

    };

  programs =
    {
      home-manager.enable = true;
      neovim.enable = true;
      git = {
        enable = true;
        userName = "RaphMt117";
        userEmail = "rafa.mtorres117@outlook.com";
      };
    };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.05";
}
