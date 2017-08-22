# ansible-role-python-dev [![Build Status][img-build-status]][build-status]

Installs and configures a Python development environment for a given user using [`pyenv`][pyenv].

Available on Ansible Galaxy at [`naftulikay.python-dev`][galaxy].

## Requirements

Officially tested operating systems are listed in the Galaxy manifest.

## Role Variables

<dl>
  <dt><code>python_user</code></dt>
  <dd>User to install Python tools for. Required.</dd>
  <dt><code>python_version</code></dt>
  <dd>Version of Python to install. Defaults to 2.7.</dd>
  <dt><code>addtl_python_system_packages</code></dt>
  <dd>A list of additional system packages to install.</dd>
  <dt><code>addtl_python_pip_system_packages</code></dt>
  <dd>A list of additional Python system packages to install via pip.</dd>
  <dt><code>addtl_python_pip_user_packages</code></dt>
  <dd>A list of additional Python user packages to install via pip.</dd>
<dl>

## Dependencies

None.

## Example Playbook

Here are some example playbooks to get started with.

### Defaults

Simply get a Python development environment installed:

```yaml
---
- name: install
  hosts: all
  become: true
  roles:
    - role: python-dev
      python_user: vagrant
```

### Install a Specific Version

Install a specific version of Python:

```yaml
---
  - name: install
    hosts: all
    become: true
    roles:
      - role: python-dev
        python_user: vagrant
        python_version: '3.5'
```

## License

MIT

 [build-status]: https://travis-ci.org/naftulikay/ansible-role-python-dev
 [img-build-status]: https://travis-ci.org/naftulikay/ansible-role-python-dev.svg?branch=master
 [galaxy]: https://galaxy.ansible.com/naftulikay/python-dev/
 [pyenv]: https://github.com/pyenv/pyenv
