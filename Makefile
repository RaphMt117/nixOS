.PHONY: update
update:
	home-manager switch --flake .#raphmt@nixos

.PHONY: clean
clean:
	nix-collect-garbage -d
