{ ... }:
{
    programs.git = {
        enable = true;

        settings.user = {
            name = "yank.nvim";
            email = "yanknvim@gmail.com";
        };
    };
}
