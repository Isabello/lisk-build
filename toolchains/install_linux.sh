#!/bin/bash

cd "$(cd -P -- "$(dirname -- "$0")" && pwd -P)"
. "$(pwd)/../shared.sh"

if [ ! $(uname -s) == "Linux" ]; then
  echo "Invalid operating system. Aborting."
  exit 1
fi

CMDS=("apt-get" "curl" "sudo")
check_cmds CMDS[@]

exec_cmd "curl -sL https://deb.nodesource.com/setup_0.12 | sudo -E bash -"
exec_cmd "sudo apt-get install -y autoconf automake build-essential curl git libreadline6-dev libtool zlib1g-dev libssl-dev libpq-dev nodejs python wget"
