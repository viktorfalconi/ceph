#!/bin/sh

d=$(date '+%Y.%m.%d_%H:%M')
ANSIBLE_LOG_PATH="./deploy-$d.log"
export ANSIBLE_LOG_PATH

ansible-playbook -u s053642 -k -i inventory/hosts site.yml -b --diff