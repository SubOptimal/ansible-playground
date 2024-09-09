#!/bin/bash

ansible-playbook main.yml |& tee $(basename $0 .sh)_$(date "+%y%m%d_%H%M%S").log
