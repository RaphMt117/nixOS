.PHONY: upgrade
upgrade:
	# Update config
	sudo nixos-rebuild switch --flake .#nixos


.PHONY: clean
clean:
	# Clear old packages
	nix-collect-garbage -d
