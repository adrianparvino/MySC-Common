nixpkgs: compiler: {
  packageOverrides = pkgs: rec {
    webkitgtk = pkgs.webkitgtk216x;  
    haskellPackages = pkgs.haskell.packages.${compiler}.override {
    };
  };
}
