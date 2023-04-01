#!/bin/bash
sudo useradd -s /bin/bash -d /opt/stack -m stack
sudo chmod +x /opt/stack
echo "stack ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/stack
sudo chown stack:stack /snap/opestack/x1
sudo -u stack bash /snap/openstack/x1/stack.sh