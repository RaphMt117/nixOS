{ ...
}: {

  imports = [
    ./packages
    ./home-packages.nix
  ];

  home =
    {
      username = "raphmt";
      homeDirectory = "/home/raphmt";
      stateVersion = "24.11";
    };
}
