#!/bin/bash
# Top 50 Essential Linux Commands for DevOps Engineers
# Each command includes a brief explanation and a practical example.

# --- System Info ---
echo "### SYSTEM INFO ###"

uname -a          # Shows kernel name, version, and system architecture
# Example output: Linux ip-172-31-9-25 5.15.0-105-generic ...

hostname          # Displays system hostname
# Example: dev-server-01

uptime            # Shows how long the system has been running and load average
# Example: 14:30:10 up 10 days, 2:13, 3 users, load average: 0.35, 0.30, 0.25

# --- Disk Usage ---
echo "### DISK USAGE ###"

df -h             # Displays disk space usage in human-readable format
# Example: /dev/xvda1  100G   35G   60G  37% /

du -sh *          # Shows size of each item in the current directory
# Example: 1.2G  logs/

# --- Memory & CPU ---
echo "### MEMORY & CPU ###"

free -m           # Shows memory usage in MB
# Example: Mem: 7989  1024  3456

top -b -n1 | head -20  # Displays top processes (non-interactive)
# Useful in scripts to monitor load

vmstat 1 5        # Shows system performance stats every second (5 times)
# Example output: procs, memory, swap, IO, system, CPU

# --- Process Management ---
echo "### PROCESS MANAGEMENT ###"

ps aux            # Shows running processes with details
# Example: root  1234  0.0  0.1  3456  1200 ?  S  10:23  0:00 /usr/sbin/sshd

htop              # Interactive process viewer (like top, but better)
# Note: May need to install via `sudo apt install htop`

kill -9 <PID>     # Forcefully kills a process
# Example: kill -9 1234

# --- Network ---
echo "### NETWORK ###"

ifconfig          # Shows IP address and network interface (older command)
# Example: eth0: inet 192.168.1.10

ip a              # Modern alternative to ifconfig
# Example: ip a show eth0

netstat -tulnp    # Lists listening ports and associated programs
# Example: tcp 0 0 0.0.0.0:22 ... sshd

ss -tulwn         # Faster replacement for netstat
# Example: ss -tulwn | grep LISTEN

ping -c 4 google.com
# Tests connectivity; sends 4 packets to Google

traceroute google.com
# Traces route packets take to reach Google
# May need: sudo apt install traceroute

dig google.com
# DNS lookup tool; shows DNS records
# Example: dig +short google.com

nslookup google.com
# Older DNS lookup tool; similar to dig

# --- Package Management ---
echo "### PACKAGE MANAGEMENT ###"

apt update && apt upgrade -y
# Ubuntu/Debian: Updates packages
# `apt update` gets package info, `upgrade` installs updates

yum update -y
# RHEL/CentOS: Updates packages

dpkg -l
# Lists all installed Debian packages

# --- Logs ---
echo "### LOGS ###"

tail -n 100 /var/log/syslog
# Displays last 100 lines of the system log

journalctl -xe
# Shows systemd logs with details (failures, errors)

# --- Users & Permissions ---
echo "### USERS & PERMISSIONS ###"

id
# Shows current user's UID and groups

whoami
# Displays current logged-in user

chmod +x script.sh
# Makes a script executable

chown user:user file.txt
# Changes file ownership to a specific user and group

sudo useradd devuser
# Adds a new user called devuser

passwd devuser
# Sets password for the user

# --- File Operations ---
echo "### FILE OPERATIONS ###"

ls -al
# Lists files with permissions, ownership, size, and time

cp file1.txt file2.txt
# Copies file1 to file2

mv file1.txt /tmp/
# Moves file to another location

rm file1.txt
# Deletes file1.txt

find . -name "*.log"
# Recursively finds all .log files from current dir

grep "error" /var/log/syslog
# Searches for the word "error" in syslog

# --- Archiving ---
echo "### ARCHIVING ###"

tar -czvf archive.tar.gz folder/
# Compresses a folder to .tar.gz format
# c = create, z = gzip, v = verbose, f = filename

unzip file.zip
# Extracts .zip file contents

# --- SSH & SCP ---
echo "### SSH & SCP ###"

ssh user@host
# Connects to a remote server

scp file.txt user@host:/tmp/
# Securely copies file to remote server

# --- Cron Jobs ---
echo "### CRON JOBS ###"

crontab -e
# Opens current user's crontab for editing

crontab -l
# Lists scheduled cron jobs

# Example cron job (runs every day at midnight):
# 0 0 * * * /path/to/backup.sh

# --- Systemd & Services ---
echo "### SYSTEMD SERVICES ###"

systemctl status nginx
# Checks status of nginx service

systemctl restart nginx
# Restarts nginx

systemctl enable nginx
# Enables nginx to start on boot

# --- Docker (Bonus) ---
echo "### DOCKER ###"

docker ps
# Lists running containers

docker images
# Lists available Docker images

docker logs <container>
# Shows logs from a running container

