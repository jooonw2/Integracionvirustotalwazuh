#!/usr/bin/expect -f

set timeout -1

#Leer usuario
send_user "Nombre de usuario: "
expect_user -re "(.*)\n"
set user $expect_out(1,string)
#Leer IP
send_user "IP: "
expect_user -re "(.*)\n"
set ip $expect_out(1,string)

#Ejecutar playbook
exec ansible-playbook /etc/ansible/virustotalubu.yml -i "$ip," -u "$user"  --ask-become-pass