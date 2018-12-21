# ansible-role-python-dev [![Build Status][travis.svg]][travis]

Installs and configures a Python development environment for a given user using [`pyenv`][pyenv].

Available on Ansible Galaxy at [`naftulikay.python-dev`][galaxy].

## Usage

The role can be dropped in to quickly install and configure a Python development environment:


```yaml
---
- name: build
  hosts: all
  roles:
    - role: python-dev
      # install version 2.7.13
      python_version: 2.7.13
      # the user to install python for
      python_user: naftuli
      # additional python packages from the system package manager to install
      addtl_python_system_packages: []
      # additional python pip packages to install globally on the system
      addtl_python_pip_system_packages: []
      # additional python pip packages to install via --user for the python user
      addtl_python_pip_user_packages: []
```

## License

Licensed at your discretion under either:

 - [MIT License](./LICENSE-MIT)
 - [Apache License, Version 2.0](./LICENSE-APACHE)

 [travis]: https://travis-ci.org/naftulikay/ansible-role-python-dev
 [travis.svg]: https://travis-ci.org/naftulikay/ansible-role-python-dev.svg?branch=master
 [galaxy]: https://galaxy.ansible.com/naftulikay/python-dev/
 [pyenv]: https://github.com/pyenv/pyenv
