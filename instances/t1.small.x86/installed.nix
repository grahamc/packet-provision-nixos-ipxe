{
  boot.loader.grub.devices = [ "/dev/sda" ];
  boot.loader.grub.extraConfig = ''
    serial --unit=0 --speed=115200 --word=8 --parity=no --stop=1
    terminal_output serial console
    terminal_input serial console
  '';

  fileSystems = {
    "/" = {
      device = "/dev/disk/by-label/nixos";
      fsType = "ext4";
    };
  };

  swapDevices = [
    {
      label = "swap";
    }
  ];
}
