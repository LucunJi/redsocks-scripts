#!/bin/sh

# Create new chain
iptables -t nat -N REDSOCKS

# Anything else should be redirected to port 12345
iptables -t nat -A REDSOCKS -p tcp -j REDIRECT --to-ports 12345

# ============================== HTTPS ==============================
iptables -t nat -A FORWARD     -p tcp --dport 443 -j REDSOCKS
iptables -t nat -A OUTPUT      -p tcp --dport 443 -j REDSOCKS
iptables -t nat -A PREROUTING  -p tcp --dport 443 -j REDSOCKS

# ============================== HTTP ==============================
iptables -t nat -A FORWARD     -p tcp --dport 80 -j REDSOCKS
iptables -t nat -A OUTPUT      -p tcp --dport 80 -j REDSOCKS
iptables -t nat -A PREROUTING  -p tcp --dport 80 -j REDSOCKS

# start redsocks
mitmproxy -p 12345
