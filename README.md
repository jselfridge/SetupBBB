
SetupBBB
========

This repository provides step-by-step instructions and a setup script to 
automate the configuration process for the BlackBox.  More detailed explanations 
are availble under the “BBB/Instructions” directory.  The setup is broken into 
several phases.  First, it addresses the “Prerequisites” which is the process 
(generally on the host machine) prior to connecting to the BBB.  Second, it 
outlines “Start Up Processes” which are the steps that must performed after 
each power on/off cycle for the Linux host, and the BBB.  Finally, there is 
the “Install Script” which automatically handles the remaining chores for 
establishing the BlackBox on the BeagleBone Black.    


Prerequisites
-------------
If an SD card is already available, skip to step 5.    
1.  Format SD card    
2.  Download Debian image (“BBB-eMMC-flasher”)    
3.  Unzip image with “Unarchiver”    
4.  Write image with “Pi Filler”    
5.  Flash OS (insert card, hold button, power on)    
6.  Delete ‘known_hosts’ with “sudo rm ~/.ssh/know_hosts”    
7.  Connect to BBB via USB    
    a. ssh debian@192.168.7.2    
    b. Accept authenticity warning with “yes”    
    c. Password: ‘temppwd’    


Start Up Processes
------------------
The network settings are not saved when each Linux OS is powered down.  Upon 
a start up condition, run each of the respective commands as a “superuser”.  
The Linux host names are probably specific to a single board and laptop, so 
those might need to be revised when configuring new hardware.  Run 
“ifconfig -a” to see the current USB/ETH names.    

Host terminal:    

        ifconfig enxc8a030b8963d 192.168.7.1;  iptables --table nat --append POSTROUTING --out-interface enp0s10 -j MASQUERADE;  iptables --append FORWARD --in-interface enxc8a030b8963d -j ACCEPT;  echo 1 > /proc/sys/net/ipv4/ip_forward    
        
BBB terminal:    

        ifconfig usb0 192.168.7.2;  route add default gw 192.168.7.1;  echo "nameserver 8.8.8.8" >> /etc/resolv.conf    
        
Try running “apt-get update” to check the network connection.    


Install Script
--------------



On BBB Power Up
---------------
The board loses the networking settings on each reboot/shutdown.  After login, 
run the following commands    

        sudo su    
        route add default gw 192.168.7.1; echo "nameserver 8.8.8.8" >> /etc/resolv.conf    

and the network will be back in business.

