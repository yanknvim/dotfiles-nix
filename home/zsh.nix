{ ... }:
{
    programs.zsh = {
        enable = true;

        enableSyntaxHighlighting = true;
    };

    home.shellAliases = {
        v = "nvim";
    };
}
