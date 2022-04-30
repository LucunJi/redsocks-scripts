#!/bin/sh

# Create new chain
iptables -t nat -N REDSOCKS

# Anything else should be redirected to port 12345
iptables -t nat -A REDSOCKS -p tcp -j REDIRECT --to-ports 12345

# ============================== RMTP ==============================
iptables -t nat -A OUTPUT -p tcp --dport 1935 -j REDSOCKS

# start redsocks
redsocks -c ./redsocks.conf
