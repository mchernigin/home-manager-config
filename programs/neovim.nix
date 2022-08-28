{ pkgs }:

let
  vim-old-hope = pkgs.vimUtils.buildVimPluginFrom2Nix rec {
    name = "vim-old-hope";
    src = builtins.fetchGit {
      "ref" = "master";
      "url" = "https://github.com/mchernigin/vim-old-hope";
      "rev" = "d2147f105c948f2fa651d3af2a45be4a2a63dd3e";
    };
  };

  lua = arg: if builtins.isPath arg then ''
    luafile ${arg}
  '' else ''
    lua << EOF
    ${arg}
    EOF
  '';
in
{
  enable = true;
  vimAlias = true;
  
  plugins = with pkgs.vimPlugins; [
    vim-old-hope
    vim-commentary
    vim-nix

    { plugin = nerdtree; config = "let NERDTreeShowHidden=1"; }
    { plugin = vim-sneak; config = "let g:sneak#label = 1"; }
    { plugin = lualine-nvim; config = lua ./configs/lualine-nvim.lua; }
  ];

  extraConfig = builtins.readFile ./configs/init.vim;
}

