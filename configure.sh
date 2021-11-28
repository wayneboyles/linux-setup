#!/bin/bash

ansible_deploy=NO
ansible_installed=NO
ansible_dir=''
ansible_playbook=''

POSITIONAL=()
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -a|--ansible)
            ansible_deploy=YES
            shift   # past argument
            ;;
        *)
            POSITIONAL+=("$1")
            shift   # past argument
            ;;
    esac
done

if [[ $ansible_deploy == YES ]]; then
    . ansible/deploy.sh
fi