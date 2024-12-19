# Server Stats Scritp
# Server Stats

This project provides a script `server-stats.sh` to analyze and display basic server performance statistics on a Linux server. The script includes features to display CPU usage, memory usage, disk usage, and details about the top processes consuming system resources.

## Features
- **CPU Usage**: Displays total CPU usage percentage.
- **Memory Usage**: Shows used and free memory, along with the percentage used.
- **Disk Usage**: Displays used and free disk space, including percentage used.
- **Top Processes by CPU**: Lists the top 5 processes consuming the most CPU.
- **Top Processes by Memory**: Lists the top 5 processes consuming the most memory.
- **Additional Stats (Stretch Goal)**:
  - OS Version
  - System Uptime
  - Load Average
  - Number of Logged-in Users
  - Count of Failed Login Attempts

## Prerequisites
- A Linux-based operating system.
- `bash` shell environment.
- `awk`, `mpstat`, `free`, `df`, `ps`, and `uptime` utilities installed (available on most Linux distributions).
- Root privileges for viewing failed login attempts (optional).

## How to Run
1. Clone the repository or download the script directly:
   ```bash
   git clone https://roadmap.sh/projects/server-stats
   cd server-stats
   ```
2. Make the script executable:
   ```bash
   chmod +x server-stats.sh
   ```
3. Run the script:
   ```bash
   ./server-stats.sh
   ```

## Project Page
For more details, visit the project page: [Server Stats Project](https://roadmap.sh/projects/server-stats)

