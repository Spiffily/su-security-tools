# su-sercurity-tools

Security Tools for Super Users

## lscron
lscron.sh is a tool for listing the contents of all crontabs on a Linux system. It must be run as root.

Dependencies: figlet (optional), most (pager)

NOTE: To change the pager, change the end of line 27 to less or more. You can also remove the pager altogether. I used most because it colorizes the content and makes it easier to see what's going on.

## updater-advanced
updater-advanced.sh is a tool for updating and upgrading an Ubuntu system to latest LTS. Is mostly automated. Recommended to run as root or in a root shell.

## proc-overview
proc-overview.sh is a script to view the following in a single pager:
- The active network processes (`sudo netstat -antpu`)
- The full system processes tree (`sudo pstree -p`)
- The systemctl status (`sudo systemctl status`)

## tools-setup
tools-setup.sh simply installs figlet ('cause why not?), htop and nethogs. You can also just run `sudo apt-get install -y figlet htop nethogs`.

## pam-config
__IS NOT FUNCTIONAL. DO NOT USE.__

pam-config.sh is a tool that auto-configures/ensures the following PAM policies:
- password [success=1 default=ignore] pam_unix.so obscure sha512 minlen=10 remember=5
- auth required pam_tally2.so deny=4 unlock_time=1800
- account required pam_tally2.so
__NOTE:__ Any pam_tally2 policies *must* precede pam_unix policies!
