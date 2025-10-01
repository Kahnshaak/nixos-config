{ config, pkgs, lib, ... }:

{
  home.sessionVariables = {
    XDG_CURRENT_DESKTOP = "Hyperland";
    XDG_SESSION_TYPE = "wayland";
    GDK_BACKEND = "wayland,x11";
    QT_QPA_PLATFORM = "wayland;xcb";
  };

  # Add screen sharing utilities
  home.packages = with pkgs; [
    wf-recorder  # for screen recording
    grim         # screenshots
    slurp        # region picker
    xdg-desktop-portal
    xdg-desktop-portal-wlr
    xdg-desktop-portal-gtk
  ];

  # xdg.portal only if it’s not already declared in system config
  xdg.portal = {
    enable = true;
    config.common.default = "wlr";
    extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
  };
}

