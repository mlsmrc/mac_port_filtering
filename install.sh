#!/bin/bash


#######################################
# Move configuration files

mkdir -p /Library/LaunchDaemons/
sudo mv pf/pf.conf /etc/pf.conf
sudo mv pf/security.pf.plist /Library/LaunchDaemons/security.pf.plist
sudo mv pf/security.pflog0create.plist /Library/LaunchDaemons/security.pflog0create.plist
sudo mv pf/security.pflog0dump.plist /Library/LaunchDaemons/security.pflog0dump.plist

#######################################
# Set permission to pf.conf

sudo chmod 644 /etc/pf.conf 

#######################################
# start deamons

sudo launchctl start -w /Library/LaunchDaemons/security.pf.plist
sudo launchctl start -w /Library/LaunchDaemons/security.pflog0create.plist
sudo launchctl start -w /Library/LaunchDaemons/security.pflog0dump.plist