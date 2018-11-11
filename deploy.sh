#!/bin/bash
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -i hosts ansible.yaml -e "wxAppId=$wxAppId wxappSecret=$wxappSecret listenAddr=$listenAddr mysqlDSN=$mysqlDSN tag=release-$TRAVIS_JOB_ID docker_user=$USER docker_passwd=$PASSWD"