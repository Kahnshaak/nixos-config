{ pkgs, ... }:
{
  hardware = {
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
        vaapiVdpau
        libvdpau-va-gl
	mesa
	vulkan-loader
	vulkan-tools
	libva
      ];
    };

    cpu.amd.updateMicrocode = true;
  };
  hardware.enableRedistributableFirmware = true;
}
