#!/bin/bash

# Function to display CPU usage
get_cpu_usage() {
    echo "CPU Usage:"
    mpstat | awk '/all/ {printf "Total CPU Usage: %.2f%%\n", 100 - $NF}'
}

# Function to display memory usage
get_memory_usage() {
    echo "Memory Usage:"
    free -m | awk 'NR==2 {printf "Used: %s MB, Free: %s MB (%.2f%% used)\n", $3, $4, $3/$2 * 100}'
}

# Function to display disk usage
get_disk_usage() {
    echo "Disk Usage:"
    df -h / | awk 'NR==2 {printf "Used: %s, Free: %s (%.2f%% used)\n", $3, $4, $5}'
}

# Function to display top 5 processes by CPU usage
get_top_cpu_processes() {
    echo "Top 5 Processes by CPU Usage:"
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
}

# Function to display top 5 processes by memory usage
get_top_memory_processes() {
    echo "Top 5 Processes by Memory Usage:"
    ps -eo pid,comm,%mem --sort=-%mem | head -n 6
}

# Stretch goal: Additional stats
get_additional_stats() {
    echo "Additional Stats:"
    echo "OS Version: $(cat /etc/os-release | grep -w PRETTY_NAME | cut -d '=' -f2 | tr -d '"')"
    echo "Uptime: $(uptime -p)"
    echo "Load Average: $(uptime | awk -F'load average:' '{print $2}')"
    echo "Logged-in Users: $(who | wc -l)"
    echo "Failed Login Attempts: $(sudo grep -c 'FAILED' /var/log/auth.log 2>/dev/null || echo "Not available")"
}

# Main script execution
echo "Server Performance Stats:"
echo "========================="
get_cpu_usage

get_memory_usage

get_disk_usage

get_top_cpu_processes

get_top_memory_processes

get_additional_stats
