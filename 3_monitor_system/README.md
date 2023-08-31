# System monitor
Monitor SSH, FTP and RDP (XRDP) and send mails to `root` user every dat at 8AM

**!IMPORTANT! Need sudo privileges**

## How to use
1. Download script
2. Copy this directory content to /scripts/monitor_system/
3. For xrdp copy `configs/xrdp.conf` file from repository to `etc/logwatch/conf/services`
4. For xrdp copy `configs/xrdp` file from repository to `/etc/logwatch/scripts/services` and execute `chmod +x` on it
5. Run `bash /scripts/monitor_system/monitor_system.sh`
