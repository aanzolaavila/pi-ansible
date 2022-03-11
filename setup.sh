#!/bin/bash

export ip=${1}
export key=${2:-~/.ssh/id_rsa.pub}
export user=${3:-pi}

ssh-copy-id -i $key ${user}@${ip}
