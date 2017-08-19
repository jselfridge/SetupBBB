
SetupBBB
========

This repository provides step-by-step instructions and a setup script to 
automate the configuration process for the BlackBox.  More detailed explanations 
are availble under the “BBB/Instructions” directory.  The setup is broken into 
three phases.  First, addresses the “Prerequisites” which is the process 
(generally on the host machine) prior to connecting to the BBB.  Second, 
outlines “Manual Processes” which are the steps that must performed by the 
user.  Finally, there is the “Install Script” which automatically handles the 
remaining chores for establishing the BlackBox on the BeagleBone Black.    


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



Manual Processes
----------------




Install Script
--------------







