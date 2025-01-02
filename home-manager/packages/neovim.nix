{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    extraPackages = with pkgs; [
      lua-language-server
      nixd
      vimPlugins.nvim-treesitter-parsers.hyprlang
    ];
  };
}
