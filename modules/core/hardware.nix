{ pkgs, ... }:
{
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;

      extraPackages = with pkgs; [
        libvdpau-va-gl
	vulkan-loader
	vulkan-tools
	libva
	
	mesa
	amdvlk
      ];
    };
  };

  hardware.enableRedistributableFirmware = true;
}
