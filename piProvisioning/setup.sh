#!/usr/bin/env sh

ansible-playbook playbook.yml -i inventory.cfg -v --ask-sudo-pass
