{ config, pkgs, ... }:

{
  services.greetd = {
    enable = true;
#    vt = 7;
    settings = {
      default_session = {
        command = "${pkgs.hyprland}/bin/Hyprland";
	user = "bryce";
      };
    };
  };
  
  systemd.services.greetd.wantedBy = [ "graphical.target" ];
}
