{ pkgs, ... }:
{
  hardware = {
#    amdgpu.enable = true;
    graphics = {
      enable = true;
#      amdgpu.enable = true;
      enable32Bit = true;
      extraPackages = with pkgs; [
        libvdpau-va-gl
	vulkan-loader
	vulkan-tools
	libva
      ];
    };
  };
  services.xserver.videoDrivers = [ "amdgpu" ];

  hardware.enableRedistributableFirmware = true;
}
