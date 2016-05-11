# Ansible Role: BounCA key management server

[![Build Status](https://travis-ci.org/repleo/ansible-role-bounca.svg?branch=master)](https://travis-ci.org/repleo/ansible-role-bounca)

Ansible role for installing BounCA key mangement tool.

## Requirements

BounCA is intended to install on a single host without other applications. In very secure environments, even consider to install BounCA bare metal.

## Role Variables

Available variables are listed below, along with default values:

    virtual_host: bounca

## Dependencies

 - repleo.nginx - Installs nginx server

## Example Playbook

    - hosts: servers
      roles:
        - { role: ansible-bounca-role }

## License

GPL v3 - (c) 2016, Repleo, Amstelveen

Author Information
------------------

Repleo, Amstelveen, Holland -- www.repleo.nl  
Jeroen Arnoldus (jeroen@repleo.nl)
