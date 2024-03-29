client {
    enabled = true
    options {
        "consul.auto_join" = "provider=local"
        "consul.datacenter" = "dc1"
        "consul.retry_interval" = "5s"
    }
    servers = ["localhost:4647"]
}

consul {
    address = "localhost:8500"
}

datacenter = "dc1"

server {
    bootstrap_expect = 1
    enabled = true
    retry_join = ["localhost:4646"]
}

ui {
    consul {
        ui_url = "http://localhost:8500/ui"
    }
    enabled = true
    vault {
        ui_url = "http://localhost:8200/ui"
    }
}

vault {
    address = "http://127.0.0.1:8200"
    enabled = true
}
