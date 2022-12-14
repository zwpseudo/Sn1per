[![ShaddixLyric](https://github.com/zwpseudo/Sn1per/blob/master/Sn1per.gif)](https://shaddixlyric.com)

## ABOUT:
Sn1per Community Edition is an automated scanner that can be used during a penetration test to enumerate and scan for vulnerabilities. Sn1per Professional is a premium reporting addon for Professional Penetration Testers, Bug Bounty Researchers and Corporate Security teams to manage large environments and pentest scopes. For more information regarding Sn1per Professional, go to https://shaddixlyric.com.

[![](https://shaddixlyric.com/images/shaddixlyric-sn1per1b.PNG)](https://shaddixlyric.com/)
[![](https://shaddixlyric.com/images/shaddixlyric-sn1per2.PNG)](https://shaddixlyric.com/)
[![](https://shaddixlyric.com/images/shaddixlyric-sn1per3.PNG)](https://www.youtube.com/watch?v=K-8QHDafhcA)
[![](https://shaddixlyric.com/images/shaddixlyric-sn1per4b.PNG)](https://shaddixlyric.com/)
[![](https://shaddixlyric.com/images/shaddixlyric-sn1per5.PNG)](https://shaddixlyric.com/)
[![](https://shaddixlyric.com/images/shaddixlyric-sn1per6.PNG)](https://shaddixlyric.com/)

## KALI/UBUNTU/DEBIAN/PARROT LINUX INSTALL:
```
git clone https://github.com/zwpseudo/Sn1per
cd Sn1per
bash install.sh
```

## DOCKER INSTALL:
[![](https://shaddixlyric.com/images/docker-logo.png)](https://hub.docker.com/r/shaddixlyric/sn1per)

From a new Docker console, run the following commands.
```
Download https://raw.githubusercontent.com/zwpseudo/Sn1per/master/Dockerfile
docker build -t sn1per . 
docker run -it sn1per /bin/bash

or 

docker pull shaddixlyric/sn1per
docker run -it shaddixlyric/sn1per /bin/bash
```

## USAGE:
```
[*] NORMAL MODE
sniper -t <TARGET>

[*] NORMAL MODE + OSINT + RECON
sniper -t <TARGET> -o -re

[*] STEALTH MODE + OSINT + RECON
sniper -t <TARGET> -m stealth -o -re

[*] DISCOVER MODE
sniper -t <CIDR> -m discover -w <WORSPACE_ALIAS>

[*] SCAN ONLY SPECIFIC PORT
sniper -t <TARGET> -m port -p <portnum>

[*] FULLPORTONLY SCAN MODE
sniper -t <TARGET> -fp

[*] WEB MODE - PORT 80 + 443 ONLY!
sniper -t <TARGET> -m web

[*] HTTP WEB PORT MODE
sniper -t <TARGET> -m webporthttp -p <port>

[*] HTTPS WEB PORT MODE
sniper -t <TARGET> -m webporthttps -p <port>

[*] HTTP WEBSCAN MODE
sniper -t <TARGET> -m webscan 

[*] ENABLE BRUTEFORCE
sniper -t <TARGET> -b

[*] AIRSTRIKE MODE
sniper -f targets.txt -m airstrike

[*] NUKE MODE WITH TARGET LIST, BRUTEFORCE ENABLED, FULLPORTSCAN ENABLED, OSINT ENABLED, RECON ENABLED, WORKSPACE & LOOT ENABLED
sniper -f targets.txt -m nuke -w <WORKSPACE_ALIAS>

[*] MASS PORT SCAN MODE
sniper -f targets.txt -m massportscan

[*] MASS WEB SCAN MODE
sniper -f targets.txt -m massweb

[*] MASS WEBSCAN SCAN MODE
sniper -f targets.txt -m masswebscan

[*] MASS VULN SCAN MODE
sniper -f targets.txt -m massvulnscan

[*] PORT SCAN MODE
sniper -t <TARGET> -m port -p <PORT_NUM>

[*] LIST WORKSPACES
sniper --list

[*] DELETE WORKSPACE
sniper -w <WORKSPACE_ALIAS> -d

[*] DELETE HOST FROM WORKSPACE
sniper -w <WORKSPACE_ALIAS> -t <TARGET> -dh

[*] GET SNIPER SCAN STATUS
sniper --status

[*] LOOT REIMPORT FUNCTION
sniper -w <WORKSPACE_ALIAS> --reimport

[*] LOOT REIMPORTALL FUNCTION
sniper -w <WORKSPACE_ALIAS> --reimportall

[*] LOOT REIMPORT FUNCTION
sniper -w <WORKSPACE_ALIAS> --reload

[*] LOOT EXPORT FUNCTION
sniper -w <WORKSPACE_ALIAS> --export

[*] SCHEDULED SCANS
sniper -w <WORKSPACE_ALIAS> -s daily|weekly|monthly

[*] USE A CUSTOM CONFIG
sniper -c /path/to/sniper.conf -t <TARGET> -w <WORKSPACE_ALIAS>

[*] UPDATE SNIPER
sniper -u|--update
```

## MODES
* **NORMAL:** Performs basic scan of targets and open ports using both active and passive checks for optimal performance.
* **STEALTH:** Quickly enumerate single targets using mostly non-intrusive scans to avoid WAF/IPS blocking.
* **FLYOVER:** Fast multi-threaded high level scans of multiple targets (useful for collecting high level data on many hosts quickly).
* **AIRSTRIKE:** Quickly enumerates open ports/services on multiple hosts and performs basic fingerprinting. To use, specify the full location of the file which contains all hosts, IPs that need to be scanned and run ./sn1per /full/path/to/targets.txt airstrike to begin scanning.
* **NUKE:** Launch full audit of multiple hosts specified in text file of choice. Usage example: ./sniper /pentest/loot/targets.txt nuke.
* **DISCOVER:** Parses all hosts on a subnet/CIDR (ie. 192.168.0.0/16) and initiates a sniper scan against each host. Useful for internal network scans.
* **PORT:** Scans a specific port for vulnerabilities. Reporting is not currently available in this mode.
* **FULLPORTONLY:** Performs a full detailed port scan and saves results to XML.
* **MASSPORTSCAN:** Runs a "fullportonly" scan on mutiple targets specified via the "-f" switch.
* **WEB:** Adds full automatic web application scans to the results (port 80/tcp & 443/tcp only). Ideal for web applications but may increase scan time significantly.
* **MASSWEB:** Runs "web" mode scans on multiple targets specified via the "-f" switch.
* **WEBPORTHTTP:** Launches a full HTTP web application scan against a specific host and port.
* **WEBPORTHTTPS:** Launches a full HTTPS web application scan against a specific host and port.
* **WEBSCAN:** Launches a full HTTP & HTTPS web application scan against via Burpsuite and Arachni.
* **MASSWEBSCAN:** Runs "webscan" mode scans of multiple targets specified via the "-f" switch.
* **VULNSCAN:** Launches a OpenVAS vulnerability scan.
* **MASSVULNSCAN:** Launches a "vulnscan" mode scans on multiple targets specified via the "-f" switch.

## HELP TOPICS:
- [x] Plugins & Tools (https://github.com/zwpseudo/Sn1per/wiki/Plugins-&-Tools)
- [x] Scheduled scans (https://github.com/zwpseudo/Sn1per/wiki/Scheduled-Scans)
- [x] Sn1per Configuration Options (https://github.com/zwpseudo/Sn1per/wiki/Sn1per-Configuration-Options)
- [x] Sn1per Configuration Templates (https://github.com/zwpseudo/Sn1per/wiki/Sn1per-Configuration-Templates)
- [x] Sc0pe Templates (https://github.com/zwpseudo/Sn1per/wiki/Sc0pe-Templates)

## INTEGRATION GUIDES:
- [x] Github API integration (https://github.com/zwpseudo/Sn1per/wiki/Github-API-Integration)
- [x] Burpsuite Professional 2.x integration (https://github.com/zwpseudo/Sn1per/wiki/Burpsuite-Professional-2.x-Integration)
- [x] OWASP ZAP integration (https://github.com/zwpseudo/Sn1per/wiki/OWASP-ZAP-Integration)
- [x] Shodan API integration (https://github.com/zwpseudo/Sn1per/wiki/Shodan-Integration)
- [x] Censys API integration (https://github.com/zwpseudo/Sn1per/wiki/Censys-API-Integration)
- [x] Hunter.io API integration (https://github.com/zwpseudo/Sn1per/wiki/Hunter.io-API-Integration)
- [x] Metasploit integration (https://github.com/zwpseudo/Sn1per/wiki/Metasploit-Integration)
- [x] Nessus integration (https://github.com/zwpseudo/Sn1per/wiki/Nessus-Integration)
- [x] OpenVAS API integration (https://github.com/zwpseudo/Sn1per/wiki/OpenVAS-Integration)
- [x] Slack API integration (https://github.com/zwpseudo/Sn1per/wiki/Slack-API-Integration)
- [x] WPScan API integration (https://github.com/zwpseudo/Sn1per/wiki/WPScan-API-Integration)

## LICENSE:
This software is free to distribute and use with the condition that credit is provided to the creator (@zwpseudo), is not renamed and is not for commercial use or resold and rebranded. Permission to distribute any part of the code for sale is strictly prohibited.

## LEGAL DISCLAIMER:
You may not rent or lease, distribute, modify, sell or transfer the software to a third party. Sn1per Community is free for distribution, and modification with the condition that credit is provided to the creator and not used for commercial use. You may not use software for illegal or nefarious purposes. No liability for consequential damages to the maximum extent permitted by all applicable laws. In no event shall XeroSecurity or any person be liable for any consequential, reliance, incidental, special, direct or indirect damages whatsoever (including without limitation, damages for loss of business profits, business interruption, loss of business information, personal injury, or any other loss) arising out of or in connection with the use or inability to use this product, even if XeroSecurity has been advised of the possibility of such damages.

## COPYRIGHT:
The software code and logos are owned by zwpseudo and protected by United States copyright and/or patent laws of international treaty provisions. All rights reserved.

## PURCHASE SN1PER PROFESSIONAL:
To obtain a Sn1per Professional license, go to https://shaddixlyric.com.
