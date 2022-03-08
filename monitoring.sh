#!/bin/bash 
wall "  #Architecture: $(uname -a) 
        #CPU physical: $(grep "physical id" /proc/cpuinfo | sort | uniq | wc -l) 
        #vCPU: $(grep "^processor" /proc/cpuinfo | wc -l) 
        #Memory Usage: $(free -m | grep Mem | awk '{printf"%d/%dMB (%.2f%%)\n", $3, $2, $3/$2 * 100}') 
        #Disk Usage: $(df -Bm | grep '^/dev/' | grep -v '/boot$' | awk '{ut += $3} END {print ut}')/$(df -Bg | grep '^/dev/' | grep -v '/boot$' | awk '{ft += $2} END {print ft}')Gb ($(df -Bm | grep '^/dev/' | grep -v '/boot$' | awk '{ut += $3 ; ft+= $2} END {printf("%d"), ut/ft*100}') % ) 
        #CPU load: $(top -bn1 | grep '^%Cpu' | cut -c 9- | xargs | awk '{printf("%.1f%%"), $1 + $3}') 
        #Last boot: $(who -b | awk '$1 == "system" {print $3 " " $4}') 
        #LVM use: $(if [ $(lsblk | grep "lvm" | wc -l) -eq 0 ]; then echo no; else echo yes; fi) 
        #Connexions TCP: $(cat /proc/net/sockstat{,6} | awk '$1 == "TCP:" {print $3}') ESTABLISHED 
        #User log: $(users |wc -w) 
        #Network: IP $(hostname -I) ($(ip link show | awk '$1 == "link/ether" {print $2}')) 
        #Sudo: $(journalctl _COMM=sudo | grep COMMAND | wc -l) cmd"