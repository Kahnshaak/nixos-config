{ pkgs, lib, ... }:
{
  programs = {
    steam = {
      enable = true;

      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = false;

      gamescopeSession.enable = true;

      extraCompatPackages = [ pkgs.proton-ge-bin ];
    };

    gamescope = {
      enable = true;
      capSysNice = true;
      args = [
        "--rt"
        "--expose-wayland"
      ];
    };

    gamemode = {
      enable = true;
    };
  };

  hardware = {
    steam-hardware = {
      enable = true;
    };
  };

  boot.blacklistedKernelModules = [ "xpad" ];
}
