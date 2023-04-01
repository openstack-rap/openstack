#!/bin/bash
sudo useradd -s /bin/bash -d /opt/stack -m stack
sudo chmod +x /opt/stack
echo "stack ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/stack
sudo chown stack:stack /snap/openstackcmd/x1
echo "done chown"
sudo -u stack bash /snap/openstackcmd/x1/stack.sh
echo "done stack.sh"
