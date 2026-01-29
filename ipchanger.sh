#!/bin/bash

# Configuration
INTERVAL=60 # Time in seconds between IP changes

echo "Starting Tor IP Auto-Changer..."
tor > /dev/null &
sleep 10 # Wait for Tor to initialize

while true; do
    # Get current IP via Tor proxy (localhost:9050)
    CURRENT_IP=$(curl --socks5-hostname 127.0.0.1:9050 -s https://api.ipify.org)
    echo "[$(date +%T)] Current IP: $CURRENT_IP"

    # Request New Identity
    (echo "AUTHENTICATE \"\""; echo "SIGNAL NEWNYM"; echo "QUIT") | nc 127.0.0.1 9051 > /dev/null
    
    echo "Requesting new IP... Sleeping for $INTERVAL seconds."
    sleep $INTERVAL
done
