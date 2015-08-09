#!/bin/bash

useradd -m -G mail -p "$2" "$1"
touch /var/mail/"$1"
chown user:mail /var/mail/"$1"
