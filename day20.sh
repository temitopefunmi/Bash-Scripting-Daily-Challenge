#!/bin/bash

LOG_FILE="system_report_$(date +%Y%m%d).log"
{
echo "System information report"
echo "--------------------------"
echo "Hostname: $(hostname)"
echo "OS and Kernel: $(uname -a)"
echo "Uptime: $(uptime -p)"
echo "Logged in users:" 
who

echo
echo "Memory Usage:"
echo "--------------"
#Virtual Memory Statistics
#Linux alternative: free -h
vm_stat

echo
echo "CPU and Memory"
echo "---------------"
echo "CPU Info:"
#Prints all system-level kernel parameters.
#grep machdep.cpu: Filters only CPU-related lines.
#linux alternative: lscpu
sysctl -a  | grep machdep.cpu

echo
echo "Disk Usage"
echo "------------"
df -h 

echo
echo "Network"
echo "---------"
#Shows network interface configurations (similar to ip a in Linux)
#Filters lines that show IP addresses (excluding IPv6, which usually appears as inet6)
ifconfig | grep "inet "  

echo
echo "Top 5 Running Processes by memory"
echo "----------------------------------"
#all running processes with memory & CPU usage.
#sort numerically (-n), in reverse (-r), by the 4th column (%MEM)
#top 5 results plus the header
ps aux | sort -nrk 4 | head -n 6
} > "$LOG_FILE" 2>&1