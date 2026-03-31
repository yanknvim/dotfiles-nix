{ ... }:
{
    programs.zellij = {
        enable = true;
        enableZshIntegration = true;
        settings = {
            theme = "tokyo-night-storm";
            show_startup_tips = false;
        };
    };
}
