# Development Environment

## Getting Started

Install python and pip if not installed

```bash
sudo apt install -y python3 python3-pip python3-setuptools
```

Install Ansible

```bash
pip3 install -r ./requirements.txt
```

Install Chef Workstation

```bash
~/.local/bin/ansible-playbook ./playbook.yml --ask-become-pass
```