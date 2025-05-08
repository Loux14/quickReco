#!/bin/bash

# check if argument is provided
if [ -z "$1" ]; then
    echo "usage: $0 <ip_or_domain>"
    exit 1
fi

target=$1

echo "target: $target"
echo "========================="

# whois
echo "whois info:"
whois "$target" | grep -E 'OrgName|OrgId|CIDR|NetName|Country|Descr|inetnum' || echo "whois not available"
echo "-------------------------"

# dns resolution
echo "dns resolution (host) :"
host "$target"
echo "-------------------------"

# dns records
echo "dns records (dig) :"
dig "$target" ANY +short
echo "-------------------------"

# ping
echo "quick ping :"
ping -c 2 "$target"
echo "-------------------------"

# port scan
echo "open ports scan (nmap) :"
nmap -T4 -F "$target"
echo "-------------------------"


# check site
echo "web site check :"
curl -Is "http://$target" | head -n 1
curl -Is "https://$target" | head -n 1
echo "-------------------------"
