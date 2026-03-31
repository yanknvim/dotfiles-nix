{ config, pkgs, inputs, ... }:

{
    imports = [
        ./neovim
        ./git.nix
        ./foot.nix
        ./zsh.nix
        ./starship.nix
        ./btop.nix
        ./zellij.nix
    ];


    home.username = "yank";
    home.homeDirectory = "/home/yank";

    home.packages = with pkgs; [
        fastfetch
        sl
        vesktop
        skkDictionaries.l
        skkDictionaries.emoji
        spotify
        opencode
        rustup
    ];

    programs.vim.enable = true;
    home.file.".vimrc".source = ./.vimrc;

    programs.floorp = {
        enable = true;
    };

    programs.firefox = {
        enable = true;
    };

    programs.lazygit.enable = true;

    i18n.inputMethod = {
        enable = true;
        type = "fcitx5";
        fcitx5.addons = [ pkgs.fcitx5-mozc pkgs.fcitx5-skk ];
    };

    home.stateVersion = "25.11";
    programs.home-manager.enable = true;
}
