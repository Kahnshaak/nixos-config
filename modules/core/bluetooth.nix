{ pkgs, ... } 
{
  hardware = {
    bluetooth = {
    	enable = true;
	powerOnBoot = true;
    	settings.General.Experimental = true; # Show battery
    };
  };
  services = {
    blueman.enable = true; # BT Device Manager
    mpd-mpris.enable = true; # Allows BT controls
  }
}
