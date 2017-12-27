{ pkgs ? import <nixpkgs> {}, srcOverrides ? {}}:
with pkgs;
stdenv.mkDerivation rec {
	name = "git-wip";
	src = srcOverrides.git-wip or ./..;
	buildInputs = [ python3 ];
	installPhase = ''
		mkdir -p $out/bin
		cp git-wip $out/bin/
	'';
}
