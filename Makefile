.PHONY: update
update:
	# home-manager switch --flake .#raphmt@nixos
	sudo nixos-rebuild switch --flake .


.PHONY: clean
clean:
	nix-collect-garbage -d
