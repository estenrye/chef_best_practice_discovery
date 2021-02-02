# Development Environment

## Getting Started

Install pip if not installed

```bash
apt install -y python3-pip
```

Install Ansible

```bash
python3-pip install -r ./requirements.txt
```

Install Chef Workstation

```bash
~/.local/bin/ansible-playbook ./playbook.yml --ask-become-pass
```