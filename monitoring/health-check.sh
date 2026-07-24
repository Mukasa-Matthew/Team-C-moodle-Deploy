#!/bin/bash
echo "=== Moodle Health Check ==="
echo "Date: $(date)"
echo "--- Service Status ---"
systemctl is-active apache2 --quiet && echo "Apache2: OK" || echo "Apache2: DOWN"
systemctl is-active mariadb --quiet && echo "MariaDB: OK" || echo "MariaDB: DOWN"
systemctl is-active redis-server --quiet && echo "Redis: OK" || echo "Redis: DOWN"
echo "--- Disk Usage ---"
df -h / | awk 'NR==2 {print "Free: " $4 " (Used: " $5 ")"}'
