# Dockerfile за Open vSwitch
FROM ubuntu:22.04

# Инсталација на OVS и python3
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    openvswitch-switch python3 iproute2 iputils-ping && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Start ovs-vswitchd
ENTRYPOINT ["/usr/share/openvswitch/scripts/ovs-ctl", "start"]

# Default command за Containerlab
CMD ["sleep", "infinity"]
