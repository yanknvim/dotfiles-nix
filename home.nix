{ config, pkgs, inputs, ... }:

{

    home.username = "yank";
    home.homeDirectory = "/home/yank";

    home.packages = with pkgs; [
        fastfetch
        sl
        vesktop
        skkDictionaries.l
        skkDictionaries.emoji
    ];

    programs.git = {
        enable = true;

        settings.user = {
            name = "yank.nvim";
            email = "yanknvim@gmail.com";
        };
    };

    programs.zsh = {
        enable = true;

        enableSyntaxHighlighting = true;
    };

    programs.starship = {
        enable = true;
        enableZshIntegration = true;
        presets = [ "jetpack" ];
    };

    programs.neovim = {
        enable = true;
        defaultEditor = true;
        plugins = with pkgs.vimPlugins; [
            lze
            tokyonight-nvim

            lualine-nvim
            gitsigns-nvim

            flash-nvim

            nvim-lspconfig
            blink-cmp

            nvim-treesitter
            
            nvim-autopairs
        ];
        extraPackages = with pkgs; [
            lua-language-server
            nil
            deno
        ];
    };
    xdg.configFile."nvim".source = ./nvim;
    xdg.configFile."nvim".recursive = true;

    programs.vim.enable = true;

    programs.foot = {
        enable = true;
        settings = {
            main.font = "MonaspiceAr NFM:size=12";
            csd.preferred = "none";
            colors-dark = {
                cursor = "11111b f5e0dc";

                alpha = 0.7;
                background = "1e1e2e";
                foreground = "cdd6f4";

                regular0 = "45475a";
                regular1 = "f38ba8";
                regular2 = "a6e3a1";
                regular3 = "f9e2af";
                regular4 = "89b4fa";
                regular5 = "f5c2e7";
                regular6 = "94e2d5";
                regular7 = "bac2de";

                bright0 = "585b70";
                bright1 = "f38ba8";
                bright2 = "a6e3a1";
                bright3 = "f9e2af";
                bright4 = "89b4fa";
                bright5 = "f5c2e7";
                bright6 = "94e2d5";
                bright7 = "a6adc8";

                selection-foreground = "cdd6f4";
                selection-background = "414356";
            };
        };
    };

    programs.btop = {
        enable = true;
        settings = {
            color_theme = "tokyo-night";
            theme_background = "false";
        };
    };

    programs.floorp = {
        enable = true;
    };

    programs.firefox = {
        enable = true;
    };

    i18n.inputMethod = {
        enable = true;
        type = "fcitx5";
        fcitx5.addons = [ pkgs.fcitx5-mozc pkgs.fcitx5-skk ];
    };

    home.file.".vimrc".source = ./.vimrc;

    home.stateVersion = "25.11";
    programs.home-manager.enable = true;
}
