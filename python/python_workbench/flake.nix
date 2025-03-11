{
  description = "A basic Python dev flake";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.systems.url = "github:nix-systems/default";
  inputs.flake-utils = {
    url = "github:numtide/flake-utils";
    inputs.systems.follows = "systems";
  };

  outputs =
    { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          # list of packages available in dev shell
          nativeBuildInputs = with pkgs; [ 
          python312

          # dev stuff
          pyright
          python312Packages.pytest
          ];

          # grants ability to import modules local to this project
          shellHook = ''
            export PYTHONPATH=$(pwd):$PYTHONPATH
          ''; 
        };
      }
    );
}
