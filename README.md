# Ubuntu Config

An Ansible playbook to configure my development environment.

# Prerequisites

In order to run the playbook, Ansible must be installed. The easiest way to do this is install Ansible from its PPA.

```shell
sudo add-apt-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible
```

# Running It

The only piece of information the playbook needs is a root password to perform actions such as installing packages. You can ask Ansible to prompt for your password with the following command.

```shell
ansible-playbook --ask-become-pass playbook.yml
```

# License

This project is licensed under the MIT License. See the [`LICENSE`](LICENSE) file for more information.


# Authors

Chathan Driehuys (chathan@driehuys.com)
