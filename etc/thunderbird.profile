# Firejail profile for Mozilla Thunderbird (Icedove in Debian)
include /etc/firejail/disable-mgmt.inc
include /etc/firejail/disable-secret.inc

# Users have thunderbird set to open a browser by clicking a link in an email
# We are not allowed to blacklist browser-specific directories
#include /etc/firejail/disable-common.inc thunderbird icedove
blacklist ${HOME}/.adobe
blacklist ${HOME}/.macromedia
blacklist ${HOME}/.filezilla
blacklist ${HOME}/.config/filezilla
blacklist ${HOME}/.purple
blacklist ${HOME}/.config/psi+
blacklist ${HOME}/.remmina
blacklist ${HOME}/.tconn


include /etc/firejail/disable-history.inc
caps.drop all
seccomp
netfilter
noroot

