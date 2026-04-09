{
    description = "NixOS flake";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
        skkeleton = {
            url = "github:vim-skk/skkeleton";
            flake = false;
        };
    };

    outputs = { self, nixpkgs, home-manager, ... }@inputs: {
        nixosConfigurations.sana = nixpkgs.lib.nixosSystem {
            specialArgs = { inherit inputs; };
            modules = [
                ./hosts/sana
                {
                    nixpkgs = {
                        overlays = [
                            (import ./overlays/skkeleton.nix { inherit inputs; })
                            inputs.neovim-nightly-overlay.overlays.default
                        ];
                        config = {
                            allowUnfree = true;
                        };
                    };
                }
                home-manager.nixosModules.default
                {
                    home-manager = {
                        useGlobalPkgs = true;
                        useUserPackages = true;
                        extraSpecialArgs = { inherit inputs; };
                        users.yank = {
                            imports = [
                                ./home
                            ];
                        };
                    };
                }
            ];
        };
    };
}
