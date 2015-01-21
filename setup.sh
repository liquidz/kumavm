#!/bin/sh

sudo apt-get update
if ! which ansible-playbook > /dev/null 2>&1; then
    sudo apt-get install -y ansible
fi

cat <<EOT > /tmp/hosts
127.0.0.1
EOT
sudo /bin/mv -f /tmp/hosts /etc/ansible/hosts

sudo -u vagrant -H ansible-playbook /vagrant/playbook.yml
