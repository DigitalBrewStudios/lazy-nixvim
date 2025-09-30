{lib}:
builtins.concatLists (
	lib.mapAttrsToList (
		name: kind: 
		let
		  file = ../plugins/${name}.nix;
		in 
		{
			imports = [
				
			]
		}
	) (builtins.readDir ../plugins)	
)
