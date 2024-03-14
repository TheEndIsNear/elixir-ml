{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }: 
    flake-utils.lib.eachDefaultSystem (system:
      let
        inherit (pkgs.lib) optional optionals;
        pkgs = import nixpkgs { inherit system; };

        elixir = pkgs.beam.packages.erlang.elixir;

     in
     with pkgs;
     {
       devShell = pkgs.mkShell {
        buildInputs = [
          elixir_1_16
          elixir_ls
          erlang_26
          glibcLocales
          inotify-tools
          livebook
        ];
      };
  });
}
