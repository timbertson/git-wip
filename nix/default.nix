{ pkgs ? import <nixpkgs> {} }:
with pkgs;
stdenv.mkDerivation rec {
	name = "git-wip";
	src = ./..;
	buildInputs = [ python3 ];
	installPhase = ''
		mkdir -p $out/bin
		cp git-wip $out/bin/
	'';
}
