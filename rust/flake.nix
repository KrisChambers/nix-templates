{
  description = "Basic rust project setup";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.zst";
  };

  outputs = {self, nixpkgs}:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in {
        devShells.x86_64-linux.default = pkgs.mkShell {
            packages = [
                pkgs.cargo
                pkgs.rustc
                pkgs.clippy
                pkgs.rustfmt
                pkgs.rust-analyzer
            ];
        };
    };
}
