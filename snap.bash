#!/usr/bin/env bash

ssh $1 "raspistill -o /tmp/toto.jpg"
scp $1:/tmp/toto.jpg .
xdg-open toto.jpg

