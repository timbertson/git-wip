import ./default.nix {
	pkgs = import <nixpkgs> {};
	srcOverrides = {
		git-wip = ./local.tgz;
	};
}
