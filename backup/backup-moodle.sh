#!/bin/bash
BACKUP_DIR="/var/backups/moodle"
DATE=$(date +%Y%m%d_%H%M%S)
mkdir -p $BACKUP_DIR

# Database Backup
mysqldump -u root moodle > "$BACKUP_DIR/moodle_db_$DATE.sql"
# File Data Backup
tar -czf "$BACKUP_DIR/moodle_data_$DATE.tar.gz" /var/www/html/moodle /var/moodledata

echo "[+] Moodle backup completed successfully at $BACKUP_DIR"
