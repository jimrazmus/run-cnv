clean: shutdown
	rm -rf ./temp/*

dirs:
	mkdir -p ./temp/nomad
	mkdir -p ./temp/vault
	mkdir -p ./temp/consul

install:
	brew install \
		hashicorp/tap/consul \
		hashicorp/tap/nomad \
		hashicorp/tap/vault

shutdown:
	killall nomad && sleep 1 || true
	killall vault || true
	killall consul || true

.PHONY: clean dirs install shutdown
