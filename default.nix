{ pkgs ? import <nixpkgs> {}
, haskellPackages
}:
let
in haskellPackages.mkDerivation {
  pname = "mysc-common";
  version = "0.1.0.0";
  src = ./.;

  executableHaskellDepends = with haskellPackages; [
    blaze-html clay
    persistent persistent-template aeson time
  ];
  
  libraryHaskellDepends = with pkgs.haskellPackages; [
    persistent persistent-template aeson time
  ];

  license = pkgs.stdenv.lib.licenses.gpl3;
  doHaddock = false;
}
