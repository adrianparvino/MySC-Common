{ pkgs ? import <nixpkgs> {config = (import ./../config.nix) pkgs compiler;}
, haskellPackages
, compiler ? "ghc802"
}:
let
in haskellPackages.mkDerivation {
  pname = "MySC-Common";
  version = "0.1.0.0";
  src = ./.;

  executableHaskellDepends = with haskellPackages; [
    blaze-html clay
  ];
  
  libraryHaskellDepends = with pkgs.haskellPackages; [
    persistent aeson time persistent-postgresql
  ];

  license = pkgs.stdenv.lib.licenses.gpl3;

  isExecutable = true;
}
