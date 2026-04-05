{ ... }:
{
    programs.zsh = {
        enable = true;

        syntaxHighlighting.enable = true;
        autosuggestion.enable = true;
    };

    home.shellAliases = {
        v = "nvim";
    };
}
