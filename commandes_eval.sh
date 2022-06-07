Born2beroot 

Simple setup

connect with a user
commence par creer un user
sudo adduser <login>
getent passwd <login>
sudo chage -l <login>
su -
sudo visudo
<login> ALL=(ALL) ALL
reboot 
connect with new user

Check UFW is started
dpkg -l | grep UFW

Check SSH is started 
dpkg -l | grep ssh

Check Debian or Centos
hostnamectl

check aniezgod exist
cut -d: -f1 /etc/passwd


check group and aniezgod in user42
getent group user42

Check policy password
sudo adduser <login>
getent passwd <login>
sudo chage -l <login>
(sudo vi) show fichier /etc/login.defs
 " "      show fhier /etc/pam.d/common-passwd

cree group evaluating et mettre user 
sudo addgroup evaluating
sudo adduser <login> evaluating
getent group evaluating 

Check the hostname
hostnamectl 

Change hostname 
sudo hostnamectl set-hostname new_hostname
sudo nano /etc/hosts
127.0.0.1       localhost
127.0.0.1       new_hostname
sudo rebbot 

!!!!!!voir pour remettre le hostname !!!!!!

check partition 
lsblk 

check sudo is here
dpkg -l | grep sudo 

put user in sudo group
sudo adduser <login> sudo 

check sudo.log is interactif
sudo cat /var/log/sudo/sudo.log

check ufw 
dpkg -l | grep UFW
sudo ufw status

create port 8080, check the list and delete
sudo ufw allow 8080
sudo ufw status numbered
sudo ufw delete

check ssh
dpkg -l | grep ssh
sudo service ssh status

only use port 4242
sudo grep Port /etc/ssh/sshd_config

connect to ssh
ssh root@127.0.0.1 -p 42420
ssh <login>@127.0.0.1 -p 42420

afficher script 
sudo cat /usr/local/bin/monitoring.sh

afficher crontab
sudo crontab -u root -l 
sudo crontab -u root -e

mettre a 30s
*/30 * * * * * /usr/local/bin/monitoring.sh
a verifier 


!!!!voir pour run scripts or shotdown !!!!!
