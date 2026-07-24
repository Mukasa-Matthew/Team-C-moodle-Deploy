#!/bin/bash
echo "[*] Running Moodle Environment Validation..."
systemctl is-active --quiet apache2 && echo "[PASS] Apache2 is running" || echo "[FAIL] Apache2 is stopped"
systemctl is-active --quiet mariadb && echo "[PASS] MariaDB is running" || echo "[FAIL] MariaDB is stopped"
php -v | grep -q "PHP 8" && echo "[PASS] PHP 8.x is installed" || echo "[FAIL] PHP version check failed"
[ -f /var/www/html/moodle/config.php ] && echo "[PASS] Moodle config.php exists" || echo "[FAIL] config.php missing"
echo "[*] Validation complete."
