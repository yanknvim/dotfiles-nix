{ pkgs, ... }:
{
    programs.neovim = {
        enable = true;
        defaultEditor = true;
        plugins = with pkgs.vimPlugins; [
            lze
            tokyonight-nvim

            denops-vim
            plenary-nvim

            nvim-web-devicons

            telescope-nvim
            telescope-fzf-native-nvim

            rainbow-delimiters-nvim

            nvim-tree-lua

            which-key-nvim

            lualine-nvim
            gitsigns-nvim

            toggleterm-nvim

            flash-nvim

            nvim-lspconfig
            lazydev-nvim
            blink-cmp

            skkeleton

            nvim-treesitter.withAllGrammars
            
            nvim-autopairs
        ];
        extraPackages = with pkgs; [
            clang-tools
            lua-language-server
            rust-analyzer
            nil

            fzf
            ripgrep

            deno

            skkDictionaries.l

            lazygit
        ];
    };
    xdg.configFile."nvim".source = ./config;
    xdg.configFile."nvim".recursive = true;
    
    xdg.configFile."nvim/lua/plugins/skkeleton.lua".source = pkgs.replaceVars ./skkeleton.lua {
        skk-dict-path = "${pkgs.skkDictionaries.l}/share/skk/SKK-JISYO.L";
    };
}
