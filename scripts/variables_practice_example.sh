#!/bin/bash
dockerStatus=$(systemctl status docker | awk '/Active/ {print $3}') | tr -d "[()]"
dockerVersion=$(docker --version | awk '{print $3}' | tr -d ',')
echo "Docker Status: $dockerStatus"
echo "Docker Version: $dockerVersion"
