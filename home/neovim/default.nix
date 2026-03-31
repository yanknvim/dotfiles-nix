{ pkgs, ... }:
{
    programs.neovim = {
        enable = true;
        defaultEditor = true;
        plugins = with pkgs.vimPlugins; [
            lze
            tokyonight-nvim

            denops-vim

            nvim-web-devicons

            rainbow-delimiters-nvim

            nvim-tree-lua

            which-key-nvim

            lualine-nvim
            gitsigns-nvim

            flash-nvim

            nvim-lspconfig
            blink-cmp

            skkeleton

            nvim-treesitter
            
            nvim-autopairs
        ];
        extraPackages = with pkgs; [
            lua-language-server
            rust-analyzer
            nil
            deno
        ];
    };
    xdg.configFile."nvim".source = ./config;
    xdg.configFile."nvim".recursive = true;
    
    xdg.configFile."nvim/lua/plugins/skkeleton.lua".source = pkgs.replaceVars ./skkeleton.lua {
        skk-dict-path = "${pkgs.skkDictionaries.l}/share/skk/SKK-JISYO.L";
    };
}
