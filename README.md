# run-cnv

Run a Hashicorp stack on your Mac for development (**NOT** production).

## Install

Install the official Hashicorp binaries.

```bash
brew install \
    hashicorp/tap/consul \
	hashicorp/tap/nomad \
	hashicorp/tap/vault
```

or `make install`

## Usage

### Start Up

Use your terminal application of choice for these tasks.

1. Setup the temp working directories for the servers by running `make dirs`
2. `consul agent -config-file=./consul/config.hcl -dev`
3. `vault server -config=./vault/config.hcl -dev`
4. `nomad agent -config ./nomad/config.hcl -data-dir=$(PWD)/temp/nomad/data -dev`

### Environment Variables

The '.env' file in this project exports variables to simplify using the CLI tooling.

### Shutdown

1. `killall nomad`
2. `killall vault`
3. `killall consul`

or simply `make shutdown`

### Clean Up

Remove the contents of the ./temp directory by running `make clean`.

## UI URLS

The browser user interface for the servers are at these URLs respectively:

- Consul: http://localhost:8500/
- Nomad: http://localhost:4646/
- Vault: http://localhost:8200/
