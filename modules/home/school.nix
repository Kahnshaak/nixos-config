{ lib, pkgs, ... }:

{
	environment.systemPackages = with pkgs; {
		rstudio
	}
}
