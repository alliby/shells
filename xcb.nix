{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell rec {
  buildInputs = with pkgs; [
    cairo
    glib
    pkg-config
    xorg.libxcb
    xorg.libXft
    xorg.libX11
    xorg.libXinerama
  ];
  shellHook =
    ''
      export LD_LIBRARY_PATH=${pkgs.lib.makeLibraryPath buildInputs}:$LD_LIBRARY_PATH
    '';
}
