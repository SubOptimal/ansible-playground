#!/bin/sh

#
# executes a playbook
#
# usage: run-playbook playbook.yml
#

playbook=$1
playbook_basename=${playbook%*.yml}

if [ ! -f "${playbook}" ]
then
  echo "usage: $0 playbook.yml"
  exit 1
fi

ansible-playbook -i "localhost," -c local $1 2>&1 | tee "${playbook_basename}.log"

