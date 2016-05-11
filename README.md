# Ansible Role: BounCA key management server

[![Build Status](https://travis-ci.org/repleo/ansible-role-bounca.svg?branch=master)](https://travis-ci.org/repleo/ansible-role-bounca)

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

    - hosts: servers
      rolse:
	     - { role: ansible-role-bounca,
	         bounca_timezone: /usr/share/zoneinfo/Europe/Amsterdam,
	         bounca_db_user: bounca,
	         bounca_db_password: pleasechangemeimsecret,
	         bounca_db_host: localhost,
	         bounca_db_name: bouncadb,
	
	         bounca_secret_key: pleasechangemeimsecret,
	         bounca_email_host: localhost,
	         bounca_admin_mail: bounca-admin@bounca.org,
	         bounca_from_mail: no-reply@bounca.org
	     }

## License

GPL v3 - (c) 2016, Repleo, Amstelveen

Author Information
------------------

Repleo, Amstelveen, Holland -- www.repleo.nl  
Jeroen Arnoldus (jeroen@repleo.nl)
