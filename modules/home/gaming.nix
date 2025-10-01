{
  pkgs,
  config,
  inputs,
  ...
}:
{
  home.packages = with pkgs; [
    ## Utils
    gamemode
    gamescope
#    winetricks
#    inputs.nix-gaming.packages.${pkgs.system}.wine-ge

    ## Minecraft
    prismlauncher

    ## Emulation
    #sameboy
    #snes9x
    # cemu
    # dolphin-emu

    ## controller packages
    #xboxdrv
    sc-controller
  ];


  # Some controllers require udev rules to function correctly.
  # You may need to add a rule similar to this, depending on your device.
  # services.udev.extraRules = ''
  #   SUBSYSTEM=="usb", ATTRS{idVendor}=="your_vendor_id", ATTRS{idProduct}=="your_product_id", MODE="0660", GROUP="input"
  # '';
}
