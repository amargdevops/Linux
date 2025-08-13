#!/bin/bash
# Top 50 Linux Commands for DevOps Engineers

# --- System Info ---
echo "### SYSTEM INFO ###"
uname -a                 # System info
hostname                 # Hostname
uptime                   # Uptime

# --- Disk Usage ---
echo "### DISK USAGE ###"
df -h                    # Disk usage
du -sh *                 # Dir size

# --- Memory & CPU ---
echo "### MEMORY & CPU ###"
free -m                  # Memory
top -b -n1 | head -20    # CPU and process
vmstat 1 5               # Virtual memory

# --- Process Management ---
echo "### PROCESS MANAGEMENT ###"
ps aux                   # All processes
htop                     # Interactive top
kill -9 <PID>            # Kill process

# --- Network ---
echo "### NETWORK ###"
ifconfig                 # Interface config
ip a                     # Newer network info
netstat -tulnp           # Listening ports
ss -tulwn                # Socket stats
ping -c 4 google.com     # Ping test
traceroute google.com    # Trace route
dig google.com           # DNS lookup
nslookup google.com      # DNS tool

# --- Package Management ---
echo "### PACKAGE MGMT ###"
apt update && apt upgrade -y  # Ubuntu
yum update -y                 # RHEL
dpkg -l                       # List packages

# --- Logs ---
echo "### LOGS ###"
tail -n 100 /var/log/syslog
journalctl -xe

# --- Users & Permissions ---
echo "### USERS & PERMISSIONS ###"
id                          # User info
whoami                      # Current user
chmod +x script.sh          # Make executable
chown user:user file.txt    # Change ownership
sudo useradd devuser        # Add user
passwd devuser              # Set password

# --- File Operations ---
echo "### FILE OPS ###"
ls -al                      # List all files
cp file1.txt file2.txt      # Copy
mv file1.txt /tmp/          # Move
rm file1.txt                # Delete
find . -name "*.log"        # Find files
grep "error" /var/log/syslog # Search inside files

# --- Archiving ---
echo "### ARCHIVING ###"
tar -czvf archive.tar.gz folder/   # Compress
unzip file.zip                     # Unzip

# --- SSH & SCP ---
echo "### SSH & SCP ###"
ssh user@host                      # SSH login
scp file.txt user@host:/path       # Secure copy

# --- Cron Jobs ---
echo "### CRON JOBS ###"
crontab -e                         # Edit cron
crontab -l                         # List cron jobs

# --- Systemd & Services ---
echo "### SYSTEMD ###"
systemctl status nginx             # Status
systemctl restart nginx            # Restart
systemctl enable nginx             # Enable at boot

# --- Docker (Bonus) ---
echo "### DOCKER ###"
docker ps                          # List containers
docker images                      # List images
docker logs <container>           # Logs

