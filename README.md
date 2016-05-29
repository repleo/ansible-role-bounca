# Ansible Role: BounCA key management server

[![Build Status](https://travis-ci.org/repleo/ansible-role-bounca.svg?branch=master)](https://travis-ci.org/repleo/ansible-role-bounca)
[![Ansible Galaxy](http://img.shields.io/badge/galaxy-repleo.bounca-660198.svg?style=flat)](https://galaxy.ansible.com/repleo/bounca)

Ansible role for installing BounCA key mangement tool.

## Requirements

BounCA is intended to install on a single host without other applications. In very secure environments, even consider to install BounCA bare metal.

## Role Variables

Available variables are listed below, along with default values:

    bounca_timezone: /usr/share/zoneinfo/Europe/Amsterdam

    bounca_db_user: bounca
    bounca_db_password: pleasechangemeimsecret
    bounca_db_host: localhost
    bounca_db_name: bouncadb

    bounca_secret_key: pleasechangemeimsecret
    bounca_email_host: localhost
    bounca_admin_mail: bounca-admin@bounca.org
    bounca_from_mail: no-reply@bounca.org

## Dependencies

 - repleo.nginx - Installs nginx server

## Example Playbook

	- hosts: all
	  remote_user: root
	  roles:
	    - { role: repleo.bounca,
	         bounca_timezone: /usr/share/zoneinfo/Europe/Amsterdam,
	         bounca_db_user: bounca,
	         bounca_db_password: <DB PASSWORD>,
	         bounca_db_host: localhost,
	         bounca_db_name: bouncadb,
	
	         bounca_secret_key: <DJANGO SECRET PLEASE GENERATE ONE>,
	         bounca_email_host: localhost,
	         bounca_admin_mail: bounca-admin@bounca.org,
	         bounca_from_mail: no-reply@bounca.org
	    }

You can execute the playbook using the following commands:

	# ansible-galaxy install repleo.bounca
	# ansible-playbook test.yml -i <HOST OR IP>,

Eventually, you may install the role locally:

	# mkdir -p ./roles
	# ansible-galaxy install repleo.bounca -p ./roles
	# ansible-playbook test.yml -i <HOST OR IP>,

## License

GPL v3 - (c) 2016, Repleo, Amstelveen

Author Information
------------------

Repleo, Amstelveen, Holland -- www.repleo.nl  
Jeroen Arnoldus (jeroen@repleo.nl)
