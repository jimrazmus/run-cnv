cluster_addr = "http://127.0.0.1:8200"
pid_file = "./temp/vault.pid"
storage "raft" {
    path    = "./temp/vault/"
}
ui = true
