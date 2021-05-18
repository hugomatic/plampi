#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cp $DIR/plampi.service /lib/systemd/system

# chmod 644 /lib/systemd/system/plampi.service
systemctl daemon-reload
systemctl enable plampi.service
systemctl start plampi.service

