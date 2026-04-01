{ ... }:
{
    programs.zsh = {
        enable = true;

        enableSyntaxHighlighting = true;
        autosuggestion.enable = true;
    };

    home.shellAliases = {
        v = "nvim";
    };
}
