{ config, pkgs, inputs, ... }:

{
    home.username = "yank";
    home.homeDirectory = "/home/yank";

    home.packages = with pkgs; [
        fastfetch
        sl
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

    programs.neovim = {
        enable = true;
    };

    programs.foot = {
        enable = true;
        settings = {
            main.font = "MonaspiceRn NFM:size=12";
        };
    };

    programs.floorp = {
        enable = true;
    };

    i18n.inputMethod = {
        enable = true;
        type = "fcitx5";
        fcitx5.addons = [ pkgs.fcitx5-mozc ];
    };

    home.file.".vimrc".source = ./.vimrc;


    home.stateVersion = "25.11";
    programs.home-manager.enable = true;
}
