#!/bin/bash

# Adaptions
if [ -d "/adaptions" ]; then
    # make scripts executable incase they aren't
    chmod -Rf 750 /adaptions/*

    # run scripts in number order
    for i in `ls /adaptions/`; do /adaptions/$i || exit 1; done
fi

if [ ! -d /data ];
then
    echo "Missing /data directory with code to execute"
    echo "Startup command is: command=java messagehandler.jar"
    exit 1
fi

# Start supervisord and services
/usr/bin/supervisord -n -c /etc/supervisord.conf
