.PHONY: usage
usage:
	@echo "usage: make <command>"
	@echo "Available commands:"
	@echo "  shell  -- nix shell github:aiken-lang/aiken/v1.1.20#aiken"
	@echo "  build  -- aiken build"
	@echo "  check  -- aiken check"

.PHONY: shell
shell:
	nix shell github:aiken-lang/aiken/v1.1.20#aiken

.PHONY: build
build:
	aiken build

.PHONY: check
check:
	aiken check
