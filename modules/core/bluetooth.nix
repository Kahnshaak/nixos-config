{ pkgs, lib, ... } :
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
  };

  environment.systemPackages = with pkgs; [
    bluez
  ];
}
