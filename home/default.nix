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
        ./direnv.nix
        ./fcitx5.nix
        ./yazi.nix
    ];

    home.username = "yank";
    home.homeDirectory = "/home/yank";

    home.packages = with pkgs; [
        fastfetch
        sl
        vesktop
        element-desktop
        skkDictionaries.l
        skkDictionaries.emoji
        spotify
        opencode
        github-copilot-cli
        radare2
        nixfmt
        gimp
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

    home.stateVersion = "26.05";
    programs.home-manager.enable = true;
}
