{ config, pkgs, ... }:

{
  home.username = "maksym";
  home.homeDirectory = "/home/maksym";
  home.stateVersion = "25.11";
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Maksym";
        email = "maxym0198@gmail.com";
      };
    };
  };
  home.file.".ssh/config".text = ''
    Host *
      AddKeysToAgent yes
      IdentityFile ~/.ssh/id_rsa
  '';
}
