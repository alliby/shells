{ pkgs ? import <nixpkgs> {} }:

with pkgs;

pkgs.mkShell rec {
  buildInputs = with pkgs; [
    glfw
    libGL
    libGLU
    xorg.libX11
    xorg.libXcursor
    xorg.libXi
    xorg.libXinerama
    xorg.libXrandr
    libxkbcommon
  ];
  LD_LIBRARY_PATH = lib.makeLibraryPath buildInputs;
}

