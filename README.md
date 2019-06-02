# Macintosh Firewall Port Filtering

[![Build Status](https://travis-ci.org/theoriginaltonystark/mac_port_filtering.svg?branch=master)](https://travis-ci.org/theoriginaltonystark/mac_port_filtering)

This repository contains the firewall port filtering configuration for the Mac OS X.

Specifically it denies the inbound TCP connection from some common protocols:

| Service | Port |
|:---|:---|
| FTP | 20/21 |
| SSH | 22 |
| Telnet | 23 |
| SBM | 137/138/139/445 |
| Apple Filing Protocol | 548 |
| Bonjour | 1900 |
| macOS Server Password | 3659 |
| Apple Remote Desktop | 3283/5988 |
| Back to my Mac | 4488 |
| Screen Sharing (VNC) | 5900 |

## Content

The `pf` folder contains the main file used for this configuration.

- `pf/pf.conf`
	- port filtering configuration file
- `pf/security.pf.plist`
	- deamon for port filtering firewall 
- `pf/security.pflog0create.plist`
	- deamon for `pflog0` network interface creation, used to redirect every dropped connection
- `pf/security.pflog0dump.plist`
	- deamon for dropped connection dumping to `pflog0`
- `install.sh`
	- the install file

## How to install

Close this repo and just `sudo install.sh`