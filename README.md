### Hexlet tests and linter status:

[![Actions Status](https://github.com/Felarn/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/Felarn/devops-for-programmers-project-76/actions)

# Description

This is the second project from Hexlet DevOps course.

## Reqirements:

You shold have next things, that are not covered by this README file:

- VPS with Ubuntu 22
- Load balancer
- PostgreSQL database
- host system with:
  - ansible
  - make

## Workspace preparation:

### Get project:

```
git clone git@github.com:AllegroGH/devops-for-programmers-project-76.git
cd devops-for-programmers-project-76
```

### Install dependencies

```
sudo apt-get install -y ansible python3-pip

pip3 install docker ansible-vault

make install-ansible-requirements
```

### settup secrets

Copy files from templates with

```
make copy-templates
```

Fill in files with actual parameters:

- vault-key
- inventory.ini
- group_vars/webservers/vault.yml

Encrypt vault file

```
make vault-encrypt
```

## Deploy

```
make deploy
```
