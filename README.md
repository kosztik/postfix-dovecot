# postfix-dovecot
In testing …

## Run the container
 docker run -d -e maildomain=yourdomain.xyz -p 25:25 -p 465:465 -p 143:143 -p 993:993 –name postfix-dovecot daone/postfix-dovecot

## Account creation
1. Install mkpasswd:
 apt-get install whois

2. Generate encrypted password:
 mkpasswd your_password 

3. Create the user:
 docker exec postfix-dovecot useradd -m -G mail -p encrypted_password user

= Data out of the container =
 docker run -d -e maildomain=yourdomain.xyz -v /path_for_postfix_mail_delivery:/var/mail -v path_for_imap_storage:/home -p 25:25 -p 465:465 -p 143:143 -p 993:993 --name postfix-dovecot daone/postfix-dovecot
