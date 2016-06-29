#!/bin/bash
export DOCKER_IP=`ip -o -4 addr list eth0 | grep global | awk '{print $4}' | cut -d/ -f1`
export WHICH_DOCKER=$(which docker)
