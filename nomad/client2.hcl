# Increase log verbosity
log_level = "DEBUG"

bind_addr = "10.0.0.173"

# Setup data dir
data_dir = "/tmp/client2"

# Enable the client
client {
    enabled = true

    # For demo assume we are talking to server1. For production,
    # this should be like "nomad.service.consul:4647" and a system
    # like Consul used for service discovery.
    servers = ["54.186.21.131:4647"]
}
