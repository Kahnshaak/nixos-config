{ pkgs, ... }:
{
  services.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # lowLatency.enable = true;
  };
  environment.systemPackages = with pkgs; [ 
  	pulseaudioFull
	pipewire
	wireplumber
  ];

  systemd.user.services.pipewire.wantedby = [ "default.target" ];
  systemd.user.services.pipewire-pulse.wantedby = [ "default.target" ];
  systemd.user.services.wireplumber.wantedby = [ "default.target" ];
}
