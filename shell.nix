{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
  buildInputs = with pkgs; [
    pkg-config
    alsa-lib
    cmake
    gdk-pixbuf
    gtk4
    gtk3
    pango
    gdk-pixbuf-xlib
    openssl
    xorg.xcbutil
    xorg.libxcb.dev
    xorg.libxcb
    xorg.xcbutilrenderutil
    librsvg
    libxml2
    cargo
    rustc
    sqlite
    rust-analyzer
  ];
  LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath (with pkgs; [
    xorg.libX11
    sqlite
    cargo
    gtk4
    gtk3
    pango
    gdk-pixbuf-xlib
    xorg.xcbutil
    xorg.libxcb.dev
    xorg.libxcb
    xorg.xcbutilrenderutil
    xorg.libXcursor
    xorg.libXrandr
    xorg.libXi
    vulkan-loader
    librsvg
    libxml2
  ]);
}
