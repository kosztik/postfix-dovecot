# postfix-dovecot
In testing …

docker run -d -e maildomain=yourdomain.xyz -p 25:25 -p 465:465 -p 143:143 -p 993:993 –name postfix-dovecot -h postfix-dovecot daone/postfix-dovecot

Account creation: docker exec postfix-dovecot adduser user
