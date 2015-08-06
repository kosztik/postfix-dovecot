# postfix-dovecot
In testing …

docker run -d -e maildomain=yourdomain.xyz -p 25:25 -p 465:465 -p 143:143 -p 993:993 –name postfix-dovecot -h postfix-dovecot daone/postfix-dovecot

Account creation: 
1- Install mkpasswd:
 apt-get install whois
1- Generate encrypted password:
 mkpasswd your_password 
2- Create the user:
 docker exec postfix-dovecot useradd -m -G mail -p encrypted_password user
