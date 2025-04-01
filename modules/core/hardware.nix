{ pkgs, ... }:
{
  hardware = {
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
        intel-media-driver
        (vaapiIntel.override { enableHybridCodec = true; })
        vaapiVdpau
        libvdpau-va-gl
      ];
    };
    bluetooth = {
    	enable = true;
	powerOnBoot = true;
    	settings.General.Experimental = true;
    };
  };
  hardware.enableRedistributableFirmware = true;
}
