# quickReco
# Network Reconnaissance Script

## Description

This script performs basic reconnaissance on a given IP address or domain. It provides information such as:

- WHOIS details
- DNS resolution
- DNS records
- A quick ping to check if the target is reachable
- A quick port scan to check for open ports
- A check to see if the website is up on both HTTP and HTTPS

## Features

- **WHOIS info**: Displays details like organization name, country, and IP range.
- **DNS resolution**: Resolves the IP address of the domain.
- **DNS records**: Queries various DNS records (e.g., A, MX, TXT).
- **Ping**: Pings the target to see if it responds.
- **Port scan**: Scans for open ports using `nmap`.
- **Website check**: Verifies if the target website is accessible via HTTP or HTTPS.

## Usage

1. Clone
2. Open a terminal
3. Make the script executable (if not already):
    ```bash
    chmod +x infos_ip.sh
    ```
4. Run the script with the IP address or domain as an argument:
    ```bash
    ./infos_ip.sh <ip_or_domain>
    ```

For example:
```bash
./infos_ip.sh 1.1.1.1
```bash


![Screenshot 2025-05-08 at 6 22 34 PM](https://github.com/user-attachments/assets/35934995-38dd-4bc3-99e9-58ba9ad2c03f)
