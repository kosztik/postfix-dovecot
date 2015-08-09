#!/bin/bash

useradd -m -G mail -p encrypted_password "$1"
touch /var/mail/"$1"
chown user:mail /var/mail/"$1"
