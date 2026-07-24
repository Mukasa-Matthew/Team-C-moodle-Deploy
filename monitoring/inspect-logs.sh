#!/bin/bash
echo "=== Moodle Central Log & System Audit ==="
echo "Timestamp: $(date)"
echo ""

echo "--- 1. Service Status Check ---"
systemctl is-active apache2 mariadb redis-server fail2ban

echo ""
echo "--- 2. Disk Space & Inodes ---"
df -h /
df -i /

echo ""
echo "--- 3. Recent Apache Error Logs ---"
sudo tail -n 5 /var/log/apache2/error.log 2>/dev/null || echo "Apache error log not found or permission denied."

echo ""
echo "--- 4. Recent Authentication / Security Failures ---"
sudo grep -i "failed" /var/log/auth.log 2>/dev/null | tail -n 3 || echo "Auth log entries unavailable."

echo ""
echo "=== Audit Complete ==="
